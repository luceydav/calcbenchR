#' Create a new FootnoteQueryResponse
#'
#' @description
#' FootnoteQueryResponse Class
#'
#' @docType class
#' @title FootnoteQueryResponse
#' @description FootnoteQueryResponse Class
#' @format An \code{R6Class} generator object
#' @field footnotes Matching disclosures list(\link{TextFootnote}) [optional]
#' @field nextGroupStartEntityID  integer [optional]
#' @field nextGroupStartOffset  integer [optional]
#' @field moreResults  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FootnoteQueryResponse <- R6::R6Class(
  "FootnoteQueryResponse",
  public = list(
    `footnotes` = NULL,
    `nextGroupStartEntityID` = NULL,
    `nextGroupStartOffset` = NULL,
    `moreResults` = NULL,
    #' Initialize a new FootnoteQueryResponse class.
    #'
    #' @description
    #' Initialize a new FootnoteQueryResponse class.
    #'
    #' @param footnotes Matching disclosures
    #' @param nextGroupStartEntityID nextGroupStartEntityID
    #' @param nextGroupStartOffset nextGroupStartOffset
    #' @param moreResults moreResults
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`footnotes` = NULL, `nextGroupStartEntityID` = NULL, `nextGroupStartOffset` = NULL, `moreResults` = NULL, ...) {
      if (!is.null(`footnotes`)) {
        stopifnot(is.vector(`footnotes`), length(`footnotes`) != 0)
        sapply(`footnotes`, function(x) stopifnot(R6::is.R6(x)))
        self$`footnotes` <- `footnotes`
      }
      if (!is.null(`nextGroupStartEntityID`)) {
        if (!(is.numeric(`nextGroupStartEntityID`) && length(`nextGroupStartEntityID`) == 1)) {
          stop(paste("Error! Invalid data for `nextGroupStartEntityID`. Must be an integer:", `nextGroupStartEntityID`))
        }
        self$`nextGroupStartEntityID` <- `nextGroupStartEntityID`
      }
      if (!is.null(`nextGroupStartOffset`)) {
        if (!(is.numeric(`nextGroupStartOffset`) && length(`nextGroupStartOffset`) == 1)) {
          stop(paste("Error! Invalid data for `nextGroupStartOffset`. Must be an integer:", `nextGroupStartOffset`))
        }
        self$`nextGroupStartOffset` <- `nextGroupStartOffset`
      }
      if (!is.null(`moreResults`)) {
        if (!(is.logical(`moreResults`) && length(`moreResults`) == 1)) {
          stop(paste("Error! Invalid data for `moreResults`. Must be a boolean:", `moreResults`))
        }
        self$`moreResults` <- `moreResults`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FootnoteQueryResponse in JSON format
    #' @export
    toJSON = function() {
      FootnoteQueryResponseObject <- list()
      if (!is.null(self$`footnotes`)) {
        FootnoteQueryResponseObject[["footnotes"]] <-
          lapply(self$`footnotes`, function(x) x$toJSON())
      }
      if (!is.null(self$`nextGroupStartEntityID`)) {
        FootnoteQueryResponseObject[["nextGroupStartEntityID"]] <-
          self$`nextGroupStartEntityID`
      }
      if (!is.null(self$`nextGroupStartOffset`)) {
        FootnoteQueryResponseObject[["nextGroupStartOffset"]] <-
          self$`nextGroupStartOffset`
      }
      if (!is.null(self$`moreResults`)) {
        FootnoteQueryResponseObject[["moreResults"]] <-
          self$`moreResults`
      }
      FootnoteQueryResponseObject
    },
    #' Deserialize JSON string into an instance of FootnoteQueryResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of FootnoteQueryResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of FootnoteQueryResponse
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`footnotes`)) {
        self$`footnotes` <- ApiClient$new()$deserializeObj(this_object$`footnotes`, "array[TextFootnote]", loadNamespace("calcbenchR"))
      }
      if (!is.null(this_object$`nextGroupStartEntityID`)) {
        self$`nextGroupStartEntityID` <- this_object$`nextGroupStartEntityID`
      }
      if (!is.null(this_object$`nextGroupStartOffset`)) {
        self$`nextGroupStartOffset` <- this_object$`nextGroupStartOffset`
      }
      if (!is.null(this_object$`moreResults`)) {
        self$`moreResults` <- this_object$`moreResults`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FootnoteQueryResponse in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`footnotes`)) {
          sprintf(
          '"footnotes":
          [%s]
',
          paste(sapply(self$`footnotes`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`nextGroupStartEntityID`)) {
          sprintf(
          '"nextGroupStartEntityID":
            %d
                    ',
          self$`nextGroupStartEntityID`
          )
        },
        if (!is.null(self$`nextGroupStartOffset`)) {
          sprintf(
          '"nextGroupStartOffset":
            %d
                    ',
          self$`nextGroupStartOffset`
          )
        },
        if (!is.null(self$`moreResults`)) {
          sprintf(
          '"moreResults":
            %s
                    ',
          tolower(self$`moreResults`)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of FootnoteQueryResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of FootnoteQueryResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of FootnoteQueryResponse
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`footnotes` <- ApiClient$new()$deserializeObj(this_object$`footnotes`, "array[TextFootnote]", loadNamespace("calcbenchR"))
      self$`nextGroupStartEntityID` <- this_object$`nextGroupStartEntityID`
      self$`nextGroupStartOffset` <- this_object$`nextGroupStartOffset`
      self$`moreResults` <- this_object$`moreResults`
      self
    },
    #' Validate JSON input with respect to FootnoteQueryResponse
    #'
    #' @description
    #' Validate JSON input with respect to FootnoteQueryResponse and throw an exception if invalid
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
    #' @return String representation of FootnoteQueryResponse
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
# FootnoteQueryResponse$unlock()
#
## Below is an example to define the print function
# FootnoteQueryResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FootnoteQueryResponse$lock()

