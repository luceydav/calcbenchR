#' Create a new PeriodParameters
#'
#' @description
#' PeriodParameters Class
#'
#' @docType class
#' @title PeriodParameters
#' @description PeriodParameters Class
#' @format An \code{R6Class} generator object
#' @field year  integer [optional]
#' @field period  character [optional]
#' @field endYear  integer [optional]
#' @field endPeriod  character [optional]
#' @field periodType  character [optional]
#' @field useFiscalPeriod  character [optional]
#' @field dateRange  \link{DateRange} [optional]
#' @field allHistory  character [optional]
#' @field updateDate  character [optional]
#' @field updatedFrom  character [optional]
#' @field asOriginallyReported  character [optional]
#' @field accessionID  integer [optional]
#' @field filingID  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PeriodParameters <- R6::R6Class(
  "PeriodParameters",
  public = list(
    `year` = NULL,
    `period` = NULL,
    `endYear` = NULL,
    `endPeriod` = NULL,
    `periodType` = NULL,
    `useFiscalPeriod` = NULL,
    `dateRange` = NULL,
    `allHistory` = NULL,
    `updateDate` = NULL,
    `updatedFrom` = NULL,
    `asOriginallyReported` = NULL,
    `accessionID` = NULL,
    `filingID` = NULL,
    #' Initialize a new PeriodParameters class.
    #'
    #' @description
    #' Initialize a new PeriodParameters class.
    #'
    #' @param year year
    #' @param period period
    #' @param endYear endYear
    #' @param endPeriod endPeriod
    #' @param periodType periodType
    #' @param useFiscalPeriod useFiscalPeriod
    #' @param dateRange dateRange
    #' @param allHistory allHistory
    #' @param updateDate updateDate
    #' @param updatedFrom updatedFrom
    #' @param asOriginallyReported asOriginallyReported
    #' @param accessionID accessionID
    #' @param filingID filingID
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`year` = NULL, `period` = NULL, `endYear` = NULL, `endPeriod` = NULL, `periodType` = NULL, `useFiscalPeriod` = NULL, `dateRange` = NULL, `allHistory` = NULL, `updateDate` = NULL, `updatedFrom` = NULL, `asOriginallyReported` = NULL, `accessionID` = NULL, `filingID` = NULL, ...) {
      if (!is.null(`year`)) {
        if (!(is.numeric(`year`) && length(`year`) == 1)) {
          stop(paste("Error! Invalid data for `year`. Must be an integer:", `year`))
        }
        self$`year` <- `year`
      }
      if (!is.null(`period`)) {
        if (!(`period` %in% c("unset", "y", "q1", "q2", "q3", "q4", "h1", "Q3Cum", "TTM", "MRQ", "MRQ_fiscal", "MRCumulative", "year_fiscal", "combined", "allHistory", "MostRecentPeriod", "DateRange"))) {
          stop(paste("Error! \"", `period`, "\" cannot be assigned to `period`. Must be \"unset\", \"y\", \"q1\", \"q2\", \"q3\", \"q4\", \"h1\", \"Q3Cum\", \"TTM\", \"MRQ\", \"MRQ_fiscal\", \"MRCumulative\", \"year_fiscal\", \"combined\", \"allHistory\", \"MostRecentPeriod\", \"DateRange\".", sep = ""))
        }
        if (!(is.character(`period`) && length(`period`) == 1)) {
          stop(paste("Error! Invalid data for `period`. Must be a string:", `period`))
        }
        self$`period` <- `period`
      }
      if (!is.null(`endYear`)) {
        if (!(is.numeric(`endYear`) && length(`endYear`) == 1)) {
          stop(paste("Error! Invalid data for `endYear`. Must be an integer:", `endYear`))
        }
        self$`endYear` <- `endYear`
      }
      if (!is.null(`endPeriod`)) {
        if (!(`endPeriod` %in% c("unset", "y", "q1", "q2", "q3", "q4", "h1", "Q3Cum", "TTM", "MRQ", "MRQ_fiscal", "MRCumulative", "year_fiscal", "combined", "allHistory", "MostRecentPeriod", "DateRange"))) {
          stop(paste("Error! \"", `endPeriod`, "\" cannot be assigned to `endPeriod`. Must be \"unset\", \"y\", \"q1\", \"q2\", \"q3\", \"q4\", \"h1\", \"Q3Cum\", \"TTM\", \"MRQ\", \"MRQ_fiscal\", \"MRCumulative\", \"year_fiscal\", \"combined\", \"allHistory\", \"MostRecentPeriod\", \"DateRange\".", sep = ""))
        }
        if (!(is.character(`endPeriod`) && length(`endPeriod`) == 1)) {
          stop(paste("Error! Invalid data for `endPeriod`. Must be a string:", `endPeriod`))
        }
        self$`endPeriod` <- `endPeriod`
      }
      if (!is.null(`periodType`)) {
        if (!(is.character(`periodType`) && length(`periodType`) == 1)) {
          stop(paste("Error! Invalid data for `periodType`. Must be a string:", `periodType`))
        }
        self$`periodType` <- `periodType`
      }
      if (!is.null(`useFiscalPeriod`)) {
        if (!(is.logical(`useFiscalPeriod`) && length(`useFiscalPeriod`) == 1)) {
          stop(paste("Error! Invalid data for `useFiscalPeriod`. Must be a boolean:", `useFiscalPeriod`))
        }
        self$`useFiscalPeriod` <- `useFiscalPeriod`
      }
      if (!is.null(`dateRange`)) {
        stopifnot(R6::is.R6(`dateRange`))
        self$`dateRange` <- `dateRange`
      }
      if (!is.null(`allHistory`)) {
        if (!(is.logical(`allHistory`) && length(`allHistory`) == 1)) {
          stop(paste("Error! Invalid data for `allHistory`. Must be a boolean:", `allHistory`))
        }
        self$`allHistory` <- `allHistory`
      }
      if (!is.null(`updateDate`)) {
        if (!is.character(`updateDate`)) {
          stop(paste("Error! Invalid data for `updateDate`. Must be a string:", `updateDate`))
        }
        self$`updateDate` <- `updateDate`
      }
      if (!is.null(`updatedFrom`)) {
        if (!is.character(`updatedFrom`)) {
          stop(paste("Error! Invalid data for `updatedFrom`. Must be a string:", `updatedFrom`))
        }
        self$`updatedFrom` <- `updatedFrom`
      }
      if (!is.null(`asOriginallyReported`)) {
        if (!(is.logical(`asOriginallyReported`) && length(`asOriginallyReported`) == 1)) {
          stop(paste("Error! Invalid data for `asOriginallyReported`. Must be a boolean:", `asOriginallyReported`))
        }
        self$`asOriginallyReported` <- `asOriginallyReported`
      }
      if (!is.null(`accessionID`)) {
        if (!(is.numeric(`accessionID`) && length(`accessionID`) == 1)) {
          stop(paste("Error! Invalid data for `accessionID`. Must be an integer:", `accessionID`))
        }
        self$`accessionID` <- `accessionID`
      }
      if (!is.null(`filingID`)) {
        if (!(is.numeric(`filingID`) && length(`filingID`) == 1)) {
          stop(paste("Error! Invalid data for `filingID`. Must be an integer:", `filingID`))
        }
        self$`filingID` <- `filingID`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return PeriodParameters in JSON format
    #' @export
    toJSON = function() {
      PeriodParametersObject <- list()
      if (!is.null(self$`year`)) {
        PeriodParametersObject[["year"]] <-
          self$`year`
      }
      if (!is.null(self$`period`)) {
        PeriodParametersObject[["period"]] <-
          self$`period`
      }
      if (!is.null(self$`endYear`)) {
        PeriodParametersObject[["endYear"]] <-
          self$`endYear`
      }
      if (!is.null(self$`endPeriod`)) {
        PeriodParametersObject[["endPeriod"]] <-
          self$`endPeriod`
      }
      if (!is.null(self$`periodType`)) {
        PeriodParametersObject[["periodType"]] <-
          self$`periodType`
      }
      if (!is.null(self$`useFiscalPeriod`)) {
        PeriodParametersObject[["useFiscalPeriod"]] <-
          self$`useFiscalPeriod`
      }
      if (!is.null(self$`dateRange`)) {
        PeriodParametersObject[["dateRange"]] <-
          self$`dateRange`$toJSON()
      }
      if (!is.null(self$`allHistory`)) {
        PeriodParametersObject[["allHistory"]] <-
          self$`allHistory`
      }
      if (!is.null(self$`updateDate`)) {
        PeriodParametersObject[["updateDate"]] <-
          self$`updateDate`
      }
      if (!is.null(self$`updatedFrom`)) {
        PeriodParametersObject[["updatedFrom"]] <-
          self$`updatedFrom`
      }
      if (!is.null(self$`asOriginallyReported`)) {
        PeriodParametersObject[["asOriginallyReported"]] <-
          self$`asOriginallyReported`
      }
      if (!is.null(self$`accessionID`)) {
        PeriodParametersObject[["accessionID"]] <-
          self$`accessionID`
      }
      if (!is.null(self$`filingID`)) {
        PeriodParametersObject[["filingID"]] <-
          self$`filingID`
      }
      PeriodParametersObject
    },
    #' Deserialize JSON string into an instance of PeriodParameters
    #'
    #' @description
    #' Deserialize JSON string into an instance of PeriodParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of PeriodParameters
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`year`)) {
        self$`year` <- this_object$`year`
      }
      if (!is.null(this_object$`period`)) {
        if (!is.null(this_object$`period`) && !(this_object$`period` %in% c("unset", "y", "q1", "q2", "q3", "q4", "h1", "Q3Cum", "TTM", "MRQ", "MRQ_fiscal", "MRCumulative", "year_fiscal", "combined", "allHistory", "MostRecentPeriod", "DateRange"))) {
          stop(paste("Error! \"", this_object$`period`, "\" cannot be assigned to `period`. Must be \"unset\", \"y\", \"q1\", \"q2\", \"q3\", \"q4\", \"h1\", \"Q3Cum\", \"TTM\", \"MRQ\", \"MRQ_fiscal\", \"MRCumulative\", \"year_fiscal\", \"combined\", \"allHistory\", \"MostRecentPeriod\", \"DateRange\".", sep = ""))
        }
        self$`period` <- this_object$`period`
      }
      if (!is.null(this_object$`endYear`)) {
        self$`endYear` <- this_object$`endYear`
      }
      if (!is.null(this_object$`endPeriod`)) {
        if (!is.null(this_object$`endPeriod`) && !(this_object$`endPeriod` %in% c("unset", "y", "q1", "q2", "q3", "q4", "h1", "Q3Cum", "TTM", "MRQ", "MRQ_fiscal", "MRCumulative", "year_fiscal", "combined", "allHistory", "MostRecentPeriod", "DateRange"))) {
          stop(paste("Error! \"", this_object$`endPeriod`, "\" cannot be assigned to `endPeriod`. Must be \"unset\", \"y\", \"q1\", \"q2\", \"q3\", \"q4\", \"h1\", \"Q3Cum\", \"TTM\", \"MRQ\", \"MRQ_fiscal\", \"MRCumulative\", \"year_fiscal\", \"combined\", \"allHistory\", \"MostRecentPeriod\", \"DateRange\".", sep = ""))
        }
        self$`endPeriod` <- this_object$`endPeriod`
      }
      if (!is.null(this_object$`periodType`)) {
        self$`periodType` <- this_object$`periodType`
      }
      if (!is.null(this_object$`useFiscalPeriod`)) {
        self$`useFiscalPeriod` <- this_object$`useFiscalPeriod`
      }
      if (!is.null(this_object$`dateRange`)) {
        `daterange_object` <- DateRange$new()
        `daterange_object`$fromJSON(jsonlite::toJSON(this_object$`dateRange`, auto_unbox = TRUE, digits = NA))
        self$`dateRange` <- `daterange_object`
      }
      if (!is.null(this_object$`allHistory`)) {
        self$`allHistory` <- this_object$`allHistory`
      }
      if (!is.null(this_object$`updateDate`)) {
        self$`updateDate` <- this_object$`updateDate`
      }
      if (!is.null(this_object$`updatedFrom`)) {
        self$`updatedFrom` <- this_object$`updatedFrom`
      }
      if (!is.null(this_object$`asOriginallyReported`)) {
        self$`asOriginallyReported` <- this_object$`asOriginallyReported`
      }
      if (!is.null(this_object$`accessionID`)) {
        self$`accessionID` <- this_object$`accessionID`
      }
      if (!is.null(this_object$`filingID`)) {
        self$`filingID` <- this_object$`filingID`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return PeriodParameters in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`year`)) {
          sprintf(
          '"year":
            %d
                    ',
          self$`year`
          )
        },
        if (!is.null(self$`period`)) {
          sprintf(
          '"period":
            "%s"
                    ',
          self$`period`
          )
        },
        if (!is.null(self$`endYear`)) {
          sprintf(
          '"endYear":
            %d
                    ',
          self$`endYear`
          )
        },
        if (!is.null(self$`endPeriod`)) {
          sprintf(
          '"endPeriod":
            "%s"
                    ',
          self$`endPeriod`
          )
        },
        if (!is.null(self$`periodType`)) {
          sprintf(
          '"periodType":
            "%s"
                    ',
          self$`periodType`
          )
        },
        if (!is.null(self$`useFiscalPeriod`)) {
          sprintf(
          '"useFiscalPeriod":
            %s
                    ',
          tolower(self$`useFiscalPeriod`)
          )
        },
        if (!is.null(self$`dateRange`)) {
          sprintf(
          '"dateRange":
          %s
          ',
          jsonlite::toJSON(self$`dateRange`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`allHistory`)) {
          sprintf(
          '"allHistory":
            %s
                    ',
          tolower(self$`allHistory`)
          )
        },
        if (!is.null(self$`updateDate`)) {
          sprintf(
          '"updateDate":
            "%s"
                    ',
          self$`updateDate`
          )
        },
        if (!is.null(self$`updatedFrom`)) {
          sprintf(
          '"updatedFrom":
            "%s"
                    ',
          self$`updatedFrom`
          )
        },
        if (!is.null(self$`asOriginallyReported`)) {
          sprintf(
          '"asOriginallyReported":
            %s
                    ',
          tolower(self$`asOriginallyReported`)
          )
        },
        if (!is.null(self$`accessionID`)) {
          sprintf(
          '"accessionID":
            %d
                    ',
          self$`accessionID`
          )
        },
        if (!is.null(self$`filingID`)) {
          sprintf(
          '"filingID":
            %d
                    ',
          self$`filingID`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of PeriodParameters
    #'
    #' @description
    #' Deserialize JSON string into an instance of PeriodParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of PeriodParameters
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`year` <- this_object$`year`
      if (!is.null(this_object$`period`) && !(this_object$`period` %in% c("unset", "y", "q1", "q2", "q3", "q4", "h1", "Q3Cum", "TTM", "MRQ", "MRQ_fiscal", "MRCumulative", "year_fiscal", "combined", "allHistory", "MostRecentPeriod", "DateRange"))) {
        stop(paste("Error! \"", this_object$`period`, "\" cannot be assigned to `period`. Must be \"unset\", \"y\", \"q1\", \"q2\", \"q3\", \"q4\", \"h1\", \"Q3Cum\", \"TTM\", \"MRQ\", \"MRQ_fiscal\", \"MRCumulative\", \"year_fiscal\", \"combined\", \"allHistory\", \"MostRecentPeriod\", \"DateRange\".", sep = ""))
      }
      self$`period` <- this_object$`period`
      self$`endYear` <- this_object$`endYear`
      if (!is.null(this_object$`endPeriod`) && !(this_object$`endPeriod` %in% c("unset", "y", "q1", "q2", "q3", "q4", "h1", "Q3Cum", "TTM", "MRQ", "MRQ_fiscal", "MRCumulative", "year_fiscal", "combined", "allHistory", "MostRecentPeriod", "DateRange"))) {
        stop(paste("Error! \"", this_object$`endPeriod`, "\" cannot be assigned to `endPeriod`. Must be \"unset\", \"y\", \"q1\", \"q2\", \"q3\", \"q4\", \"h1\", \"Q3Cum\", \"TTM\", \"MRQ\", \"MRQ_fiscal\", \"MRCumulative\", \"year_fiscal\", \"combined\", \"allHistory\", \"MostRecentPeriod\", \"DateRange\".", sep = ""))
      }
      self$`endPeriod` <- this_object$`endPeriod`
      self$`periodType` <- this_object$`periodType`
      self$`useFiscalPeriod` <- this_object$`useFiscalPeriod`
      self$`dateRange` <- DateRange$new()$fromJSON(jsonlite::toJSON(this_object$`dateRange`, auto_unbox = TRUE, digits = NA))
      self$`allHistory` <- this_object$`allHistory`
      self$`updateDate` <- this_object$`updateDate`
      self$`updatedFrom` <- this_object$`updatedFrom`
      self$`asOriginallyReported` <- this_object$`asOriginallyReported`
      self$`accessionID` <- this_object$`accessionID`
      self$`filingID` <- this_object$`filingID`
      self
    },
    #' Validate JSON input with respect to PeriodParameters
    #'
    #' @description
    #' Validate JSON input with respect to PeriodParameters and throw an exception if invalid
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
    #' @return String representation of PeriodParameters
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
# PeriodParameters$unlock()
#
## Below is an example to define the print function
# PeriodParameters$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PeriodParameters$lock()

