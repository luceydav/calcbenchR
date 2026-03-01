#' @title Get Disclosures / Footnotes
#'
#' @description Search SEC filing disclosures, footnotes, and text blocks
#'   via the Calcbench footnote search endpoint.
#'
#' @param companies list of company identifiers (tickers or CIK codes),
#'   e.g. \code{list("AAPL")}
#' @param full_text_search_term character; optional Lucene-syntax full-text
#'   query, e.g. \code{"revenue recognition"}
#' @param year integer; fiscal year to filter, e.g. \code{2023}
#' @param period character; fiscal period, e.g. \code{"annual"} or \code{"Q1"}
#' @param all_history logical; if \code{TRUE} search all available history
#'   (default \code{FALSE})
#' @param disclosure_names character vector of specific disclosure section
#'   names to retrieve, e.g.
#'   \code{list("RiskFactors", "ManagementsDiscussionAndAnalysis")}
#'
#' @return \code{data.table} with one row per disclosure. Columns include
#'   \code{ticker}, \code{CIK}, \code{entity_name}, \code{accession_id},
#'   \code{footnote_type}, \code{disclosure_type_name}, \code{SEC_URL},
#'   \code{fiscal_year}, \code{fiscal_period}, \code{calendar_year},
#'   \code{calendar_period}, \code{filing_date}, \code{period_end_date},
#'   \code{filing_type}, \code{description}.
#'
#' @export
get_disclosures <- function(companies,
                            full_text_search_term = NULL,
                            year                  = NULL,
                            period                = NULL,
                            all_history           = FALSE,
                            disclosure_names      = NULL) {

  api_client <- ApiClient$new(
    email = Sys.getenv("CALCBENCH_USERNAME"),
    password = Sys.getenv("CALCBENCH_PASSWORD")
  )

  page_params <- FootnoteQueryParameters$new(
    fullTextQuery   = full_text_search_term,
    disclosureNames = disclosure_names
  )

  period_params <- FootnotePeriodParameters$new(
    year       = year,
    period     = period,
    allHistory = all_history
  )

  search_params <- FootnoteSearchParameters$new(
    pageParameters      = page_params,
    periodParameters    = period_params,
    companiesParameters = CompaniesParameters$new(companyIdentifiers = companies)
  )

  api    <- DisclosureApi$new(api_client = api_client)
  result <- api$DisclosureFootnoteSearch(search_parameters = search_params)

  footnotes <- result$footnotes
  if (is.null(footnotes) || length(footnotes) == 0) return(data.table::data.table())

  rows <- lapply(footnotes, function(obj) {
    data.table::data.table(
      ticker               = obj$ticker,
      CIK                  = obj$CIK,
      entity_name          = obj$entity_name,
      accession_id         = obj$accession_id,
      footnote_type        = obj$footnote_type,
      disclosure_type_name = obj$disclosure_type_name,
      SEC_URL              = obj$SEC_URL,
      fiscal_year          = obj$fiscal_year,
      fiscal_period        = obj$fiscal_period,
      calendar_year        = obj$calendar_year,
      calendar_period      = obj$calendar_period,
      filing_date          = obj$filing_date,
      period_end_date      = obj$period_end_date,
      filing_type          = obj$filing_type,
      description          = obj$description
    )
  })

  data.table::rbindlist(rows, fill = TRUE)
}
