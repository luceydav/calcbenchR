#' @title Get Raw XBRL Data
#'
#' @description Retrieve raw as-reported XBRL data for one or more companies.
#'   Optionally filter by XBRL tag, fiscal period, or other criteria using
#'   \code{clauses}.
#'
#' @param companies list of company identifiers (tickers or CIK codes),
#'   e.g. \code{list("AAPL", "MSFT")}
#' @param clauses list of clause lists for filtering. Each clause is a named
#'   list with elements \code{value} (character), \code{parameter} (character),
#'   and \code{operator} (integer). Common parameters include \code{"XBRLtag"},
#'   \code{"fiscalYear"}, \code{"fiscalPeriod"}. Operators: 1 = Equals,
#'   10 = Contains, 21 = NotEquals. Example:
#'   \code{list(list(value="us-gaap:Revenue", parameter="XBRLtag", operator=1))}
#'
#' @return \code{data.table} with one row per XBRL fact. Columns include
#'   \code{ticker}, \code{CIK}, \code{entity_name}, \code{filingID},
#'   \code{XBRLtag}, \code{Value}, \code{fiscal_year}, \code{fiscal_period},
#'   \code{calendar_year}, \code{calendar_period}, \code{period_start},
#'   \code{period_end}, \code{filing_date}, \code{unit_of_measure},
#'   \code{label}, \code{SEC_accession_number}, \code{sec_filing_URL}.
#'
#' @export
get_raw_xbrl <- function(companies, clauses = NULL) {

  api_client <- ApiClient$new(
    email = Sys.getenv("CALCBENCH_USERNAME"),
    password = Sys.getenv("CALCBENCH_PASSWORD")
  )

  search_params <- RawXBRLDataSearchParams$new(
    pageParameters      = RawXBRLQueryParams$new(Clauses = clauses),
    companiesParameters = CompaniesParameters$new(companyIdentifiers = companies)
  )

  api    <- RawDataApi$new(api_client = api_client)
  result <- api$RawDataRawXBRLData(params = search_params)

  if (length(result) == 0) return(data.table::data.table())

  rows <- lapply(result, function(obj) {
    data.table::data.table(
      ticker               = obj$ticker,
      CIK                  = obj$CIK,
      entity_name          = obj$entity_name,
      filingID             = obj$filingID,
      XBRLtag              = obj$XBRLtag,
      Value                = obj$Value,
      fiscal_year          = obj$fiscal_year,
      fiscal_period        = obj$fiscal_period,
      calendar_year        = obj$calendar_year,
      calendar_period      = obj$calendar_period,
      period_start         = obj$period_start,
      period_end           = obj$period_end,
      filing_date          = obj$filing_date,
      unit_of_measure      = obj$unit_of_measure,
      label                = obj$label,
      SEC_accession_number = obj$SEC_accession_number,
      sec_filing_URL       = obj$sec_filing_URL
    )
  })

  data.table::rbindlist(rows, fill = TRUE)
}
