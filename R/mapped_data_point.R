#' Create a new MappedDataPoint
#'
#' @description
#' MappedDataPoint Class
#'
#' @docType class
#' @title MappedDataPoint
#' @description MappedDataPoint Class
#' @format An \code{R6Class} generator object
#' @field standardized_id  integer [optional]
#' @field metric  character [optional]
#' @field value  object [optional]
#' @field calendar_year  integer [optional]
#' @field calendar_period  integer [optional]
#' @field fiscal_year  integer [optional]
#' @field fiscal_period  integer [optional]
#' @field trace_facts  list(\link{TraceData}) [optional]
#' @field ticker  character [optional]
#' @field CIK  character [optional]
#' @field calcbench_entity_id  integer [optional]
#' @field filing_type  character [optional]
#' @field preliminary  character [optional]
#' @field filing_accession_number  character [optional]
#' @field trace_url  character [optional]
#' @field revision_number  integer [optional]
#' @field XBRL  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MappedDataPoint <- R6::R6Class(
  "MappedDataPoint",
  public = list(
    `standardized_id` = NULL,
    `metric` = NULL,
    `value` = NULL,
    `calendar_year` = NULL,
    `calendar_period` = NULL,
    `fiscal_year` = NULL,
    `fiscal_period` = NULL,
    `trace_facts` = NULL,
    `ticker` = NULL,
    `CIK` = NULL,
    `calcbench_entity_id` = NULL,
    `filing_type` = NULL,
    `preliminary` = NULL,
    `filing_accession_number` = NULL,
    `trace_url` = NULL,
    `revision_number` = NULL,
    `XBRL` = NULL,
    #' Initialize a new MappedDataPoint class.
    #'
    #' @description
    #' Initialize a new MappedDataPoint class.
    #'
    #' @param standardized_id standardized_id
    #' @param metric metric
    #' @param value value
    #' @param calendar_year calendar_year
    #' @param calendar_period calendar_period
    #' @param fiscal_year fiscal_year
    #' @param fiscal_period fiscal_period
    #' @param trace_facts trace_facts
    #' @param ticker ticker
    #' @param CIK CIK
    #' @param calcbench_entity_id calcbench_entity_id
    #' @param filing_type filing_type
    #' @param preliminary preliminary
    #' @param filing_accession_number filing_accession_number
    #' @param trace_url trace_url
    #' @param revision_number revision_number
    #' @param XBRL XBRL
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`standardized_id` = NULL, `metric` = NULL, `value` = NULL, `calendar_year` = NULL, `calendar_period` = NULL, `fiscal_year` = NULL, `fiscal_period` = NULL, `trace_facts` = NULL, `ticker` = NULL, `CIK` = NULL, `calcbench_entity_id` = NULL, `filing_type` = NULL, `preliminary` = NULL, `filing_accession_number` = NULL, `trace_url` = NULL, `revision_number` = NULL, `XBRL` = NULL, ...) {
      if (!is.null(`standardized_id`)) {
        if (!(is.numeric(`standardized_id`) && length(`standardized_id`) == 1)) {
          stop(paste("Error! Invalid data for `standardized_id`. Must be an integer:", `standardized_id`))
        }
        self$`standardized_id` <- `standardized_id`
      }
      if (!is.null(`metric`)) {
        if (!(is.character(`metric`) && length(`metric`) == 1)) {
          stop(paste("Error! Invalid data for `metric`. Must be a string:", `metric`))
        }
        self$`metric` <- `metric`
      }
      if (!is.null(`value`)) {
        self$`value` <- `value`
      }
      if (!is.null(`calendar_year`)) {
        if (!(is.numeric(`calendar_year`) && length(`calendar_year`) == 1)) {
          stop(paste("Error! Invalid data for `calendar_year`. Must be an integer:", `calendar_year`))
        }
        self$`calendar_year` <- `calendar_year`
      }
      if (!is.null(`calendar_period`)) {
        if (!(is.numeric(`calendar_period`) && length(`calendar_period`) == 1)) {
          stop(paste("Error! Invalid data for `calendar_period`. Must be an integer:", `calendar_period`))
        }
        self$`calendar_period` <- `calendar_period`
      }
      if (!is.null(`fiscal_year`)) {
        if (!(is.numeric(`fiscal_year`) && length(`fiscal_year`) == 1)) {
          stop(paste("Error! Invalid data for `fiscal_year`. Must be an integer:", `fiscal_year`))
        }
        self$`fiscal_year` <- `fiscal_year`
      }
      if (!is.null(`fiscal_period`)) {
        if (!(is.numeric(`fiscal_period`) && length(`fiscal_period`) == 1)) {
          stop(paste("Error! Invalid data for `fiscal_period`. Must be an integer:", `fiscal_period`))
        }
        self$`fiscal_period` <- `fiscal_period`
      }
      if (!is.null(`trace_facts`)) {
        stopifnot(is.vector(`trace_facts`), length(`trace_facts`) != 0)
        sapply(`trace_facts`, function(x) stopifnot(R6::is.R6(x)))
        self$`trace_facts` <- `trace_facts`
      }
      if (!is.null(`ticker`)) {
        if (!(is.character(`ticker`) && length(`ticker`) == 1)) {
          stop(paste("Error! Invalid data for `ticker`. Must be a string:", `ticker`))
        }
        self$`ticker` <- `ticker`
      }
      if (!is.null(`CIK`)) {
        if (!(is.character(`CIK`) && length(`CIK`) == 1)) {
          stop(paste("Error! Invalid data for `CIK`. Must be a string:", `CIK`))
        }
        self$`CIK` <- `CIK`
      }
      if (!is.null(`calcbench_entity_id`)) {
        if (!(is.numeric(`calcbench_entity_id`) && length(`calcbench_entity_id`) == 1)) {
          stop(paste("Error! Invalid data for `calcbench_entity_id`. Must be an integer:", `calcbench_entity_id`))
        }
        self$`calcbench_entity_id` <- `calcbench_entity_id`
      }
      if (!is.null(`filing_type`)) {
        if (!(is.character(`filing_type`) && length(`filing_type`) == 1)) {
          stop(paste("Error! Invalid data for `filing_type`. Must be a string:", `filing_type`))
        }
        self$`filing_type` <- `filing_type`
      }
      if (!is.null(`preliminary`)) {
        if (!(is.logical(`preliminary`) && length(`preliminary`) == 1)) {
          stop(paste("Error! Invalid data for `preliminary`. Must be a boolean:", `preliminary`))
        }
        self$`preliminary` <- `preliminary`
      }
      if (!is.null(`filing_accession_number`)) {
        if (!(is.character(`filing_accession_number`) && length(`filing_accession_number`) == 1)) {
          stop(paste("Error! Invalid data for `filing_accession_number`. Must be a string:", `filing_accession_number`))
        }
        self$`filing_accession_number` <- `filing_accession_number`
      }
      if (!is.null(`trace_url`)) {
        if (!(is.character(`trace_url`) && length(`trace_url`) == 1)) {
          stop(paste("Error! Invalid data for `trace_url`. Must be a string:", `trace_url`))
        }
        self$`trace_url` <- `trace_url`
      }
      if (!is.null(`revision_number`)) {
        if (!(is.numeric(`revision_number`) && length(`revision_number`) == 1)) {
          stop(paste("Error! Invalid data for `revision_number`. Must be an integer:", `revision_number`))
        }
        self$`revision_number` <- `revision_number`
      }
      if (!is.null(`XBRL`)) {
        if (!(is.logical(`XBRL`) && length(`XBRL`) == 1)) {
          stop(paste("Error! Invalid data for `XBRL`. Must be a boolean:", `XBRL`))
        }
        self$`XBRL` <- `XBRL`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return MappedDataPoint in JSON format
    #' @export
    toJSON = function() {
      MappedDataPointObject <- list()
      if (!is.null(self$`standardized_id`)) {
        MappedDataPointObject[["standardized_id"]] <-
          self$`standardized_id`
      }
      if (!is.null(self$`metric`)) {
        MappedDataPointObject[["metric"]] <-
          self$`metric`
      }
      if (!is.null(self$`value`)) {
        MappedDataPointObject[["value"]] <-
          self$`value`
      }
      if (!is.null(self$`calendar_year`)) {
        MappedDataPointObject[["calendar_year"]] <-
          self$`calendar_year`
      }
      if (!is.null(self$`calendar_period`)) {
        MappedDataPointObject[["calendar_period"]] <-
          self$`calendar_period`
      }
      if (!is.null(self$`fiscal_year`)) {
        MappedDataPointObject[["fiscal_year"]] <-
          self$`fiscal_year`
      }
      if (!is.null(self$`fiscal_period`)) {
        MappedDataPointObject[["fiscal_period"]] <-
          self$`fiscal_period`
      }
      if (!is.null(self$`trace_facts`)) {
        MappedDataPointObject[["trace_facts"]] <-
          lapply(self$`trace_facts`, function(x) x$toJSON())
      }
      if (!is.null(self$`ticker`)) {
        MappedDataPointObject[["ticker"]] <-
          self$`ticker`
      }
      if (!is.null(self$`CIK`)) {
        MappedDataPointObject[["CIK"]] <-
          self$`CIK`
      }
      if (!is.null(self$`calcbench_entity_id`)) {
        MappedDataPointObject[["calcbench_entity_id"]] <-
          self$`calcbench_entity_id`
      }
      if (!is.null(self$`filing_type`)) {
        MappedDataPointObject[["filing_type"]] <-
          self$`filing_type`
      }
      if (!is.null(self$`preliminary`)) {
        MappedDataPointObject[["preliminary"]] <-
          self$`preliminary`
      }
      if (!is.null(self$`filing_accession_number`)) {
        MappedDataPointObject[["filing_accession_number"]] <-
          self$`filing_accession_number`
      }
      if (!is.null(self$`trace_url`)) {
        MappedDataPointObject[["trace_url"]] <-
          self$`trace_url`
      }
      if (!is.null(self$`revision_number`)) {
        MappedDataPointObject[["revision_number"]] <-
          self$`revision_number`
      }
      if (!is.null(self$`XBRL`)) {
        MappedDataPointObject[["XBRL"]] <-
          self$`XBRL`
      }
      MappedDataPointObject
    },
    #' Deserialize JSON string into an instance of MappedDataPoint
    #'
    #' @description
    #' Deserialize JSON string into an instance of MappedDataPoint
    #'
    #' @param input_json the JSON input
    #' @return the instance of MappedDataPoint
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`standardized_id`)) {
        self$`standardized_id` <- this_object$`standardized_id`
      }
      if (!is.null(this_object$`metric`)) {
        self$`metric` <- this_object$`metric`
      }
      if (!is.null(this_object$`value`)) {
        self$`value` <- this_object$`value`
      }
      if (!is.null(this_object$`calendar_year`)) {
        self$`calendar_year` <- this_object$`calendar_year`
      }
      if (!is.null(this_object$`calendar_period`)) {
        self$`calendar_period` <- this_object$`calendar_period`
      }
      if (!is.null(this_object$`fiscal_year`)) {
        self$`fiscal_year` <- this_object$`fiscal_year`
      }
      if (!is.null(this_object$`fiscal_period`)) {
        self$`fiscal_period` <- this_object$`fiscal_period`
      }
      if (!is.null(this_object$`trace_facts`)) {
        self$`trace_facts` <- ApiClient$new()$deserializeObj(this_object$`trace_facts`, "array[TraceData]", loadNamespace("calcbenchR"))
      }
      if (!is.null(this_object$`ticker`)) {
        self$`ticker` <- this_object$`ticker`
      }
      if (!is.null(this_object$`CIK`)) {
        self$`CIK` <- this_object$`CIK`
      }
      if (!is.null(this_object$`calcbench_entity_id`)) {
        self$`calcbench_entity_id` <- this_object$`calcbench_entity_id`
      }
      if (!is.null(this_object$`filing_type`)) {
        self$`filing_type` <- this_object$`filing_type`
      }
      if (!is.null(this_object$`preliminary`)) {
        self$`preliminary` <- this_object$`preliminary`
      }
      if (!is.null(this_object$`filing_accession_number`)) {
        self$`filing_accession_number` <- this_object$`filing_accession_number`
      }
      if (!is.null(this_object$`trace_url`)) {
        self$`trace_url` <- this_object$`trace_url`
      }
      if (!is.null(this_object$`revision_number`)) {
        self$`revision_number` <- this_object$`revision_number`
      }
      if (!is.null(this_object$`XBRL`)) {
        self$`XBRL` <- this_object$`XBRL`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return MappedDataPoint in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`standardized_id`)) {
          sprintf(
          '"standardized_id":
            %d
                    ',
          self$`standardized_id`
          )
        },
        if (!is.null(self$`metric`)) {
          sprintf(
          '"metric":
            "%s"
                    ',
          self$`metric`
          )
        },
        if (!is.null(self$`value`)) {
          sprintf(
          '"value":
            "%s"
                    ',
          self$`value`
          )
        },
        if (!is.null(self$`calendar_year`)) {
          sprintf(
          '"calendar_year":
            %d
                    ',
          self$`calendar_year`
          )
        },
        if (!is.null(self$`calendar_period`)) {
          sprintf(
          '"calendar_period":
            %d
                    ',
          self$`calendar_period`
          )
        },
        if (!is.null(self$`fiscal_year`)) {
          sprintf(
          '"fiscal_year":
            %d
                    ',
          self$`fiscal_year`
          )
        },
        if (!is.null(self$`fiscal_period`)) {
          sprintf(
          '"fiscal_period":
            %d
                    ',
          self$`fiscal_period`
          )
        },
        if (!is.null(self$`trace_facts`)) {
          sprintf(
          '"trace_facts":
          [%s]
',
          paste(sapply(self$`trace_facts`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`ticker`)) {
          sprintf(
          '"ticker":
            "%s"
                    ',
          self$`ticker`
          )
        },
        if (!is.null(self$`CIK`)) {
          sprintf(
          '"CIK":
            "%s"
                    ',
          self$`CIK`
          )
        },
        if (!is.null(self$`calcbench_entity_id`)) {
          sprintf(
          '"calcbench_entity_id":
            %d
                    ',
          self$`calcbench_entity_id`
          )
        },
        if (!is.null(self$`filing_type`)) {
          sprintf(
          '"filing_type":
            "%s"
                    ',
          self$`filing_type`
          )
        },
        if (!is.null(self$`preliminary`)) {
          sprintf(
          '"preliminary":
            %s
                    ',
          tolower(self$`preliminary`)
          )
        },
        if (!is.null(self$`filing_accession_number`)) {
          sprintf(
          '"filing_accession_number":
            "%s"
                    ',
          self$`filing_accession_number`
          )
        },
        if (!is.null(self$`trace_url`)) {
          sprintf(
          '"trace_url":
            "%s"
                    ',
          self$`trace_url`
          )
        },
        if (!is.null(self$`revision_number`)) {
          sprintf(
          '"revision_number":
            %d
                    ',
          self$`revision_number`
          )
        },
        if (!is.null(self$`XBRL`)) {
          sprintf(
          '"XBRL":
            %s
                    ',
          tolower(self$`XBRL`)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of MappedDataPoint
    #'
    #' @description
    #' Deserialize JSON string into an instance of MappedDataPoint
    #'
    #' @param input_json the JSON input
    #' @return the instance of MappedDataPoint
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`standardized_id` <- this_object$`standardized_id`
      self$`metric` <- this_object$`metric`
      self$`value` <- this_object$`value`
      self$`calendar_year` <- this_object$`calendar_year`
      self$`calendar_period` <- this_object$`calendar_period`
      self$`fiscal_year` <- this_object$`fiscal_year`
      self$`fiscal_period` <- this_object$`fiscal_period`
      self$`trace_facts` <- ApiClient$new()$deserializeObj(this_object$`trace_facts`, "array[TraceData]", loadNamespace("calcbenchR"))
      self$`ticker` <- this_object$`ticker`
      self$`CIK` <- this_object$`CIK`
      self$`calcbench_entity_id` <- this_object$`calcbench_entity_id`
      self$`filing_type` <- this_object$`filing_type`
      self$`preliminary` <- this_object$`preliminary`
      self$`filing_accession_number` <- this_object$`filing_accession_number`
      self$`trace_url` <- this_object$`trace_url`
      self$`revision_number` <- this_object$`revision_number`
      self$`XBRL` <- this_object$`XBRL`
      self
    },
    #' Validate JSON input with respect to MappedDataPoint
    #'
    #' @description
    #' Validate JSON input with respect to MappedDataPoint and throw an exception if invalid
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
    #' @return String representation of MappedDataPoint
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
# MappedDataPoint$unlock()
#
## Below is an example to define the print function
# MappedDataPoint$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MappedDataPoint$lock()

