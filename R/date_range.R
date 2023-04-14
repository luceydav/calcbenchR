#' Create a new DateRange
#'
#' @description
#' DateRange Class
#'
#' @docType class
#' @title DateRange
#' @description DateRange Class
#' @format An \code{R6Class} generator object
#' @field startDate  character [optional]
#' @field endDate  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DateRange <- R6::R6Class(
  "DateRange",
  public = list(
    `startDate` = NULL,
    `endDate` = NULL,
    #' Initialize a new DateRange class.
    #'
    #' @description
    #' Initialize a new DateRange class.
    #'
    #' @param startDate startDate
    #' @param endDate endDate
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`startDate` = NULL, `endDate` = NULL, ...) {
      if (!is.null(`startDate`)) {
        if (!is.character(`startDate`)) {
          stop(paste("Error! Invalid data for `startDate`. Must be a string:", `startDate`))
        }
        self$`startDate` <- `startDate`
      }
      if (!is.null(`endDate`)) {
        if (!is.character(`endDate`)) {
          stop(paste("Error! Invalid data for `endDate`. Must be a string:", `endDate`))
        }
        self$`endDate` <- `endDate`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return DateRange in JSON format
    #' @export
    toJSON = function() {
      DateRangeObject <- list()
      if (!is.null(self$`startDate`)) {
        DateRangeObject[["startDate"]] <-
          self$`startDate`
      }
      if (!is.null(self$`endDate`)) {
        DateRangeObject[["endDate"]] <-
          self$`endDate`
      }
      DateRangeObject
    },
    #' Deserialize JSON string into an instance of DateRange
    #'
    #' @description
    #' Deserialize JSON string into an instance of DateRange
    #'
    #' @param input_json the JSON input
    #' @return the instance of DateRange
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`startDate`)) {
        self$`startDate` <- this_object$`startDate`
      }
      if (!is.null(this_object$`endDate`)) {
        self$`endDate` <- this_object$`endDate`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return DateRange in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`startDate`)) {
          sprintf(
          '"startDate":
            "%s"
                    ',
          self$`startDate`
          )
        },
        if (!is.null(self$`endDate`)) {
          sprintf(
          '"endDate":
            "%s"
                    ',
          self$`endDate`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of DateRange
    #'
    #' @description
    #' Deserialize JSON string into an instance of DateRange
    #'
    #' @param input_json the JSON input
    #' @return the instance of DateRange
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`startDate` <- this_object$`startDate`
      self$`endDate` <- this_object$`endDate`
      self
    },
    #' Validate JSON input with respect to DateRange
    #'
    #' @description
    #' Validate JSON input with respect to DateRange and throw an exception if invalid
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
    #' @return String representation of DateRange
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
# DateRange$unlock()
#
## Below is an example to define the print function
# DateRange$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DateRange$lock()

