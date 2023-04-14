#' Create a new RawNonXBRLQueryParams
#'
#' @description
#' RawNonXBRLQueryParams Class
#'
#' @docType class
#' @title RawNonXBRLQueryParams
#' @description RawNonXBRLQueryParams Class
#' @format An \code{R6Class} generator object
#' @field Clauses  list(\link{NONxbrlQueryPiece}) [optional]
#' @field QueryID  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RawNonXBRLQueryParams <- R6::R6Class(
  "RawNonXBRLQueryParams",
  public = list(
    `Clauses` = NULL,
    `QueryID` = NULL,
    #' Initialize a new RawNonXBRLQueryParams class.
    #'
    #' @description
    #' Initialize a new RawNonXBRLQueryParams class.
    #'
    #' @param Clauses Clauses
    #' @param QueryID QueryID
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`Clauses` = NULL, `QueryID` = NULL, ...) {
      if (!is.null(`Clauses`)) {
        stopifnot(is.vector(`Clauses`), length(`Clauses`) != 0)
        sapply(`Clauses`, function(x) stopifnot(R6::is.R6(x)))
        self$`Clauses` <- `Clauses`
      }
      if (!is.null(`QueryID`)) {
        if (!(is.character(`QueryID`) && length(`QueryID`) == 1)) {
          stop(paste("Error! Invalid data for `QueryID`. Must be a string:", `QueryID`))
        }
        self$`QueryID` <- `QueryID`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return RawNonXBRLQueryParams in JSON format
    #' @export
    toJSON = function() {
      RawNonXBRLQueryParamsObject <- list()
      if (!is.null(self$`Clauses`)) {
        RawNonXBRLQueryParamsObject[["Clauses"]] <-
          lapply(self$`Clauses`, function(x) x$toJSON())
      }
      if (!is.null(self$`QueryID`)) {
        RawNonXBRLQueryParamsObject[["QueryID"]] <-
          self$`QueryID`
      }
      RawNonXBRLQueryParamsObject
    },
    #' Deserialize JSON string into an instance of RawNonXBRLQueryParams
    #'
    #' @description
    #' Deserialize JSON string into an instance of RawNonXBRLQueryParams
    #'
    #' @param input_json the JSON input
    #' @return the instance of RawNonXBRLQueryParams
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`Clauses`)) {
        self$`Clauses` <- ApiClient$new()$deserializeObj(this_object$`Clauses`, "array[NONxbrlQueryPiece]", loadNamespace("calcbenchR"))
      }
      if (!is.null(this_object$`QueryID`)) {
        self$`QueryID` <- this_object$`QueryID`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return RawNonXBRLQueryParams in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`Clauses`)) {
          sprintf(
          '"Clauses":
          [%s]
',
          paste(sapply(self$`Clauses`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`QueryID`)) {
          sprintf(
          '"QueryID":
            "%s"
                    ',
          self$`QueryID`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of RawNonXBRLQueryParams
    #'
    #' @description
    #' Deserialize JSON string into an instance of RawNonXBRLQueryParams
    #'
    #' @param input_json the JSON input
    #' @return the instance of RawNonXBRLQueryParams
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`Clauses` <- ApiClient$new()$deserializeObj(this_object$`Clauses`, "array[NONxbrlQueryPiece]", loadNamespace("calcbenchR"))
      self$`QueryID` <- this_object$`QueryID`
      self
    },
    #' Validate JSON input with respect to RawNonXBRLQueryParams
    #'
    #' @description
    #' Validate JSON input with respect to RawNonXBRLQueryParams and throw an exception if invalid
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
    #' @return String representation of RawNonXBRLQueryParams
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
# RawNonXBRLQueryParams$unlock()
#
## Below is an example to define the print function
# RawNonXBRLQueryParams$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RawNonXBRLQueryParams$lock()

