#' Create a new StatementsMetaData
#'
#' @description
#' The face statements for a company/period along with some stuff to render the CID page
#'
#' @docType class
#' @title StatementsMetaData
#' @description StatementsMetaData Class
#' @format An \code{R6Class} generator object
#' @field face_statements  list(\link{XBRLstatement}) [optional]
#' @field context  \link{XBRLcontext} [optional]
#' @field quickReportsHTML  character [optional]
#' @field SEClink  character [optional]
#' @field relatedCompanies  list(\link{XBRLcompany}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
StatementsMetaData <- R6::R6Class(
  "StatementsMetaData",
  public = list(
    `face_statements` = NULL,
    `context` = NULL,
    `quickReportsHTML` = NULL,
    `SEClink` = NULL,
    `relatedCompanies` = NULL,
    #' Initialize a new StatementsMetaData class.
    #'
    #' @description
    #' Initialize a new StatementsMetaData class.
    #'
    #' @param face_statements face_statements
    #' @param context context
    #' @param quickReportsHTML quickReportsHTML
    #' @param SEClink SEClink
    #' @param relatedCompanies relatedCompanies
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`face_statements` = NULL, `context` = NULL, `quickReportsHTML` = NULL, `SEClink` = NULL, `relatedCompanies` = NULL, ...) {
      if (!is.null(`face_statements`)) {
        stopifnot(is.vector(`face_statements`), length(`face_statements`) != 0)
        sapply(`face_statements`, function(x) stopifnot(R6::is.R6(x)))
        self$`face_statements` <- `face_statements`
      }
      if (!is.null(`context`)) {
        stopifnot(R6::is.R6(`context`))
        self$`context` <- `context`
      }
      if (!is.null(`quickReportsHTML`)) {
        if (!(is.character(`quickReportsHTML`) && length(`quickReportsHTML`) == 1)) {
          stop(paste("Error! Invalid data for `quickReportsHTML`. Must be a string:", `quickReportsHTML`))
        }
        self$`quickReportsHTML` <- `quickReportsHTML`
      }
      if (!is.null(`SEClink`)) {
        if (!(is.character(`SEClink`) && length(`SEClink`) == 1)) {
          stop(paste("Error! Invalid data for `SEClink`. Must be a string:", `SEClink`))
        }
        self$`SEClink` <- `SEClink`
      }
      if (!is.null(`relatedCompanies`)) {
        stopifnot(is.vector(`relatedCompanies`), length(`relatedCompanies`) != 0)
        sapply(`relatedCompanies`, function(x) stopifnot(R6::is.R6(x)))
        self$`relatedCompanies` <- `relatedCompanies`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return StatementsMetaData in JSON format
    #' @export
    toJSON = function() {
      StatementsMetaDataObject <- list()
      if (!is.null(self$`face_statements`)) {
        StatementsMetaDataObject[["face_statements"]] <-
          lapply(self$`face_statements`, function(x) x$toJSON())
      }
      if (!is.null(self$`context`)) {
        StatementsMetaDataObject[["context"]] <-
          self$`context`$toJSON()
      }
      if (!is.null(self$`quickReportsHTML`)) {
        StatementsMetaDataObject[["quickReportsHTML"]] <-
          self$`quickReportsHTML`
      }
      if (!is.null(self$`SEClink`)) {
        StatementsMetaDataObject[["SEClink"]] <-
          self$`SEClink`
      }
      if (!is.null(self$`relatedCompanies`)) {
        StatementsMetaDataObject[["relatedCompanies"]] <-
          lapply(self$`relatedCompanies`, function(x) x$toJSON())
      }
      StatementsMetaDataObject
    },
    #' Deserialize JSON string into an instance of StatementsMetaData
    #'
    #' @description
    #' Deserialize JSON string into an instance of StatementsMetaData
    #'
    #' @param input_json the JSON input
    #' @return the instance of StatementsMetaData
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`face_statements`)) {
        self$`face_statements` <- ApiClient$new()$deserializeObj(this_object$`face_statements`, "array[XBRLstatement]", loadNamespace("calcbenchR"))
      }
      if (!is.null(this_object$`context`)) {
        `context_object` <- XBRLcontext$new()
        `context_object`$fromJSON(jsonlite::toJSON(this_object$`context`, auto_unbox = TRUE, digits = NA))
        self$`context` <- `context_object`
      }
      if (!is.null(this_object$`quickReportsHTML`)) {
        self$`quickReportsHTML` <- this_object$`quickReportsHTML`
      }
      if (!is.null(this_object$`SEClink`)) {
        self$`SEClink` <- this_object$`SEClink`
      }
      if (!is.null(this_object$`relatedCompanies`)) {
        self$`relatedCompanies` <- ApiClient$new()$deserializeObj(this_object$`relatedCompanies`, "array[XBRLcompany]", loadNamespace("calcbenchR"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return StatementsMetaData in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`face_statements`)) {
          sprintf(
          '"face_statements":
          [%s]
',
          paste(sapply(self$`face_statements`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`context`)) {
          sprintf(
          '"context":
          %s
          ',
          jsonlite::toJSON(self$`context`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`quickReportsHTML`)) {
          sprintf(
          '"quickReportsHTML":
            "%s"
                    ',
          self$`quickReportsHTML`
          )
        },
        if (!is.null(self$`SEClink`)) {
          sprintf(
          '"SEClink":
            "%s"
                    ',
          self$`SEClink`
          )
        },
        if (!is.null(self$`relatedCompanies`)) {
          sprintf(
          '"relatedCompanies":
          [%s]
',
          paste(sapply(self$`relatedCompanies`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of StatementsMetaData
    #'
    #' @description
    #' Deserialize JSON string into an instance of StatementsMetaData
    #'
    #' @param input_json the JSON input
    #' @return the instance of StatementsMetaData
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`face_statements` <- ApiClient$new()$deserializeObj(this_object$`face_statements`, "array[XBRLstatement]", loadNamespace("calcbenchR"))
      self$`context` <- XBRLcontext$new()$fromJSON(jsonlite::toJSON(this_object$`context`, auto_unbox = TRUE, digits = NA))
      self$`quickReportsHTML` <- this_object$`quickReportsHTML`
      self$`SEClink` <- this_object$`SEClink`
      self$`relatedCompanies` <- ApiClient$new()$deserializeObj(this_object$`relatedCompanies`, "array[XBRLcompany]", loadNamespace("calcbenchR"))
      self
    },
    #' Validate JSON input with respect to StatementsMetaData
    #'
    #' @description
    #' Validate JSON input with respect to StatementsMetaData and throw an exception if invalid
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
    #' @return String representation of StatementsMetaData
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
# StatementsMetaData$unlock()
#
## Below is an example to define the print function
# StatementsMetaData$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# StatementsMetaData$lock()

