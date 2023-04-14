#' Create a new XBRLTagQueryParameters
#'
#' @description
#' XBRLTagQueryParameters Class
#'
#' @docType class
#' @title XBRLTagQueryParameters
#' @description XBRLTagQueryParameters Class
#' @format An \code{R6Class} generator object
#' @field tags  list(character) [optional]
#' @field metrics  list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
XBRLTagQueryParameters <- R6::R6Class(
  "XBRLTagQueryParameters",
  public = list(
    `tags` = NULL,
    `metrics` = NULL,
    #' Initialize a new XBRLTagQueryParameters class.
    #'
    #' @description
    #' Initialize a new XBRLTagQueryParameters class.
    #'
    #' @param tags tags
    #' @param metrics metrics
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`tags` = NULL, `metrics` = NULL, ...) {
      if (!is.null(`tags`)) {
        stopifnot(is.vector(`tags`), length(`tags`) != 0)
        sapply(`tags`, function(x) stopifnot(is.character(x)))
        self$`tags` <- `tags`
      }
      if (!is.null(`metrics`)) {
        stopifnot(is.vector(`metrics`), length(`metrics`) != 0)
        sapply(`metrics`, function(x) stopifnot(is.character(x)))
        self$`metrics` <- `metrics`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return XBRLTagQueryParameters in JSON format
    #' @export
    toJSON = function() {
      XBRLTagQueryParametersObject <- list()
      if (!is.null(self$`tags`)) {
        XBRLTagQueryParametersObject[["tags"]] <-
          self$`tags`
      }
      if (!is.null(self$`metrics`)) {
        XBRLTagQueryParametersObject[["metrics"]] <-
          self$`metrics`
      }
      XBRLTagQueryParametersObject
    },
    #' Deserialize JSON string into an instance of XBRLTagQueryParameters
    #'
    #' @description
    #' Deserialize JSON string into an instance of XBRLTagQueryParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of XBRLTagQueryParameters
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`tags`)) {
        self$`tags` <- ApiClient$new()$deserializeObj(this_object$`tags`, "array[character]", loadNamespace("calcbenchR"))
      }
      if (!is.null(this_object$`metrics`)) {
        self$`metrics` <- ApiClient$new()$deserializeObj(this_object$`metrics`, "array[character]", loadNamespace("calcbenchR"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return XBRLTagQueryParameters in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`tags`)) {
          sprintf(
          '"tags":
             [%s]
          ',
          paste(unlist(lapply(self$`tags`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`metrics`)) {
          sprintf(
          '"metrics":
             [%s]
          ',
          paste(unlist(lapply(self$`metrics`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of XBRLTagQueryParameters
    #'
    #' @description
    #' Deserialize JSON string into an instance of XBRLTagQueryParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of XBRLTagQueryParameters
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`tags` <- ApiClient$new()$deserializeObj(this_object$`tags`, "array[character]", loadNamespace("calcbenchR"))
      self$`metrics` <- ApiClient$new()$deserializeObj(this_object$`metrics`, "array[character]", loadNamespace("calcbenchR"))
      self
    },
    #' Validate JSON input with respect to XBRLTagQueryParameters
    #'
    #' @description
    #' Validate JSON input with respect to XBRLTagQueryParameters and throw an exception if invalid
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
    #' @return String representation of XBRLTagQueryParameters
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
# XBRLTagQueryParameters$unlock()
#
## Below is an example to define the print function
# XBRLTagQueryParameters$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# XBRLTagQueryParameters$lock()

