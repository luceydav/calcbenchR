#' @title Get XBRL Tag Values
#'
#' @description Retrieve standardized data for specific XBRL tags or metrics
#'   across multiple companies, the data behind the Calcbench multi-company page.
#'
#' @param companies list of company identifiers (tickers or CIK codes),
#'   e.g. \code{list("AAPL", "MSFT")}
#' @param tags character vector of XBRL tag names, e.g.
#'   \code{list("us-gaap:Revenues")}. At least one of \code{tags} or
#'   \code{metrics} must be provided.
#' @param metrics character vector of Calcbench standardized metric names,
#'   e.g. \code{list("Revenue")}. At least one of \code{tags} or \code{metrics}
#'   must be provided.
#' @param all_history logical; if \code{TRUE} return all available history
#'   (default \code{TRUE})
#'
#' @return \code{data.table} with one row per data point. Columns include
#'   \code{ticker}, \code{CIK}, \code{calcbench_entity_id}, \code{metric},
#'   \code{value}, \code{calendar_year}, \code{calendar_period},
#'   \code{fiscal_year}, \code{fiscal_period}, \code{filing_type},
#'   \code{preliminary}, \code{filing_accession_number},
#'   \code{standardized_id}, \code{revision_number}, \code{XBRL},
#'   \code{trace_url}.
#'
#' @export
get_xbrl_tag_values <- function(companies,
                                tags        = NULL,
                                metrics     = NULL,
                                all_history = TRUE) {

  if (is.null(tags) && is.null(metrics)) {
    stop("At least one of 'tags' or 'metrics' must be provided.")
  }

  api_client <- ApiClient$new(
    email = Sys.getenv("CALCBENCH_USERNAME"),
    password = Sys.getenv("CALCBENCH_PASSWORD")
  )

  search_params <- XBRLTagSearchParameters$new(
    pageParameters      = XBRLTagQueryParameters$new(
      tags    = tags,
      metrics = metrics
    ),
    companiesParameters = CompaniesParameters$new(companyIdentifiers = companies),
    periodParameters    = PeriodParameters$new(allHistory = all_history),
    metricSearchCriteria = MetricSearchCriteria$new(
      metrics              = metrics,
      company_identifiers  = companies,
      all_history          = all_history
    )
  )

  api    <- RawXBRLApi$new(api_client = api_client)
  result <- api$RawXBRLXBRLTagValues(search_parameters = search_params)

  if (length(result) == 0) return(data.table::data.table())

  rows <- lapply(result, function(obj) {
    data.table::data.table(
      ticker                  = obj$ticker,
      CIK                     = obj$CIK,
      calcbench_entity_id     = obj$calcbench_entity_id,
      metric                  = obj$metric,
      value                   = obj$value,
      calendar_year           = obj$calendar_year,
      calendar_period         = obj$calendar_period,
      fiscal_year             = obj$fiscal_year,
      fiscal_period           = obj$fiscal_period,
      filing_type             = obj$filing_type,
      preliminary             = obj$preliminary,
      filing_accession_number = obj$filing_accession_number,
      standardized_id         = obj$standardized_id,
      revision_number         = obj$revision_number,
      XBRL                    = obj$XBRL,
      trace_url               = obj$trace_url
    )
  })

  data.table::rbindlist(rows, fill = TRUE)
}
