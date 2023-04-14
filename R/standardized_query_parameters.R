#' Create a new StandardizedQueryParameters
#'
#' @description
#' StandardizedQueryParameters Class
#'
#' @docType class
#' @title StandardizedQueryParameters
#' @description StandardizedQueryParameters Class
#' @format An \code{R6Class} generator object
#' @field pointInTime  character [optional]
#' @field pointInTimeV2  character [optional]
#' @field allFootnotes  character [optional]
#' @field allFace  character [optional]
#' @field includeXBRL  character [optional]
#' @field includePreliminary  character [optional]
#' @field allNonGAAP  character [optional]
#' @field allMetrics  character [optional]
#' @field excludeUnconfirmedPreliminary  character [optional]
#' @field metrics  list(character) [optional]
#' @field includeTrace  character [optional]
#' @field excludeErrors  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
StandardizedQueryParameters <- R6::R6Class(
  "StandardizedQueryParameters",
  public = list(
    `pointInTime` = NULL,
    `pointInTimeV2` = NULL,
    `allFootnotes` = NULL,
    `allFace` = NULL,
    `includeXBRL` = NULL,
    `includePreliminary` = NULL,
    `allNonGAAP` = NULL,
    `allMetrics` = NULL,
    `excludeUnconfirmedPreliminary` = NULL,
    `metrics` = NULL,
    `includeTrace` = NULL,
    `excludeErrors` = NULL,
    #' Initialize a new StandardizedQueryParameters class.
    #'
    #' @description
    #' Initialize a new StandardizedQueryParameters class.
    #'
    #' @param pointInTime pointInTime
    #' @param pointInTimeV2 pointInTimeV2
    #' @param allFootnotes allFootnotes
    #' @param allFace allFace
    #' @param includeXBRL includeXBRL
    #' @param includePreliminary includePreliminary
    #' @param allNonGAAP allNonGAAP
    #' @param allMetrics allMetrics
    #' @param excludeUnconfirmedPreliminary excludeUnconfirmedPreliminary
    #' @param metrics metrics
    #' @param includeTrace includeTrace
    #' @param excludeErrors excludeErrors
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`pointInTime` = NULL, `pointInTimeV2` = NULL, `allFootnotes` = NULL, `allFace` = NULL, `includeXBRL` = NULL, `includePreliminary` = NULL, `allNonGAAP` = NULL, `allMetrics` = NULL, `excludeUnconfirmedPreliminary` = NULL, `metrics` = NULL, `includeTrace` = NULL, `excludeErrors` = NULL, ...) {
      if (!is.null(`pointInTime`)) {
        if (!(is.logical(`pointInTime`) && length(`pointInTime`) == 1)) {
          stop(paste("Error! Invalid data for `pointInTime`. Must be a boolean:", `pointInTime`))
        }
        self$`pointInTime` <- `pointInTime`
      }
      if (!is.null(`pointInTimeV2`)) {
        if (!(is.logical(`pointInTimeV2`) && length(`pointInTimeV2`) == 1)) {
          stop(paste("Error! Invalid data for `pointInTimeV2`. Must be a boolean:", `pointInTimeV2`))
        }
        self$`pointInTimeV2` <- `pointInTimeV2`
      }
      if (!is.null(`allFootnotes`)) {
        if (!(is.logical(`allFootnotes`) && length(`allFootnotes`) == 1)) {
          stop(paste("Error! Invalid data for `allFootnotes`. Must be a boolean:", `allFootnotes`))
        }
        self$`allFootnotes` <- `allFootnotes`
      }
      if (!is.null(`allFace`)) {
        if (!(is.logical(`allFace`) && length(`allFace`) == 1)) {
          stop(paste("Error! Invalid data for `allFace`. Must be a boolean:", `allFace`))
        }
        self$`allFace` <- `allFace`
      }
      if (!is.null(`includeXBRL`)) {
        if (!(is.logical(`includeXBRL`) && length(`includeXBRL`) == 1)) {
          stop(paste("Error! Invalid data for `includeXBRL`. Must be a boolean:", `includeXBRL`))
        }
        self$`includeXBRL` <- `includeXBRL`
      }
      if (!is.null(`includePreliminary`)) {
        if (!(is.logical(`includePreliminary`) && length(`includePreliminary`) == 1)) {
          stop(paste("Error! Invalid data for `includePreliminary`. Must be a boolean:", `includePreliminary`))
        }
        self$`includePreliminary` <- `includePreliminary`
      }
      if (!is.null(`allNonGAAP`)) {
        if (!(is.logical(`allNonGAAP`) && length(`allNonGAAP`) == 1)) {
          stop(paste("Error! Invalid data for `allNonGAAP`. Must be a boolean:", `allNonGAAP`))
        }
        self$`allNonGAAP` <- `allNonGAAP`
      }
      if (!is.null(`allMetrics`)) {
        if (!(is.logical(`allMetrics`) && length(`allMetrics`) == 1)) {
          stop(paste("Error! Invalid data for `allMetrics`. Must be a boolean:", `allMetrics`))
        }
        self$`allMetrics` <- `allMetrics`
      }
      if (!is.null(`excludeUnconfirmedPreliminary`)) {
        if (!(is.logical(`excludeUnconfirmedPreliminary`) && length(`excludeUnconfirmedPreliminary`) == 1)) {
          stop(paste("Error! Invalid data for `excludeUnconfirmedPreliminary`. Must be a boolean:", `excludeUnconfirmedPreliminary`))
        }
        self$`excludeUnconfirmedPreliminary` <- `excludeUnconfirmedPreliminary`
      }
      if (!is.null(`metrics`)) {
        stopifnot(is.vector(`metrics`), length(`metrics`) != 0)
        sapply(`metrics`, function(x) stopifnot(is.character(x)))
        self$`metrics` <- `metrics`
      }
      if (!is.null(`includeTrace`)) {
        if (!(is.logical(`includeTrace`) && length(`includeTrace`) == 1)) {
          stop(paste("Error! Invalid data for `includeTrace`. Must be a boolean:", `includeTrace`))
        }
        self$`includeTrace` <- `includeTrace`
      }
      if (!is.null(`excludeErrors`)) {
        if (!(is.logical(`excludeErrors`) && length(`excludeErrors`) == 1)) {
          stop(paste("Error! Invalid data for `excludeErrors`. Must be a boolean:", `excludeErrors`))
        }
        self$`excludeErrors` <- `excludeErrors`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return StandardizedQueryParameters in JSON format
    #' @export
    toJSON = function() {
      StandardizedQueryParametersObject <- list()
      if (!is.null(self$`pointInTime`)) {
        StandardizedQueryParametersObject[["pointInTime"]] <-
          self$`pointInTime`
      }
      if (!is.null(self$`pointInTimeV2`)) {
        StandardizedQueryParametersObject[["pointInTimeV2"]] <-
          self$`pointInTimeV2`
      }
      if (!is.null(self$`allFootnotes`)) {
        StandardizedQueryParametersObject[["allFootnotes"]] <-
          self$`allFootnotes`
      }
      if (!is.null(self$`allFace`)) {
        StandardizedQueryParametersObject[["allFace"]] <-
          self$`allFace`
      }
      if (!is.null(self$`includeXBRL`)) {
        StandardizedQueryParametersObject[["includeXBRL"]] <-
          self$`includeXBRL`
      }
      if (!is.null(self$`includePreliminary`)) {
        StandardizedQueryParametersObject[["includePreliminary"]] <-
          self$`includePreliminary`
      }
      if (!is.null(self$`allNonGAAP`)) {
        StandardizedQueryParametersObject[["allNonGAAP"]] <-
          self$`allNonGAAP`
      }
      if (!is.null(self$`allMetrics`)) {
        StandardizedQueryParametersObject[["allMetrics"]] <-
          self$`allMetrics`
      }
      if (!is.null(self$`excludeUnconfirmedPreliminary`)) {
        StandardizedQueryParametersObject[["excludeUnconfirmedPreliminary"]] <-
          self$`excludeUnconfirmedPreliminary`
      }
      if (!is.null(self$`metrics`)) {
        StandardizedQueryParametersObject[["metrics"]] <-
          self$`metrics`
      }
      if (!is.null(self$`includeTrace`)) {
        StandardizedQueryParametersObject[["includeTrace"]] <-
          self$`includeTrace`
      }
      if (!is.null(self$`excludeErrors`)) {
        StandardizedQueryParametersObject[["excludeErrors"]] <-
          self$`excludeErrors`
      }
      StandardizedQueryParametersObject
    },
    #' Deserialize JSON string into an instance of StandardizedQueryParameters
    #'
    #' @description
    #' Deserialize JSON string into an instance of StandardizedQueryParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of StandardizedQueryParameters
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`pointInTime`)) {
        self$`pointInTime` <- this_object$`pointInTime`
      }
      if (!is.null(this_object$`pointInTimeV2`)) {
        self$`pointInTimeV2` <- this_object$`pointInTimeV2`
      }
      if (!is.null(this_object$`allFootnotes`)) {
        self$`allFootnotes` <- this_object$`allFootnotes`
      }
      if (!is.null(this_object$`allFace`)) {
        self$`allFace` <- this_object$`allFace`
      }
      if (!is.null(this_object$`includeXBRL`)) {
        self$`includeXBRL` <- this_object$`includeXBRL`
      }
      if (!is.null(this_object$`includePreliminary`)) {
        self$`includePreliminary` <- this_object$`includePreliminary`
      }
      if (!is.null(this_object$`allNonGAAP`)) {
        self$`allNonGAAP` <- this_object$`allNonGAAP`
      }
      if (!is.null(this_object$`allMetrics`)) {
        self$`allMetrics` <- this_object$`allMetrics`
      }
      if (!is.null(this_object$`excludeUnconfirmedPreliminary`)) {
        self$`excludeUnconfirmedPreliminary` <- this_object$`excludeUnconfirmedPreliminary`
      }
      if (!is.null(this_object$`metrics`)) {
        self$`metrics` <- ApiClient$new()$deserializeObj(this_object$`metrics`, "array[character]", loadNamespace("calcbenchR"))
      }
      if (!is.null(this_object$`includeTrace`)) {
        self$`includeTrace` <- this_object$`includeTrace`
      }
      if (!is.null(this_object$`excludeErrors`)) {
        self$`excludeErrors` <- this_object$`excludeErrors`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return StandardizedQueryParameters in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`pointInTime`)) {
          sprintf(
          '"pointInTime":
            %s
                    ',
          tolower(self$`pointInTime`)
          )
        },
        if (!is.null(self$`pointInTimeV2`)) {
          sprintf(
          '"pointInTimeV2":
            %s
                    ',
          tolower(self$`pointInTimeV2`)
          )
        },
        if (!is.null(self$`allFootnotes`)) {
          sprintf(
          '"allFootnotes":
            %s
                    ',
          tolower(self$`allFootnotes`)
          )
        },
        if (!is.null(self$`allFace`)) {
          sprintf(
          '"allFace":
            %s
                    ',
          tolower(self$`allFace`)
          )
        },
        if (!is.null(self$`includeXBRL`)) {
          sprintf(
          '"includeXBRL":
            %s
                    ',
          tolower(self$`includeXBRL`)
          )
        },
        if (!is.null(self$`includePreliminary`)) {
          sprintf(
          '"includePreliminary":
            %s
                    ',
          tolower(self$`includePreliminary`)
          )
        },
        if (!is.null(self$`allNonGAAP`)) {
          sprintf(
          '"allNonGAAP":
            %s
                    ',
          tolower(self$`allNonGAAP`)
          )
        },
        if (!is.null(self$`allMetrics`)) {
          sprintf(
          '"allMetrics":
            %s
                    ',
          tolower(self$`allMetrics`)
          )
        },
        if (!is.null(self$`excludeUnconfirmedPreliminary`)) {
          sprintf(
          '"excludeUnconfirmedPreliminary":
            %s
                    ',
          tolower(self$`excludeUnconfirmedPreliminary`)
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
        if (!is.null(self$`includeTrace`)) {
          sprintf(
          '"includeTrace":
            %s
                    ',
          tolower(self$`includeTrace`)
          )
        },
        if (!is.null(self$`excludeErrors`)) {
          sprintf(
          '"excludeErrors":
            %s
                    ',
          tolower(self$`excludeErrors`)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of StandardizedQueryParameters
    #'
    #' @description
    #' Deserialize JSON string into an instance of StandardizedQueryParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of StandardizedQueryParameters
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`pointInTime` <- this_object$`pointInTime`
      self$`pointInTimeV2` <- this_object$`pointInTimeV2`
      self$`allFootnotes` <- this_object$`allFootnotes`
      self$`allFace` <- this_object$`allFace`
      self$`includeXBRL` <- this_object$`includeXBRL`
      self$`includePreliminary` <- this_object$`includePreliminary`
      self$`allNonGAAP` <- this_object$`allNonGAAP`
      self$`allMetrics` <- this_object$`allMetrics`
      self$`excludeUnconfirmedPreliminary` <- this_object$`excludeUnconfirmedPreliminary`
      self$`metrics` <- ApiClient$new()$deserializeObj(this_object$`metrics`, "array[character]", loadNamespace("calcbenchR"))
      self$`includeTrace` <- this_object$`includeTrace`
      self$`excludeErrors` <- this_object$`excludeErrors`
      self
    },
    #' Validate JSON input with respect to StandardizedQueryParameters
    #'
    #' @description
    #' Validate JSON input with respect to StandardizedQueryParameters and throw an exception if invalid
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
    #' @return String representation of StandardizedQueryParameters
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
# StandardizedQueryParameters$unlock()
#
## Below is an example to define the print function
# StandardizedQueryParameters$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# StandardizedQueryParameters$lock()

