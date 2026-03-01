#' @title Get Form 13F Data
#'
#' @description Retrieve Form 13F institutional holdings data for one or more
#'   filers. 13F filings are submitted quarterly by institutional investment
#'   managers with over $100M in assets under management.
#'
#' @param companies list of filer company identifiers (tickers or CIK codes),
#'   e.g. \code{list("BRK-B")}
#' @param clauses list of clause lists for filtering. Each clause is a named
#'   list with elements \code{value} (character), \code{parameter} (character),
#'   and \code{operator} (integer). Operators: 1 = Equals, 10 = Contains,
#'   21 = NotEquals. Example:
#'   \code{list(list(value="2023", parameter="fiscalYear", operator=1))}
#'
#' @return The raw API response. The structure of 13F data depends on the
#'   Calcbench API response format for this endpoint. Inspect the returned
#'   object to determine column availability.
#'
#' @export
get_13f_data <- function(companies, clauses = NULL) {

  api_client <- ApiClient$new(
    email = Sys.getenv("CALCBENCH_USERNAME"),
    password = Sys.getenv("CALCBENCH_PASSWORD")
  )

  search_params <- Raw13FDataSearchParams$new(
    pageParameters      = Raw13FQueryParams$new(Clauses = clauses),
    companiesParameters = CompaniesParameters$new(companyIdentifiers = companies)
  )

  api    <- RawDataApi$new(api_client = api_client)
  result <- api$RawDataRaw13FData(params = search_params)

  if (length(result) == 0) return(data.table::data.table())

  # 13F response fields are not specified in the Swagger model;
  # attempt to coerce each item to a data.table row.
  tryCatch({
    rows <- lapply(result, function(obj) {
      fields <- obj$toJSON()
      if (is.character(fields)) {
        parsed <- jsonlite::fromJSON(fields, simplifyVector = TRUE)
        data.table::as.data.table(as.list(parsed))
      } else {
        data.table::data.table()
      }
    })
    data.table::rbindlist(rows, fill = TRUE)
  }, error = function(e) {
    result
  })
}
