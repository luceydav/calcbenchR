#' Create a new DimensionalSearchParameters
#'
#' @description
#' The arguments for the Segment API end-point
#'
#' @docType class
#' @title DimensionalSearchParameters
#' @description DimensionalSearchParameters Class
#' @format An \code{R6Class} generator object
#' @field pageParameters  \link{DimensionalQueryParameters} [optional]
#' @field periodParameters  \link{PeriodParameters} [optional]
#' @field companiesParameters  \link{CompaniesParameters} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DimensionalSearchParameters <- R6::R6Class(
  "DimensionalSearchParameters",
  public = list(
    `pageParameters` = NULL,
    `periodParameters` = NULL,
    `companiesParameters` = NULL,
    #' Initialize a new DimensionalSearchParameters class.
    #'
    #' @description
    #' Initialize a new DimensionalSearchParameters class.
    #'
    #' @param pageParameters pageParameters
    #' @param periodParameters periodParameters
    #' @param companiesParameters companiesParameters
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`pageParameters` = NULL, `periodParameters` = NULL, `companiesParameters` = NULL, ...) {
      if (!is.null(`pageParameters`)) {
        stopifnot(R6::is.R6(`pageParameters`))
        self$`pageParameters` <- `pageParameters`
      }
      if (!is.null(`periodParameters`)) {
        stopifnot(R6::is.R6(`periodParameters`))
        self$`periodParameters` <- `periodParameters`
      }
      if (!is.null(`companiesParameters`)) {
        stopifnot(R6::is.R6(`companiesParameters`))
        self$`companiesParameters` <- `companiesParameters`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return DimensionalSearchParameters in JSON format
    #' @export
    toJSON = function() {
      DimensionalSearchParametersObject <- list()
      if (!is.null(self$`pageParameters`)) {
        DimensionalSearchParametersObject[["pageParameters"]] <-
          self$`pageParameters`$toJSON()
      }
      if (!is.null(self$`periodParameters`)) {
        DimensionalSearchParametersObject[["periodParameters"]] <-
          self$`periodParameters`$toJSON()
      }
      if (!is.null(self$`companiesParameters`)) {
        DimensionalSearchParametersObject[["companiesParameters"]] <-
          self$`companiesParameters`$toJSON()
      }
      DimensionalSearchParametersObject
    },
    #' Deserialize JSON string into an instance of DimensionalSearchParameters
    #'
    #' @description
    #' Deserialize JSON string into an instance of DimensionalSearchParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of DimensionalSearchParameters
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`pageParameters`)) {
        `pageparameters_object` <- DimensionalQueryParameters$new()
        `pageparameters_object`$fromJSON(jsonlite::toJSON(this_object$`pageParameters`, auto_unbox = TRUE, digits = NA))
        self$`pageParameters` <- `pageparameters_object`
      }
      if (!is.null(this_object$`periodParameters`)) {
        `periodparameters_object` <- PeriodParameters$new()
        `periodparameters_object`$fromJSON(jsonlite::toJSON(this_object$`periodParameters`, auto_unbox = TRUE, digits = NA))
        self$`periodParameters` <- `periodparameters_object`
      }
      if (!is.null(this_object$`companiesParameters`)) {
        `companiesparameters_object` <- CompaniesParameters$new()
        `companiesparameters_object`$fromJSON(jsonlite::toJSON(this_object$`companiesParameters`, auto_unbox = TRUE, digits = NA))
        self$`companiesParameters` <- `companiesparameters_object`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return DimensionalSearchParameters in JSON format
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
        if (!is.null(self$`periodParameters`)) {
          sprintf(
          '"periodParameters":
          %s
          ',
          jsonlite::toJSON(self$`periodParameters`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`companiesParameters`)) {
          sprintf(
          '"companiesParameters":
          %s
          ',
          jsonlite::toJSON(self$`companiesParameters`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of DimensionalSearchParameters
    #'
    #' @description
    #' Deserialize JSON string into an instance of DimensionalSearchParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of DimensionalSearchParameters
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`pageParameters` <- DimensionalQueryParameters$new()$fromJSON(jsonlite::toJSON(this_object$`pageParameters`, auto_unbox = TRUE, digits = NA))
      self$`periodParameters` <- PeriodParameters$new()$fromJSON(jsonlite::toJSON(this_object$`periodParameters`, auto_unbox = TRUE, digits = NA))
      self$`companiesParameters` <- CompaniesParameters$new()$fromJSON(jsonlite::toJSON(this_object$`companiesParameters`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to DimensionalSearchParameters
    #'
    #' @description
    #' Validate JSON input with respect to DimensionalSearchParameters and throw an exception if invalid
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
    #' @return String representation of DimensionalSearchParameters
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
# DimensionalSearchParameters$unlock()
#
## Below is an example to define the print function
# DimensionalSearchParameters$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DimensionalSearchParameters$lock()

