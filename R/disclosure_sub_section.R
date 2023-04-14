#' Create a new DisclosureSubSection
#'
#' @description
#' DisclosureSubSection Class
#'
#' @docType class
#' @title DisclosureSubSection
#' @description DisclosureSubSection Class
#' @format An \code{R6Class} generator object
#' @field header  character [optional]
#' @field body  character [optional]
#' @field type  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DisclosureSubSection <- R6::R6Class(
  "DisclosureSubSection",
  public = list(
    `header` = NULL,
    `body` = NULL,
    `type` = NULL,
    #' Initialize a new DisclosureSubSection class.
    #'
    #' @description
    #' Initialize a new DisclosureSubSection class.
    #'
    #' @param header header
    #' @param body body
    #' @param type type
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`header` = NULL, `body` = NULL, `type` = NULL, ...) {
      if (!is.null(`header`)) {
        if (!(is.character(`header`) && length(`header`) == 1)) {
          stop(paste("Error! Invalid data for `header`. Must be a string:", `header`))
        }
        self$`header` <- `header`
      }
      if (!is.null(`body`)) {
        if (!(is.character(`body`) && length(`body`) == 1)) {
          stop(paste("Error! Invalid data for `body`. Must be a string:", `body`))
        }
        self$`body` <- `body`
      }
      if (!is.null(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return DisclosureSubSection in JSON format
    #' @export
    toJSON = function() {
      DisclosureSubSectionObject <- list()
      if (!is.null(self$`header`)) {
        DisclosureSubSectionObject[["header"]] <-
          self$`header`
      }
      if (!is.null(self$`body`)) {
        DisclosureSubSectionObject[["body"]] <-
          self$`body`
      }
      if (!is.null(self$`type`)) {
        DisclosureSubSectionObject[["type"]] <-
          self$`type`
      }
      DisclosureSubSectionObject
    },
    #' Deserialize JSON string into an instance of DisclosureSubSection
    #'
    #' @description
    #' Deserialize JSON string into an instance of DisclosureSubSection
    #'
    #' @param input_json the JSON input
    #' @return the instance of DisclosureSubSection
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`header`)) {
        self$`header` <- this_object$`header`
      }
      if (!is.null(this_object$`body`)) {
        self$`body` <- this_object$`body`
      }
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return DisclosureSubSection in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`header`)) {
          sprintf(
          '"header":
            "%s"
                    ',
          self$`header`
          )
        },
        if (!is.null(self$`body`)) {
          sprintf(
          '"body":
            "%s"
                    ',
          self$`body`
          )
        },
        if (!is.null(self$`type`)) {
          sprintf(
          '"type":
            "%s"
                    ',
          self$`type`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of DisclosureSubSection
    #'
    #' @description
    #' Deserialize JSON string into an instance of DisclosureSubSection
    #'
    #' @param input_json the JSON input
    #' @return the instance of DisclosureSubSection
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`header` <- this_object$`header`
      self$`body` <- this_object$`body`
      self$`type` <- this_object$`type`
      self
    },
    #' Validate JSON input with respect to DisclosureSubSection
    #'
    #' @description
    #' Validate JSON input with respect to DisclosureSubSection and throw an exception if invalid
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
    #' @return String representation of DisclosureSubSection
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
# DisclosureSubSection$unlock()
#
## Below is an example to define the print function
# DisclosureSubSection$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DisclosureSubSection$lock()

