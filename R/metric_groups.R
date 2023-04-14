#' Create a new MetricGroups
#'
#' @description
#' MetricGroups Class
#'
#' @docType class
#' @title MetricGroups
#' @description MetricGroups Class
#' @format An \code{R6Class} generator object
#' @field face  list(\link{StandardizedMetricDefinition}) [optional]
#' @field footnote  list(\link{StandardizedFootnoteMetricDefinition}) [optional]
#' @field ratio  list(\link{StandardizedMetricDefinition}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MetricGroups <- R6::R6Class(
  "MetricGroups",
  public = list(
    `face` = NULL,
    `footnote` = NULL,
    `ratio` = NULL,
    #' Initialize a new MetricGroups class.
    #'
    #' @description
    #' Initialize a new MetricGroups class.
    #'
    #' @param face face
    #' @param footnote footnote
    #' @param ratio ratio
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`face` = NULL, `footnote` = NULL, `ratio` = NULL, ...) {
      if (!is.null(`face`)) {
        stopifnot(is.vector(`face`), length(`face`) != 0)
        sapply(`face`, function(x) stopifnot(R6::is.R6(x)))
        self$`face` <- `face`
      }
      if (!is.null(`footnote`)) {
        stopifnot(is.vector(`footnote`), length(`footnote`) != 0)
        sapply(`footnote`, function(x) stopifnot(R6::is.R6(x)))
        self$`footnote` <- `footnote`
      }
      if (!is.null(`ratio`)) {
        stopifnot(is.vector(`ratio`), length(`ratio`) != 0)
        sapply(`ratio`, function(x) stopifnot(R6::is.R6(x)))
        self$`ratio` <- `ratio`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return MetricGroups in JSON format
    #' @export
    toJSON = function() {
      MetricGroupsObject <- list()
      if (!is.null(self$`face`)) {
        MetricGroupsObject[["face"]] <-
          lapply(self$`face`, function(x) x$toJSON())
      }
      if (!is.null(self$`footnote`)) {
        MetricGroupsObject[["footnote"]] <-
          lapply(self$`footnote`, function(x) x$toJSON())
      }
      if (!is.null(self$`ratio`)) {
        MetricGroupsObject[["ratio"]] <-
          lapply(self$`ratio`, function(x) x$toJSON())
      }
      MetricGroupsObject
    },
    #' Deserialize JSON string into an instance of MetricGroups
    #'
    #' @description
    #' Deserialize JSON string into an instance of MetricGroups
    #'
    #' @param input_json the JSON input
    #' @return the instance of MetricGroups
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`face`)) {
        self$`face` <- ApiClient$new()$deserializeObj(this_object$`face`, "array[StandardizedMetricDefinition]", loadNamespace("calcbenchR"))
      }
      if (!is.null(this_object$`footnote`)) {
        self$`footnote` <- ApiClient$new()$deserializeObj(this_object$`footnote`, "array[StandardizedFootnoteMetricDefinition]", loadNamespace("calcbenchR"))
      }
      if (!is.null(this_object$`ratio`)) {
        self$`ratio` <- ApiClient$new()$deserializeObj(this_object$`ratio`, "array[StandardizedMetricDefinition]", loadNamespace("calcbenchR"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return MetricGroups in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`face`)) {
          sprintf(
          '"face":
          [%s]
',
          paste(sapply(self$`face`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`footnote`)) {
          sprintf(
          '"footnote":
          [%s]
',
          paste(sapply(self$`footnote`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`ratio`)) {
          sprintf(
          '"ratio":
          [%s]
',
          paste(sapply(self$`ratio`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of MetricGroups
    #'
    #' @description
    #' Deserialize JSON string into an instance of MetricGroups
    #'
    #' @param input_json the JSON input
    #' @return the instance of MetricGroups
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`face` <- ApiClient$new()$deserializeObj(this_object$`face`, "array[StandardizedMetricDefinition]", loadNamespace("calcbenchR"))
      self$`footnote` <- ApiClient$new()$deserializeObj(this_object$`footnote`, "array[StandardizedFootnoteMetricDefinition]", loadNamespace("calcbenchR"))
      self$`ratio` <- ApiClient$new()$deserializeObj(this_object$`ratio`, "array[StandardizedMetricDefinition]", loadNamespace("calcbenchR"))
      self
    },
    #' Validate JSON input with respect to MetricGroups
    #'
    #' @description
    #' Validate JSON input with respect to MetricGroups and throw an exception if invalid
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
    #' @return String representation of MetricGroups
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
# MetricGroups$unlock()
#
## Below is an example to define the print function
# MetricGroups$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MetricGroups$lock()

