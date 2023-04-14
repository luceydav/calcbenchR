#' Create a new DimensionalQueryParameters
#'
#' @description
#' DimensionalQueryParameters Class
#'
#' @docType class
#' @title DimensionalQueryParameters
#' @description DimensionalQueryParameters Class
#' @format An \code{R6Class} generator object
#' @field searchTerms  character [optional]
#' @field metrics  list(character) [optional]
#' @field filterValue  numeric [optional]
#' @field filterOperator  integer [optional]
#' @field queryID  character [optional]
#' @field AsOriginallyReported Show the first reported, rather than revised, values character [optional]
#' @field dimensionName  character [optional]
#' @field dataSet  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DimensionalQueryParameters <- R6::R6Class(
  "DimensionalQueryParameters",
  public = list(
    `searchTerms` = NULL,
    `metrics` = NULL,
    `filterValue` = NULL,
    `filterOperator` = NULL,
    `queryID` = NULL,
    `AsOriginallyReported` = NULL,
    `dimensionName` = NULL,
    `dataSet` = NULL,
    #' Initialize a new DimensionalQueryParameters class.
    #'
    #' @description
    #' Initialize a new DimensionalQueryParameters class.
    #'
    #' @param searchTerms searchTerms
    #' @param metrics metrics
    #' @param filterValue filterValue
    #' @param filterOperator filterOperator
    #' @param queryID queryID
    #' @param AsOriginallyReported Show the first reported, rather than revised, values
    #' @param dimensionName dimensionName
    #' @param dataSet dataSet
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`searchTerms` = NULL, `metrics` = NULL, `filterValue` = NULL, `filterOperator` = NULL, `queryID` = NULL, `AsOriginallyReported` = NULL, `dimensionName` = NULL, `dataSet` = NULL, ...) {
      if (!is.null(`searchTerms`)) {
        if (!(is.character(`searchTerms`) && length(`searchTerms`) == 1)) {
          stop(paste("Error! Invalid data for `searchTerms`. Must be a string:", `searchTerms`))
        }
        self$`searchTerms` <- `searchTerms`
      }
      if (!is.null(`metrics`)) {
        stopifnot(is.vector(`metrics`), length(`metrics`) != 0)
        sapply(`metrics`, function(x) stopifnot(is.character(x)))
        self$`metrics` <- `metrics`
      }
      if (!is.null(`filterValue`)) {
        if (!(is.numeric(`filterValue`) && length(`filterValue`) == 1)) {
          stop(paste("Error! Invalid data for `filterValue`. Must be a number:", `filterValue`))
        }
        self$`filterValue` <- `filterValue`
      }
      if (!is.null(`filterOperator`)) {
        if (!(is.numeric(`filterOperator`) && length(`filterOperator`) == 1)) {
          stop(paste("Error! Invalid data for `filterOperator`. Must be an integer:", `filterOperator`))
        }
        self$`filterOperator` <- `filterOperator`
      }
      if (!is.null(`queryID`)) {
        if (!(is.character(`queryID`) && length(`queryID`) == 1)) {
          stop(paste("Error! Invalid data for `queryID`. Must be a string:", `queryID`))
        }
        self$`queryID` <- `queryID`
      }
      if (!is.null(`AsOriginallyReported`)) {
        if (!(is.logical(`AsOriginallyReported`) && length(`AsOriginallyReported`) == 1)) {
          stop(paste("Error! Invalid data for `AsOriginallyReported`. Must be a boolean:", `AsOriginallyReported`))
        }
        self$`AsOriginallyReported` <- `AsOriginallyReported`
      }
      if (!is.null(`dimensionName`)) {
        if (!(is.character(`dimensionName`) && length(`dimensionName`) == 1)) {
          stop(paste("Error! Invalid data for `dimensionName`. Must be a string:", `dimensionName`))
        }
        self$`dimensionName` <- `dimensionName`
      }
      if (!is.null(`dataSet`)) {
        if (!(is.character(`dataSet`) && length(`dataSet`) == 1)) {
          stop(paste("Error! Invalid data for `dataSet`. Must be a string:", `dataSet`))
        }
        self$`dataSet` <- `dataSet`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return DimensionalQueryParameters in JSON format
    #' @export
    toJSON = function() {
      DimensionalQueryParametersObject <- list()
      if (!is.null(self$`searchTerms`)) {
        DimensionalQueryParametersObject[["searchTerms"]] <-
          self$`searchTerms`
      }
      if (!is.null(self$`metrics`)) {
        DimensionalQueryParametersObject[["metrics"]] <-
          self$`metrics`
      }
      if (!is.null(self$`filterValue`)) {
        DimensionalQueryParametersObject[["filterValue"]] <-
          self$`filterValue`
      }
      if (!is.null(self$`filterOperator`)) {
        DimensionalQueryParametersObject[["filterOperator"]] <-
          self$`filterOperator`
      }
      if (!is.null(self$`queryID`)) {
        DimensionalQueryParametersObject[["queryID"]] <-
          self$`queryID`
      }
      if (!is.null(self$`AsOriginallyReported`)) {
        DimensionalQueryParametersObject[["AsOriginallyReported"]] <-
          self$`AsOriginallyReported`
      }
      if (!is.null(self$`dimensionName`)) {
        DimensionalQueryParametersObject[["dimensionName"]] <-
          self$`dimensionName`
      }
      if (!is.null(self$`dataSet`)) {
        DimensionalQueryParametersObject[["dataSet"]] <-
          self$`dataSet`
      }
      DimensionalQueryParametersObject
    },
    #' Deserialize JSON string into an instance of DimensionalQueryParameters
    #'
    #' @description
    #' Deserialize JSON string into an instance of DimensionalQueryParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of DimensionalQueryParameters
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`searchTerms`)) {
        self$`searchTerms` <- this_object$`searchTerms`
      }
      if (!is.null(this_object$`metrics`)) {
        self$`metrics` <- ApiClient$new()$deserializeObj(this_object$`metrics`, "array[character]", loadNamespace("calcbenchR"))
      }
      if (!is.null(this_object$`filterValue`)) {
        self$`filterValue` <- this_object$`filterValue`
      }
      if (!is.null(this_object$`filterOperator`)) {
        self$`filterOperator` <- this_object$`filterOperator`
      }
      if (!is.null(this_object$`queryID`)) {
        self$`queryID` <- this_object$`queryID`
      }
      if (!is.null(this_object$`AsOriginallyReported`)) {
        self$`AsOriginallyReported` <- this_object$`AsOriginallyReported`
      }
      if (!is.null(this_object$`dimensionName`)) {
        self$`dimensionName` <- this_object$`dimensionName`
      }
      if (!is.null(this_object$`dataSet`)) {
        self$`dataSet` <- this_object$`dataSet`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return DimensionalQueryParameters in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`searchTerms`)) {
          sprintf(
          '"searchTerms":
            "%s"
                    ',
          self$`searchTerms`
          )
        },
        if (!is.null(self$`metrics`)) {
          sprintf(
          '"metrics":
             [%s]
          ',
          paste(unlist(lapply(self$`metrics`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`filterValue`)) {
          sprintf(
          '"filterValue":
            %d
                    ',
          self$`filterValue`
          )
        },
        if (!is.null(self$`filterOperator`)) {
          sprintf(
          '"filterOperator":
            %d
                    ',
          self$`filterOperator`
          )
        },
        if (!is.null(self$`queryID`)) {
          sprintf(
          '"queryID":
            "%s"
                    ',
          self$`queryID`
          )
        },
        if (!is.null(self$`AsOriginallyReported`)) {
          sprintf(
          '"AsOriginallyReported":
            %s
                    ',
          tolower(self$`AsOriginallyReported`)
          )
        },
        if (!is.null(self$`dimensionName`)) {
          sprintf(
          '"dimensionName":
            "%s"
                    ',
          self$`dimensionName`
          )
        },
        if (!is.null(self$`dataSet`)) {
          sprintf(
          '"dataSet":
            "%s"
                    ',
          self$`dataSet`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of DimensionalQueryParameters
    #'
    #' @description
    #' Deserialize JSON string into an instance of DimensionalQueryParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of DimensionalQueryParameters
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`searchTerms` <- this_object$`searchTerms`
      self$`metrics` <- ApiClient$new()$deserializeObj(this_object$`metrics`, "array[character]", loadNamespace("calcbenchR"))
      self$`filterValue` <- this_object$`filterValue`
      self$`filterOperator` <- this_object$`filterOperator`
      self$`queryID` <- this_object$`queryID`
      self$`AsOriginallyReported` <- this_object$`AsOriginallyReported`
      self$`dimensionName` <- this_object$`dimensionName`
      self$`dataSet` <- this_object$`dataSet`
      self
    },
    #' Validate JSON input with respect to DimensionalQueryParameters
    #'
    #' @description
    #' Validate JSON input with respect to DimensionalQueryParameters and throw an exception if invalid
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
    #' @return String representation of DimensionalQueryParameters
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
# DimensionalQueryParameters$unlock()
#
## Below is an example to define the print function
# DimensionalQueryParameters$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DimensionalQueryParameters$lock()

