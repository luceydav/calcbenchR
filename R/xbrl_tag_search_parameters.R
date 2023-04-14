#' Create a new XBRLTagSearchParameters
#'
#' @description
#' XBRLTagSearchParameters Class
#'
#' @docType class
#' @title XBRLTagSearchParameters
#' @description XBRLTagSearchParameters Class
#' @format An \code{R6Class} generator object
#' @field pageParameters  \link{XBRLTagQueryParameters} [optional]
#' @field companiesParameters  \link{CompaniesParameters} [optional]
#' @field periodParameters  \link{PeriodParameters} [optional]
#' @field metricSearchCriteria  \link{MetricSearchCriteria} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
XBRLTagSearchParameters <- R6::R6Class(
  "XBRLTagSearchParameters",
  public = list(
    `pageParameters` = NULL,
    `companiesParameters` = NULL,
    `periodParameters` = NULL,
    `metricSearchCriteria` = NULL,
    #' Initialize a new XBRLTagSearchParameters class.
    #'
    #' @description
    #' Initialize a new XBRLTagSearchParameters class.
    #'
    #' @param pageParameters pageParameters
    #' @param companiesParameters companiesParameters
    #' @param periodParameters periodParameters
    #' @param metricSearchCriteria metricSearchCriteria
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`pageParameters` = NULL, `companiesParameters` = NULL, `periodParameters` = NULL, `metricSearchCriteria` = NULL, ...) {
      if (!is.null(`pageParameters`)) {
        stopifnot(R6::is.R6(`pageParameters`))
        self$`pageParameters` <- `pageParameters`
      }
      if (!is.null(`companiesParameters`)) {
        stopifnot(R6::is.R6(`companiesParameters`))
        self$`companiesParameters` <- `companiesParameters`
      }
      if (!is.null(`periodParameters`)) {
        stopifnot(R6::is.R6(`periodParameters`))
        self$`periodParameters` <- `periodParameters`
      }
      if (!is.null(`metricSearchCriteria`)) {
        stopifnot(R6::is.R6(`metricSearchCriteria`))
        self$`metricSearchCriteria` <- `metricSearchCriteria`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return XBRLTagSearchParameters in JSON format
    #' @export
    toJSON = function() {
      XBRLTagSearchParametersObject <- list()
      if (!is.null(self$`pageParameters`)) {
        XBRLTagSearchParametersObject[["pageParameters"]] <-
          self$`pageParameters`$toJSON()
      }
      if (!is.null(self$`companiesParameters`)) {
        XBRLTagSearchParametersObject[["companiesParameters"]] <-
          self$`companiesParameters`$toJSON()
      }
      if (!is.null(self$`periodParameters`)) {
        XBRLTagSearchParametersObject[["periodParameters"]] <-
          self$`periodParameters`$toJSON()
      }
      if (!is.null(self$`metricSearchCriteria`)) {
        XBRLTagSearchParametersObject[["metricSearchCriteria"]] <-
          self$`metricSearchCriteria`$toJSON()
      }
      XBRLTagSearchParametersObject
    },
    #' Deserialize JSON string into an instance of XBRLTagSearchParameters
    #'
    #' @description
    #' Deserialize JSON string into an instance of XBRLTagSearchParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of XBRLTagSearchParameters
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`pageParameters`)) {
        `pageparameters_object` <- XBRLTagQueryParameters$new()
        `pageparameters_object`$fromJSON(jsonlite::toJSON(this_object$`pageParameters`, auto_unbox = TRUE, digits = NA))
        self$`pageParameters` <- `pageparameters_object`
      }
      if (!is.null(this_object$`companiesParameters`)) {
        `companiesparameters_object` <- CompaniesParameters$new()
        `companiesparameters_object`$fromJSON(jsonlite::toJSON(this_object$`companiesParameters`, auto_unbox = TRUE, digits = NA))
        self$`companiesParameters` <- `companiesparameters_object`
      }
      if (!is.null(this_object$`periodParameters`)) {
        `periodparameters_object` <- PeriodParameters$new()
        `periodparameters_object`$fromJSON(jsonlite::toJSON(this_object$`periodParameters`, auto_unbox = TRUE, digits = NA))
        self$`periodParameters` <- `periodparameters_object`
      }
      if (!is.null(this_object$`metricSearchCriteria`)) {
        `metricsearchcriteria_object` <- MetricSearchCriteria$new()
        `metricsearchcriteria_object`$fromJSON(jsonlite::toJSON(this_object$`metricSearchCriteria`, auto_unbox = TRUE, digits = NA))
        self$`metricSearchCriteria` <- `metricsearchcriteria_object`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return XBRLTagSearchParameters in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`pageParameters`)) {
          sprintf(
          '"pageParameters":
          %s
          ',
          jsonlite::toJSON(self$`pageParameters`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`companiesParameters`)) {
          sprintf(
          '"companiesParameters":
          %s
          ',
          jsonlite::toJSON(self$`companiesParameters`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`periodParameters`)) {
          sprintf(
          '"periodParameters":
          %s
          ',
          jsonlite::toJSON(self$`periodParameters`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`metricSearchCriteria`)) {
          sprintf(
          '"metricSearchCriteria":
          %s
          ',
          jsonlite::toJSON(self$`metricSearchCriteria`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of XBRLTagSearchParameters
    #'
    #' @description
    #' Deserialize JSON string into an instance of XBRLTagSearchParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of XBRLTagSearchParameters
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`pageParameters` <- XBRLTagQueryParameters$new()$fromJSON(jsonlite::toJSON(this_object$`pageParameters`, auto_unbox = TRUE, digits = NA))
      self$`companiesParameters` <- CompaniesParameters$new()$fromJSON(jsonlite::toJSON(this_object$`companiesParameters`, auto_unbox = TRUE, digits = NA))
      self$`periodParameters` <- PeriodParameters$new()$fromJSON(jsonlite::toJSON(this_object$`periodParameters`, auto_unbox = TRUE, digits = NA))
      self$`metricSearchCriteria` <- MetricSearchCriteria$new()$fromJSON(jsonlite::toJSON(this_object$`metricSearchCriteria`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to XBRLTagSearchParameters
    #'
    #' @description
    #' Validate JSON input with respect to XBRLTagSearchParameters and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of XBRLTagSearchParameters
    #' @export
    toString = function() {
      self$toJSONString()
    },
    #' Return true if the values in all fields are valid.
    #'
    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    #' @export
    isValid = function() {
      TRUE
    },
    #' Return a list of invalid fields (if any).
    #'
    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    #' @export
    getInvalidFields = function() {
      invalid_fields <- list()
      invalid_fields
    },
    #' Print the object
    #'
    #' @description
    #' Print the object
    #'
    #' @export
    print = function() {
      print(jsonlite::prettify(self$toJSONString()))
      invisible(self)
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
# XBRLTagSearchParameters$unlock()
#
## Below is an example to define the print function
# XBRLTagSearchParameters$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# XBRLTagSearchParameters$lock()

