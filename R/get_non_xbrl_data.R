#' @title Get Non-XBRL Numeric Data
#'
#' @description Retrieve raw non-XBRL numeric data from earnings releases and
#'   SEC filings. Requires a professional Calcbench subscription.
#'
#' @param companies list of company identifiers (tickers or CIK codes),
#'   e.g. \code{list("AAPL", "MSFT")}
#' @param clauses list of clause lists for filtering. Each clause is a named
#'   list with elements \code{value} (character), \code{parameter} (character),
#'   and \code{operator} (integer). Operators: 1 = Equals, 10 = Contains,
#'   21 = NotEquals. Example:
#'   \code{list(list(value="Revenue", parameter="metric", operator=1))}
#'
#' @return \code{data.table} with one row per fact. Columns include
#'   \code{ticker}, \code{CIK}, \code{entity_name}, \code{metric},
#'   \code{Value}, \code{UOM}, \code{fiscal_year}, \code{fiscal_period},
#'   \code{filing_year}, \code{filing_period}, \code{calendar_year},
#'   \code{calendar_period}, \code{filing_date}, \code{filing_type},
#'   \code{is_non_gaap}, \code{is_guidance}, \code{label},
#'   \code{sec_filing_URL}.
#'
#' @export
get_non_xbrl_data <- function(companies, clauses = NULL) {

  api_client <- ApiClient$new(
    email = Sys.getenv("CALCBENCH_USERNAME"),
    password = Sys.getenv("CALCBENCH_PASSWORD")
  )

  search_params <- RawNonXBRLDataSearchParams$new(
    pageParameters      = RawNonXBRLQueryParams$new(Clauses = clauses),
    companiesParameters = CompaniesParameters$new(companyIdentifiers = companies)
  )

  api    <- RawDataApi$new(api_client = api_client)
  result <- api$RawDataRawNonXBRLData(params = search_params)

  if (length(result) == 0) return(data.table::data.table())

  rows <- lapply(result, function(obj) {
    data.table::data.table(
      ticker          = obj$ticker,
      CIK             = obj$CIK,
      entity_name     = obj$entity_name,
      metric          = obj$metric,
      Value           = obj$Value,
      UOM             = obj$UOM,
      fiscal_year     = obj$fiscal_year,
      fiscal_period   = obj$fiscal_period,
      filing_year     = obj$filing_year,
      filing_period   = obj$filing_period,
      calendar_year   = obj$calendar_year,
      calendar_period = obj$calendar_period,
      filing_date     = obj$filing_date,
      filing_type     = obj$filing_type,
      is_non_gaap     = obj$is_non_gaap,
      is_guidance     = obj$is_guidance,
      label           = obj$label,
      sec_filing_URL  = obj$sec_filing_URL
    )
  })

  data.table::rbindlist(rows, fill = TRUE)
}
