#' @title Get As-Reported Face Statement
#'
#' @description Retrieve an as-reported financial statement (income statement,
#'   balance sheet, cash flow, etc.) for a single company from Calcbench.
#'
#' @param company character; single ticker or CIK code, e.g. \code{"AAPL"}
#' @param statement_type character; one of \code{"income"}, \code{"balance"},
#'   \code{"cash"}, \code{"change-in-equity"}, or
#'   \code{"comprehensive-income"} (default \code{"income"})
#' @param period_type character; one of \code{"annual"}, \code{"quarterly"},
#'   \code{"combined"}, or \code{"cumulative"} (default \code{"annual"})
#' @param all_history logical; if \code{TRUE} return all available periods
#'   (default \code{FALSE})
#' @param descending_dates logical; if \code{TRUE} sort most recent period
#'   first (default \code{FALSE})
#' @param currency character; currency code for conversion, e.g. \code{"USD"}
#'   (default \code{NULL} uses the company's reporting currency)
#' @param include_non_xbrl logical; if \code{TRUE} include data from earnings
#'   releases in addition to SEC filings (default \code{FALSE})
#'
#' @return An \code{APIXBRLStatement} R6 object containing:
#'   \describe{
#'     \item{\code{entity_name}}{Company name}
#'     \item{\code{name}}{Statement name}
#'     \item{\code{period_type}}{Period type}
#'     \item{\code{columns}}{List of \code{FaceStatementColumn} objects
#'       (each with \code{fiscal_period}, \code{period_start},
#'       \code{period_end}, etc.)}
#'     \item{\code{line_items}}{List of line item objects with values
#'       indexed by column}
#'   }
#'   Use \code{result$columns} and \code{result$line_items} to access the data.
#'
#' @export
get_face_statement <- function(company,
                               statement_type    = "income",
                               period_type       = "annual",
                               all_history       = FALSE,
                               descending_dates  = FALSE,
                               currency          = NULL,
                               include_non_xbrl  = FALSE) {

  api_client <- ApiClient$new(
    email = Sys.getenv("CALCBENCH_USERNAME"),
    password = Sys.getenv("CALCBENCH_PASSWORD")
  )

  api <- FaceStatementsApi$new(api_client = api_client)
  api$FaceStatementsGetStatementExteneral(
    company_identifier = company,
    statement_type     = statement_type,
    period_type        = period_type,
    all_periods        = all_history,
    descending_dates   = descending_dates,
    currency           = currency,
    include_non_xbrl   = include_non_xbrl
  )
}
