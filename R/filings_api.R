#' Calcbench API
#'
#' No description provided (generated by Openapi Generator https://github.com/calcbenchRtools/calcbenchR-generator)
#'
#' The version of the OpenAPI document: v1
#' Generated by: https://calcbenchR-generator.tech
#'
#' @docType class
#' @title Filings operations
#' @description FilingsApi
#' @format An \code{R6Class} generator object
#' @field api_client Handles the client-server communication.
#'
#' @section Methods:
#' \describe{
#' \strong{ FilingsFilingsV2 } \emph{  }
#'
#' \itemize{
#' \item \emph{ @param } filings_params \link{FilingsParameters}
#' \item \emph{ @returnType } list( \link{Filing} ) \cr
#'
#'
#' \item status code : 200 | OK
#'
#' \item return type : array[Filing]
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' }
#'
#'
#' @examples
#' \dontrun{
#' ####################  FilingsFilingsV2  ####################
#'
#' library(calcbenchR)
#' var_filings_params <- FilingsParameters$new(CompaniesParameters$new(c("companyIdentifiers_example"), "entireUniverse_example", c(123)), FilingsQueryParameters$new("IncludePerformance_example", "IncludePressReleasesAndProxies_example", "IncludeNonXBRL_example", c("BusinessWirePR_filedAfterAn8K"), 123, c("metrics_example"), "IncludeXBRL_example"), PeriodParameters$new(123, "unset", 123, "unset", "periodType_example", "useFiscalPeriod_example", DateRange$new("startDate_example", "endDate_example"), "allHistory_example", "updateDate_example", "updatedFrom_example", "asOriginallyReported_example", 123, 123)) # FilingsParameters | 
#'
#' api_instance <- FilingsApi$new()
#'
#' # to save the result into a file, simply add the optional `data_file` parameter, e.g.
#' # result <- api_instance$FilingsFilingsV2(var_filings_paramsdata_file = "result.txt")
#' result <- api_instance$FilingsFilingsV2(var_filings_params)
#' dput(result)
#'
#'
#' }
#' @importFrom R6 R6Class
#' @importFrom base64enc base64encode
#' @export
FilingsApi <- R6::R6Class(
  "FilingsApi",
  public = list(
    api_client = NULL,
    #' Initialize a new FilingsApi.
    #'
    #' @description
    #' Initialize a new FilingsApi.
    #'
    #' @param api_client An instance of API client.
    #' @export
    initialize = function(api_client) {
      if (!missing(api_client)) {
        self$api_client <- api_client
      } else {
        self$api_client <- ApiClient$new()
      }
    },
    #' 
    #'
    #' @description
    #' 
    #'
    #' @param filings_params 
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #' @return array[Filing]
    #' @export
    FilingsFilingsV2 = function(filings_params, data_file = NULL, ...) {
      local_var_response <- self$FilingsFilingsV2WithHttpInfo(filings_params, data_file = data_file, ...)
      if (local_var_response$status_code >= 200 && local_var_response$status_code <= 299) {
        local_var_response$content
      } else if (local_var_response$status_code >= 300 && local_var_response$status_code <= 399) {
        local_var_response
      } else if (local_var_response$status_code >= 400 && local_var_response$status_code <= 499) {
        local_var_response
      } else if (local_var_response$status_code >= 500 && local_var_response$status_code <= 599) {
        local_var_response
      }
    },
    #' 
    #'
    #' @description
    #' 
    #'
    #' @param filings_params 
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #' @return API response (array[Filing]) with additional information such as HTTP status code, headers
    #' @export
    FilingsFilingsV2WithHttpInfo = function(filings_params, data_file = NULL, ...) {
      args <- list(...)
      query_params <- list()
      header_params <- c()
      form_params <- list()
      file_params <- list()
      local_var_body <- NULL
      oauth_scopes <- NULL
      is_oauth <- FALSE

      if (missing(`filings_params`)) {
        stop("Missing required parameter `filings_params`.")
      }


      if (!is.null(`filings_params`)) {
        local_var_body <- `filings_params`$toJSONString()
      } else {
        body <- NULL
      }

      local_var_url_path <- "/api/filingsV2"

      # The Accept request HTTP header
      local_var_accepts <- list("application/json", "text/json", "text/html", "text/csv")

      # The Content-Type representation header
      local_var_content_types <- list("application/json", "text/json", "text/html", "application/x-www-form-urlencoded")

      local_var_resp <- self$api_client$CallApi(url = paste0(self$api_client$base_path, local_var_url_path),
                                 method = "POST",
                                 query_params = query_params,
                                 header_params = header_params,
                                 form_params = form_params,
                                 file_params = file_params,
                                 accepts = local_var_accepts,
                                 content_types = local_var_content_types,
                                 body = local_var_body,
                                 is_oauth = is_oauth,
                                 oauth_scopes = oauth_scopes,
                                 ...)

      if (local_var_resp$status_code >= 200 && local_var_resp$status_code <= 299) {
        # save response in a file
        if (!is.null(data_file)) {
          write(local_var_resp$response, data_file)
        }

        deserialized_resp_obj <- tryCatch(
          self$api_client$deserialize(local_var_resp$response, "array[Filing]", loadNamespace("calcbenchR")),
          error = function(e) {
            stop("Failed to deserialize response", e)
          }
        )
        local_var_resp$content <- deserialized_resp_obj
        local_var_resp
      } else if (local_var_resp$status_code >= 300 && local_var_resp$status_code <= 399) {
        ApiResponse$new(paste("Server returned ", local_var_resp$status_code, " response status code."), local_var_resp)
      } else if (local_var_resp$status_code >= 400 && local_var_resp$status_code <= 499) {
        ApiResponse$new("API client error", local_var_resp)
      } else if (local_var_resp$status_code >= 500 && local_var_resp$status_code <= 599) {
        if (is.null(local_var_resp$response) || local_var_resp$response == "") {
          local_var_resp$response <- "API server error"
        }
        local_var_resp
      }
    }
  )
)
