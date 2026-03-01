#' @title Get Dimensional / Segment Data
#'
#' @description Retrieve dimensional (segment) data from Calcbench.
#'   Returns the data behind \url{https://www.calcbench.com/segments}.
#'   Requires a premium Calcbench subscription.
#'
#' @param metrics character vector of dimensional metric names,
#'   e.g. \code{list("OperatingSegmentRevenue")}
#' @param companies list of company identifiers (tickers or CIK codes),
#'   e.g. \code{list("AAPL", "MSFT")}
#' @param all_history logical; if \code{TRUE} return all available history
#'   (default \code{TRUE})
#'
#' @return \code{data.table} with one row per data point. Columns include
#'   \code{ticker}, \code{CIK}, \code{metric}, \code{value},
#'   \code{calendar_year}, \code{calendar_period}, \code{fiscal_year},
#'   \code{fiscal_period}, \code{filing_type}, \code{preliminary},
#'   \code{filing_accession_number}, \code{standardized_id},
#'   \code{revision_number}, \code{XBRL}, \code{is_subtotal},
#'   \code{container}, \code{trace_url}, \code{calcbench_entity_id}.
#'
#' @export
get_dimensional_data <- function(metrics, companies, all_history = TRUE) {

  api_client <- ApiClient$new(
    email = Sys.getenv("CALCBENCH_USERNAME"),
    password = Sys.getenv("CALCBENCH_PASSWORD")
  )

  search_params <- DimensionalSearchParameters$new(
    pageParameters   = DimensionalQueryParameters$new(metrics = metrics),
    periodParameters = PeriodParameters$new(allHistory = all_history),
    companiesParameters = CompaniesParameters$new(companyIdentifiers = companies)
  )

  api    <- DimensionalDataApi$new(api_client = api_client)
  result <- api$DimensionalDataDimensionalData(params = search_params)

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
      is_subtotal             = obj$is_subtotal,
      container               = obj$container,
      trace_url               = obj$trace_url
    )
  })

  data.table::rbindlist(rows, fill = TRUE)
}
