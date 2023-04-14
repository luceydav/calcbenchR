#' Create a new FilingsQueryParameters
#'
#' @description
#' FilingsQueryParameters Class
#'
#' @docType class
#' @title FilingsQueryParameters
#' @description FilingsQueryParameters Class
#' @format An \code{R6Class} generator object
#' @field IncludePerformance  character [optional]
#' @field IncludePressReleasesAndProxies  character [optional]
#' @field IncludeNonXBRL  character [optional]
#' @field FilingTypes  list(character) [optional]
#' @field limit  integer [optional]
#' @field metrics  list(character) [optional]
#' @field IncludeXBRL  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FilingsQueryParameters <- R6::R6Class(
  "FilingsQueryParameters",
  public = list(
    `IncludePerformance` = NULL,
    `IncludePressReleasesAndProxies` = NULL,
    `IncludeNonXBRL` = NULL,
    `FilingTypes` = NULL,
    `limit` = NULL,
    `metrics` = NULL,
    `IncludeXBRL` = NULL,
    #' Initialize a new FilingsQueryParameters class.
    #'
    #' @description
    #' Initialize a new FilingsQueryParameters class.
    #'
    #' @param IncludePerformance IncludePerformance
    #' @param IncludePressReleasesAndProxies IncludePressReleasesAndProxies
    #' @param IncludeNonXBRL IncludeNonXBRL
    #' @param FilingTypes FilingTypes
    #' @param limit limit
    #' @param metrics metrics
    #' @param IncludeXBRL IncludeXBRL
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`IncludePerformance` = NULL, `IncludePressReleasesAndProxies` = NULL, `IncludeNonXBRL` = NULL, `FilingTypes` = NULL, `limit` = NULL, `metrics` = NULL, `IncludeXBRL` = NULL, ...) {
      if (!is.null(`IncludePerformance`)) {
        if (!(is.logical(`IncludePerformance`) && length(`IncludePerformance`) == 1)) {
          stop(paste("Error! Invalid data for `IncludePerformance`. Must be a boolean:", `IncludePerformance`))
        }
        self$`IncludePerformance` <- `IncludePerformance`
      }
      if (!is.null(`IncludePressReleasesAndProxies`)) {
        if (!(is.logical(`IncludePressReleasesAndProxies`) && length(`IncludePressReleasesAndProxies`) == 1)) {
          stop(paste("Error! Invalid data for `IncludePressReleasesAndProxies`. Must be a boolean:", `IncludePressReleasesAndProxies`))
        }
        self$`IncludePressReleasesAndProxies` <- `IncludePressReleasesAndProxies`
      }
      if (!is.null(`IncludeNonXBRL`)) {
        if (!(is.logical(`IncludeNonXBRL`) && length(`IncludeNonXBRL`) == 1)) {
          stop(paste("Error! Invalid data for `IncludeNonXBRL`. Must be a boolean:", `IncludeNonXBRL`))
        }
        self$`IncludeNonXBRL` <- `IncludeNonXBRL`
      }
      if (!is.null(`FilingTypes`)) {
        stopifnot(is.vector(`FilingTypes`), length(`FilingTypes`) != 0)
        sapply(`FilingTypes`, function(x) stopifnot(is.character(x)))
        self$`FilingTypes` <- `FilingTypes`
      }
      if (!is.null(`limit`)) {
        if (!(is.numeric(`limit`) && length(`limit`) == 1)) {
          stop(paste("Error! Invalid data for `limit`. Must be an integer:", `limit`))
        }
        self$`limit` <- `limit`
      }
      if (!is.null(`metrics`)) {
        stopifnot(is.vector(`metrics`), length(`metrics`) != 0)
        sapply(`metrics`, function(x) stopifnot(is.character(x)))
        self$`metrics` <- `metrics`
      }
      if (!is.null(`IncludeXBRL`)) {
        if (!(is.logical(`IncludeXBRL`) && length(`IncludeXBRL`) == 1)) {
          stop(paste("Error! Invalid data for `IncludeXBRL`. Must be a boolean:", `IncludeXBRL`))
        }
        self$`IncludeXBRL` <- `IncludeXBRL`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FilingsQueryParameters in JSON format
    #' @export
    toJSON = function() {
      FilingsQueryParametersObject <- list()
      if (!is.null(self$`IncludePerformance`)) {
        FilingsQueryParametersObject[["IncludePerformance"]] <-
          self$`IncludePerformance`
      }
      if (!is.null(self$`IncludePressReleasesAndProxies`)) {
        FilingsQueryParametersObject[["IncludePressReleasesAndProxies"]] <-
          self$`IncludePressReleasesAndProxies`
      }
      if (!is.null(self$`IncludeNonXBRL`)) {
        FilingsQueryParametersObject[["IncludeNonXBRL"]] <-
          self$`IncludeNonXBRL`
      }
      if (!is.null(self$`FilingTypes`)) {
        FilingsQueryParametersObject[["FilingTypes"]] <-
          self$`FilingTypes`
      }
      if (!is.null(self$`limit`)) {
        FilingsQueryParametersObject[["limit"]] <-
          self$`limit`
      }
      if (!is.null(self$`metrics`)) {
        FilingsQueryParametersObject[["metrics"]] <-
          self$`metrics`
      }
      if (!is.null(self$`IncludeXBRL`)) {
        FilingsQueryParametersObject[["IncludeXBRL"]] <-
          self$`IncludeXBRL`
      }
      FilingsQueryParametersObject
    },
    #' Deserialize JSON string into an instance of FilingsQueryParameters
    #'
    #' @description
    #' Deserialize JSON string into an instance of FilingsQueryParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of FilingsQueryParameters
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`IncludePerformance`)) {
        self$`IncludePerformance` <- this_object$`IncludePerformance`
      }
      if (!is.null(this_object$`IncludePressReleasesAndProxies`)) {
        self$`IncludePressReleasesAndProxies` <- this_object$`IncludePressReleasesAndProxies`
      }
      if (!is.null(this_object$`IncludeNonXBRL`)) {
        self$`IncludeNonXBRL` <- this_object$`IncludeNonXBRL`
      }
      if (!is.null(this_object$`FilingTypes`)) {
        self$`FilingTypes` <- ApiClient$new()$deserializeObj(this_object$`FilingTypes`, "array[character]", loadNamespace("calcbenchR"))
      }
      if (!is.null(this_object$`limit`)) {
        self$`limit` <- this_object$`limit`
      }
      if (!is.null(this_object$`metrics`)) {
        self$`metrics` <- ApiClient$new()$deserializeObj(this_object$`metrics`, "array[character]", loadNamespace("calcbenchR"))
      }
      if (!is.null(this_object$`IncludeXBRL`)) {
        self$`IncludeXBRL` <- this_object$`IncludeXBRL`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FilingsQueryParameters in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`IncludePerformance`)) {
          sprintf(
          '"IncludePerformance":
            %s
                    ',
          tolower(self$`IncludePerformance`)
          )
        },
        if (!is.null(self$`IncludePressReleasesAndProxies`)) {
          sprintf(
          '"IncludePressReleasesAndProxies":
            %s
                    ',
          tolower(self$`IncludePressReleasesAndProxies`)
          )
        },
        if (!is.null(self$`IncludeNonXBRL`)) {
          sprintf(
          '"IncludeNonXBRL":
            %s
                    ',
          tolower(self$`IncludeNonXBRL`)
          )
        },
        if (!is.null(self$`FilingTypes`)) {
          sprintf(
          '"FilingTypes":
             [%s]
          ',
          paste(unlist(lapply(self$`FilingTypes`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`limit`)) {
          sprintf(
          '"limit":
            %d
                    ',
          self$`limit`
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
        if (!is.null(self$`IncludeXBRL`)) {
          sprintf(
          '"IncludeXBRL":
            %s
                    ',
          tolower(self$`IncludeXBRL`)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of FilingsQueryParameters
    #'
    #' @description
    #' Deserialize JSON string into an instance of FilingsQueryParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of FilingsQueryParameters
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`IncludePerformance` <- this_object$`IncludePerformance`
      self$`IncludePressReleasesAndProxies` <- this_object$`IncludePressReleasesAndProxies`
      self$`IncludeNonXBRL` <- this_object$`IncludeNonXBRL`
      self$`FilingTypes` <- ApiClient$new()$deserializeObj(this_object$`FilingTypes`, "array[character]", loadNamespace("calcbenchR"))
      self$`limit` <- this_object$`limit`
      self$`metrics` <- ApiClient$new()$deserializeObj(this_object$`metrics`, "array[character]", loadNamespace("calcbenchR"))
      self$`IncludeXBRL` <- this_object$`IncludeXBRL`
      self
    },
    #' Validate JSON input with respect to FilingsQueryParameters
    #'
    #' @description
    #' Validate JSON input with respect to FilingsQueryParameters and throw an exception if invalid
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
    #' @return String representation of FilingsQueryParameters
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
# FilingsQueryParameters$unlock()
#
## Below is an example to define the print function
# FilingsQueryParameters$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FilingsQueryParameters$lock()

