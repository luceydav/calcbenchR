#' @title Get Business Combinations (M&A Purchase Price Allocations)
#'
#' @description Retrieve M&A purchase price allocation data from Calcbench,
#'   the data behind \url{https://www.calcbench.com/businesscombinations}.
#'
#' @param companies list of acquirer company identifiers (tickers or CIK codes),
#'   e.g. \code{list("MSFT", "GOOGL")}. Pass \code{NULL} to retrieve all
#'   available companies.
#'
#' @return \code{data.table} with one row per acquisition. Columns include
#'   \code{parent_company}, \code{parent_company_ticker},
#'   \code{parent_company_cik}, \code{parent_company_state},
#'   \code{parent_company_SIC_code}, \code{target}, \code{acquisition_date},
#'   \code{date_reported}, \code{date_originally_reported},
#'   \code{enterprise_value}, \code{purchase_price}, \code{trace_link}.
#'   Note: \code{intangible_categories} and \code{standardized_PPA_points}
#'   (nested data) are not included in this summary; use the raw API class
#'   \code{BusinessCombinationsApi} for full nested detail.
#'
#' @export
get_business_combinations <- function(companies = NULL) {

  api_client <- ApiClient$new(
    email = Sys.getenv("CALCBENCH_USERNAME"),
    password = Sys.getenv("CALCBENCH_PASSWORD")
  )

  companies_params <- if (!is.null(companies)) {
    CompaniesParameters$new(companyIdentifiers = companies)
  } else {
    CompaniesParameters$new()
  }

  search_params <- BusinessCombinationsParameters$new(
    companiesParameters = companies_params
  )

  api    <- BusinessCombinationsApi$new(api_client = api_client)
  result <- api$BusinessCombinationsBusinessCombinations(
    search_parameters = search_params
  )

  if (length(result) == 0) return(data.table::data.table())

  rows <- lapply(result, function(obj) {
    purchase_price_val <- tryCatch(
      obj$purchase_price$value,
      error = function(e) NA_real_
    )
    data.table::data.table(
      parent_company          = obj$parent_company,
      parent_company_ticker   = obj$parent_company_ticker,
      parent_company_cik      = obj$parent_company_cik,
      parent_company_state    = obj$parent_company_state,
      parent_company_SIC_code = obj$parent_company_SIC_code,
      target                  = obj$target,
      acquisition_date        = obj$acquisition_date,
      date_reported           = obj$date_reported,
      date_originally_reported = obj$date_originally_reported,
      enterprise_value        = obj$enterprise_value,
      purchase_price          = purchase_price_val,
      trace_link              = obj$trace_link
    )
  })

  data.table::rbindlist(rows, fill = TRUE)
}
