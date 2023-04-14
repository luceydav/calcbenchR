#' Create a new FilingsParameters
#'
#' @description
#' FilingsParameters Class
#'
#' @docType class
#' @title FilingsParameters
#' @description FilingsParameters Class
#' @format An \code{R6Class} generator object
#' @field companiesParameters  \link{CompaniesParameters} [optional]
#' @field pageParameters  \link{FilingsQueryParameters} [optional]
#' @field periodParameters  \link{PeriodParameters} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FilingsParameters <- R6::R6Class(
  "FilingsParameters",
  public = list(
    `companiesParameters` = NULL,
    `pageParameters` = NULL,
    `periodParameters` = NULL,
    #' Initialize a new FilingsParameters class.
    #'
    #' @description
    #' Initialize a new FilingsParameters class.
    #'
    #' @param companiesParameters companiesParameters
    #' @param pageParameters pageParameters
    #' @param periodParameters periodParameters
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`companiesParameters` = NULL, `pageParameters` = NULL, `periodParameters` = NULL, ...) {
      if (!is.null(`companiesParameters`)) {
        stopifnot(R6::is.R6(`companiesParameters`))
        self$`companiesParameters` <- `companiesParameters`
      }
      if (!is.null(`pageParameters`)) {
        stopifnot(R6::is.R6(`pageParameters`))
        self$`pageParameters` <- `pageParameters`
      }
      if (!is.null(`periodParameters`)) {
        stopifnot(R6::is.R6(`periodParameters`))
        self$`periodParameters` <- `periodParameters`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FilingsParameters in JSON format
    #' @export
    toJSON = function() {
      FilingsParametersObject <- list()
      if (!is.null(self$`companiesParameters`)) {
        FilingsParametersObject[["companiesParameters"]] <-
          self$`companiesParameters`$toJSON()
      }
      if (!is.null(self$`pageParameters`)) {
        FilingsParametersObject[["pageParameters"]] <-
          self$`pageParameters`$toJSON()
      }
      if (!is.null(self$`periodParameters`)) {
        FilingsParametersObject[["periodParameters"]] <-
          self$`periodParameters`$toJSON()
      }
      FilingsParametersObject
    },
    #' Deserialize JSON string into an instance of FilingsParameters
    #'
    #' @description
    #' Deserialize JSON string into an instance of FilingsParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of FilingsParameters
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`companiesParameters`)) {
        `companiesparameters_object` <- CompaniesParameters$new()
        `companiesparameters_object`$fromJSON(jsonlite::toJSON(this_object$`companiesParameters`, auto_unbox = TRUE, digits = NA))
        self$`companiesParameters` <- `companiesparameters_object`
      }
      if (!is.null(this_object$`pageParameters`)) {
        `pageparameters_object` <- FilingsQueryParameters$new()
        `pageparameters_object`$fromJSON(jsonlite::toJSON(this_object$`pageParameters`, auto_unbox = TRUE, digits = NA))
        self$`pageParameters` <- `pageparameters_object`
      }
      if (!is.null(this_object$`periodParameters`)) {
        `periodparameters_object` <- PeriodParameters$new()
        `periodparameters_object`$fromJSON(jsonlite::toJSON(this_object$`periodParameters`, auto_unbox = TRUE, digits = NA))
        self$`periodParameters` <- `periodparameters_object`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FilingsParameters in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`companiesParameters`)) {
          sprintf(
          '"companiesParameters":
          %s
          ',
          jsonlite::toJSON(self$`companiesParameters`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
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
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of FilingsParameters
    #'
    #' @description
    #' Deserialize JSON string into an instance of FilingsParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of FilingsParameters
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`companiesParameters` <- CompaniesParameters$new()$fromJSON(jsonlite::toJSON(this_object$`companiesParameters`, auto_unbox = TRUE, digits = NA))
      self$`pageParameters` <- FilingsQueryParameters$new()$fromJSON(jsonlite::toJSON(this_object$`pageParameters`, auto_unbox = TRUE, digits = NA))
      self$`periodParameters` <- PeriodParameters$new()$fromJSON(jsonlite::toJSON(this_object$`periodParameters`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to FilingsParameters
    #'
    #' @description
    #' Validate JSON input with respect to FilingsParameters and throw an exception if invalid
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
    #' @return String representation of FilingsParameters
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
# FilingsParameters$unlock()
#
## Below is an example to define the print function
# FilingsParameters$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FilingsParameters$lock()

