#' Create a new XBRLcontext
#'
#' @description
#' XBRLcontext Class
#'
#' @docType class
#' @title XBRLcontext
#' @description XBRLcontext Class
#' @format An \code{R6Class} generator object
#' @field context_id  integer [optional]
#' @field accession_id  integer [optional]
#' @field period_start  character [optional]
#' @field period_end  character [optional]
#' @field period_instant  character [optional]
#' @field specifies_dimensions  character [optional]
#' @field context_xml_id  character [optional]
#' @field entity_scheme  character [optional]
#' @field entity_id  integer [optional]
#' @field fiscal_year  integer [optional]
#' @field fiscal_period  character [optional]
#' @field context_hash  character [optional]
#' @field is_primary  character [optional]
#' @field dimension_hash  character [optional]
#' @field calendar_year  integer [optional]
#' @field calendar_period  character [optional]
#' @field calendar_start_offset  numeric [optional]
#' @field calendar_end_offset  numeric [optional]
#' @field calendar_period_size_diff_percentage  numeric [optional]
#' @field calendar_period_cum  character [optional]
#' @field fiscalPeriodEndString  character [optional]
#' @field successor  character [optional]
#' @field predecessor  character [optional]
#' @field isMostCurrent  character [optional]
#' @field compareToColumn  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
XBRLcontext <- R6::R6Class(
  "XBRLcontext",
  public = list(
    `context_id` = NULL,
    `accession_id` = NULL,
    `period_start` = NULL,
    `period_end` = NULL,
    `period_instant` = NULL,
    `specifies_dimensions` = NULL,
    `context_xml_id` = NULL,
    `entity_scheme` = NULL,
    `entity_id` = NULL,
    `fiscal_year` = NULL,
    `fiscal_period` = NULL,
    `context_hash` = NULL,
    `is_primary` = NULL,
    `dimension_hash` = NULL,
    `calendar_year` = NULL,
    `calendar_period` = NULL,
    `calendar_start_offset` = NULL,
    `calendar_end_offset` = NULL,
    `calendar_period_size_diff_percentage` = NULL,
    `calendar_period_cum` = NULL,
    `fiscalPeriodEndString` = NULL,
    `successor` = NULL,
    `predecessor` = NULL,
    `isMostCurrent` = NULL,
    `compareToColumn` = NULL,
    #' Initialize a new XBRLcontext class.
    #'
    #' @description
    #' Initialize a new XBRLcontext class.
    #'
    #' @param context_id context_id
    #' @param accession_id accession_id
    #' @param period_start period_start
    #' @param period_end period_end
    #' @param period_instant period_instant
    #' @param specifies_dimensions specifies_dimensions
    #' @param context_xml_id context_xml_id
    #' @param entity_scheme entity_scheme
    #' @param entity_id entity_id
    #' @param fiscal_year fiscal_year
    #' @param fiscal_period fiscal_period
    #' @param context_hash context_hash
    #' @param is_primary is_primary
    #' @param dimension_hash dimension_hash
    #' @param calendar_year calendar_year
    #' @param calendar_period calendar_period
    #' @param calendar_start_offset calendar_start_offset
    #' @param calendar_end_offset calendar_end_offset
    #' @param calendar_period_size_diff_percentage calendar_period_size_diff_percentage
    #' @param calendar_period_cum calendar_period_cum
    #' @param fiscalPeriodEndString fiscalPeriodEndString
    #' @param successor successor
    #' @param predecessor predecessor
    #' @param isMostCurrent isMostCurrent
    #' @param compareToColumn compareToColumn
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`context_id` = NULL, `accession_id` = NULL, `period_start` = NULL, `period_end` = NULL, `period_instant` = NULL, `specifies_dimensions` = NULL, `context_xml_id` = NULL, `entity_scheme` = NULL, `entity_id` = NULL, `fiscal_year` = NULL, `fiscal_period` = NULL, `context_hash` = NULL, `is_primary` = NULL, `dimension_hash` = NULL, `calendar_year` = NULL, `calendar_period` = NULL, `calendar_start_offset` = NULL, `calendar_end_offset` = NULL, `calendar_period_size_diff_percentage` = NULL, `calendar_period_cum` = NULL, `fiscalPeriodEndString` = NULL, `successor` = NULL, `predecessor` = NULL, `isMostCurrent` = NULL, `compareToColumn` = NULL, ...) {
      if (!is.null(`context_id`)) {
        if (!(is.numeric(`context_id`) && length(`context_id`) == 1)) {
          stop(paste("Error! Invalid data for `context_id`. Must be an integer:", `context_id`))
        }
        self$`context_id` <- `context_id`
      }
      if (!is.null(`accession_id`)) {
        if (!(is.numeric(`accession_id`) && length(`accession_id`) == 1)) {
          stop(paste("Error! Invalid data for `accession_id`. Must be an integer:", `accession_id`))
        }
        self$`accession_id` <- `accession_id`
      }
      if (!is.null(`period_start`)) {
        if (!is.character(`period_start`)) {
          stop(paste("Error! Invalid data for `period_start`. Must be a string:", `period_start`))
        }
        self$`period_start` <- `period_start`
      }
      if (!is.null(`period_end`)) {
        if (!is.character(`period_end`)) {
          stop(paste("Error! Invalid data for `period_end`. Must be a string:", `period_end`))
        }
        self$`period_end` <- `period_end`
      }
      if (!is.null(`period_instant`)) {
        if (!is.character(`period_instant`)) {
          stop(paste("Error! Invalid data for `period_instant`. Must be a string:", `period_instant`))
        }
        self$`period_instant` <- `period_instant`
      }
      if (!is.null(`specifies_dimensions`)) {
        if (!(is.logical(`specifies_dimensions`) && length(`specifies_dimensions`) == 1)) {
          stop(paste("Error! Invalid data for `specifies_dimensions`. Must be a boolean:", `specifies_dimensions`))
        }
        self$`specifies_dimensions` <- `specifies_dimensions`
      }
      if (!is.null(`context_xml_id`)) {
        if (!(is.character(`context_xml_id`) && length(`context_xml_id`) == 1)) {
          stop(paste("Error! Invalid data for `context_xml_id`. Must be a string:", `context_xml_id`))
        }
        self$`context_xml_id` <- `context_xml_id`
      }
      if (!is.null(`entity_scheme`)) {
        if (!(is.character(`entity_scheme`) && length(`entity_scheme`) == 1)) {
          stop(paste("Error! Invalid data for `entity_scheme`. Must be a string:", `entity_scheme`))
        }
        self$`entity_scheme` <- `entity_scheme`
      }
      if (!is.null(`entity_id`)) {
        if (!(is.numeric(`entity_id`) && length(`entity_id`) == 1)) {
          stop(paste("Error! Invalid data for `entity_id`. Must be an integer:", `entity_id`))
        }
        self$`entity_id` <- `entity_id`
      }
      if (!is.null(`fiscal_year`)) {
        if (!(is.numeric(`fiscal_year`) && length(`fiscal_year`) == 1)) {
          stop(paste("Error! Invalid data for `fiscal_year`. Must be an integer:", `fiscal_year`))
        }
        self$`fiscal_year` <- `fiscal_year`
      }
      if (!is.null(`fiscal_period`)) {
        if (!(is.character(`fiscal_period`) && length(`fiscal_period`) == 1)) {
          stop(paste("Error! Invalid data for `fiscal_period`. Must be a string:", `fiscal_period`))
        }
        self$`fiscal_period` <- `fiscal_period`
      }
      if (!is.null(`context_hash`)) {
        self$`context_hash` <- `context_hash`
      }
      if (!is.null(`is_primary`)) {
        if (!(is.logical(`is_primary`) && length(`is_primary`) == 1)) {
          stop(paste("Error! Invalid data for `is_primary`. Must be a boolean:", `is_primary`))
        }
        self$`is_primary` <- `is_primary`
      }
      if (!is.null(`dimension_hash`)) {
        if (!(is.character(`dimension_hash`) && length(`dimension_hash`) == 1)) {
          stop(paste("Error! Invalid data for `dimension_hash`. Must be a string:", `dimension_hash`))
        }
        self$`dimension_hash` <- `dimension_hash`
      }
      if (!is.null(`calendar_year`)) {
        if (!(is.numeric(`calendar_year`) && length(`calendar_year`) == 1)) {
          stop(paste("Error! Invalid data for `calendar_year`. Must be an integer:", `calendar_year`))
        }
        self$`calendar_year` <- `calendar_year`
      }
      if (!is.null(`calendar_period`)) {
        if (!(is.character(`calendar_period`) && length(`calendar_period`) == 1)) {
          stop(paste("Error! Invalid data for `calendar_period`. Must be a string:", `calendar_period`))
        }
        self$`calendar_period` <- `calendar_period`
      }
      if (!is.null(`calendar_start_offset`)) {
        if (!(is.numeric(`calendar_start_offset`) && length(`calendar_start_offset`) == 1)) {
          stop(paste("Error! Invalid data for `calendar_start_offset`. Must be a number:", `calendar_start_offset`))
        }
        self$`calendar_start_offset` <- `calendar_start_offset`
      }
      if (!is.null(`calendar_end_offset`)) {
        if (!(is.numeric(`calendar_end_offset`) && length(`calendar_end_offset`) == 1)) {
          stop(paste("Error! Invalid data for `calendar_end_offset`. Must be a number:", `calendar_end_offset`))
        }
        self$`calendar_end_offset` <- `calendar_end_offset`
      }
      if (!is.null(`calendar_period_size_diff_percentage`)) {
        if (!(is.numeric(`calendar_period_size_diff_percentage`) && length(`calendar_period_size_diff_percentage`) == 1)) {
          stop(paste("Error! Invalid data for `calendar_period_size_diff_percentage`. Must be a number:", `calendar_period_size_diff_percentage`))
        }
        self$`calendar_period_size_diff_percentage` <- `calendar_period_size_diff_percentage`
      }
      if (!is.null(`calendar_period_cum`)) {
        if (!(is.character(`calendar_period_cum`) && length(`calendar_period_cum`) == 1)) {
          stop(paste("Error! Invalid data for `calendar_period_cum`. Must be a string:", `calendar_period_cum`))
        }
        self$`calendar_period_cum` <- `calendar_period_cum`
      }
      if (!is.null(`fiscalPeriodEndString`)) {
        if (!(is.character(`fiscalPeriodEndString`) && length(`fiscalPeriodEndString`) == 1)) {
          stop(paste("Error! Invalid data for `fiscalPeriodEndString`. Must be a string:", `fiscalPeriodEndString`))
        }
        self$`fiscalPeriodEndString` <- `fiscalPeriodEndString`
      }
      if (!is.null(`successor`)) {
        if (!(is.logical(`successor`) && length(`successor`) == 1)) {
          stop(paste("Error! Invalid data for `successor`. Must be a boolean:", `successor`))
        }
        self$`successor` <- `successor`
      }
      if (!is.null(`predecessor`)) {
        if (!(is.logical(`predecessor`) && length(`predecessor`) == 1)) {
          stop(paste("Error! Invalid data for `predecessor`. Must be a boolean:", `predecessor`))
        }
        self$`predecessor` <- `predecessor`
      }
      if (!is.null(`isMostCurrent`)) {
        if (!(is.logical(`isMostCurrent`) && length(`isMostCurrent`) == 1)) {
          stop(paste("Error! Invalid data for `isMostCurrent`. Must be a boolean:", `isMostCurrent`))
        }
        self$`isMostCurrent` <- `isMostCurrent`
      }
      if (!is.null(`compareToColumn`)) {
        if (!(is.numeric(`compareToColumn`) && length(`compareToColumn`) == 1)) {
          stop(paste("Error! Invalid data for `compareToColumn`. Must be an integer:", `compareToColumn`))
        }
        self$`compareToColumn` <- `compareToColumn`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return XBRLcontext in JSON format
    #' @export
    toJSON = function() {
      XBRLcontextObject <- list()
      if (!is.null(self$`context_id`)) {
        XBRLcontextObject[["context_id"]] <-
          self$`context_id`
      }
      if (!is.null(self$`accession_id`)) {
        XBRLcontextObject[["accession_id"]] <-
          self$`accession_id`
      }
      if (!is.null(self$`period_start`)) {
        XBRLcontextObject[["period_start"]] <-
          self$`period_start`
      }
      if (!is.null(self$`period_end`)) {
        XBRLcontextObject[["period_end"]] <-
          self$`period_end`
      }
      if (!is.null(self$`period_instant`)) {
        XBRLcontextObject[["period_instant"]] <-
          self$`period_instant`
      }
      if (!is.null(self$`specifies_dimensions`)) {
        XBRLcontextObject[["specifies_dimensions"]] <-
          self$`specifies_dimensions`
      }
      if (!is.null(self$`context_xml_id`)) {
        XBRLcontextObject[["context_xml_id"]] <-
          self$`context_xml_id`
      }
      if (!is.null(self$`entity_scheme`)) {
        XBRLcontextObject[["entity_scheme"]] <-
          self$`entity_scheme`
      }
      if (!is.null(self$`entity_id`)) {
        XBRLcontextObject[["entity_id"]] <-
          self$`entity_id`
      }
      if (!is.null(self$`fiscal_year`)) {
        XBRLcontextObject[["fiscal_year"]] <-
          self$`fiscal_year`
      }
      if (!is.null(self$`fiscal_period`)) {
        XBRLcontextObject[["fiscal_period"]] <-
          self$`fiscal_period`
      }
      if (!is.null(self$`context_hash`)) {
        XBRLcontextObject[["context_hash"]] <-
          self$`context_hash`
      }
      if (!is.null(self$`is_primary`)) {
        XBRLcontextObject[["is_primary"]] <-
          self$`is_primary`
      }
      if (!is.null(self$`dimension_hash`)) {
        XBRLcontextObject[["dimension_hash"]] <-
          self$`dimension_hash`
      }
      if (!is.null(self$`calendar_year`)) {
        XBRLcontextObject[["calendar_year"]] <-
          self$`calendar_year`
      }
      if (!is.null(self$`calendar_period`)) {
        XBRLcontextObject[["calendar_period"]] <-
          self$`calendar_period`
      }
      if (!is.null(self$`calendar_start_offset`)) {
        XBRLcontextObject[["calendar_start_offset"]] <-
          self$`calendar_start_offset`
      }
      if (!is.null(self$`calendar_end_offset`)) {
        XBRLcontextObject[["calendar_end_offset"]] <-
          self$`calendar_end_offset`
      }
      if (!is.null(self$`calendar_period_size_diff_percentage`)) {
        XBRLcontextObject[["calendar_period_size_diff_percentage"]] <-
          self$`calendar_period_size_diff_percentage`
      }
      if (!is.null(self$`calendar_period_cum`)) {
        XBRLcontextObject[["calendar_period_cum"]] <-
          self$`calendar_period_cum`
      }
      if (!is.null(self$`fiscalPeriodEndString`)) {
        XBRLcontextObject[["fiscalPeriodEndString"]] <-
          self$`fiscalPeriodEndString`
      }
      if (!is.null(self$`successor`)) {
        XBRLcontextObject[["successor"]] <-
          self$`successor`
      }
      if (!is.null(self$`predecessor`)) {
        XBRLcontextObject[["predecessor"]] <-
          self$`predecessor`
      }
      if (!is.null(self$`isMostCurrent`)) {
        XBRLcontextObject[["isMostCurrent"]] <-
          self$`isMostCurrent`
      }
      if (!is.null(self$`compareToColumn`)) {
        XBRLcontextObject[["compareToColumn"]] <-
          self$`compareToColumn`
      }
      XBRLcontextObject
    },
    #' Deserialize JSON string into an instance of XBRLcontext
    #'
    #' @description
    #' Deserialize JSON string into an instance of XBRLcontext
    #'
    #' @param input_json the JSON input
    #' @return the instance of XBRLcontext
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`context_id`)) {
        self$`context_id` <- this_object$`context_id`
      }
      if (!is.null(this_object$`accession_id`)) {
        self$`accession_id` <- this_object$`accession_id`
      }
      if (!is.null(this_object$`period_start`)) {
        self$`period_start` <- this_object$`period_start`
      }
      if (!is.null(this_object$`period_end`)) {
        self$`period_end` <- this_object$`period_end`
      }
      if (!is.null(this_object$`period_instant`)) {
        self$`period_instant` <- this_object$`period_instant`
      }
      if (!is.null(this_object$`specifies_dimensions`)) {
        self$`specifies_dimensions` <- this_object$`specifies_dimensions`
      }
      if (!is.null(this_object$`context_xml_id`)) {
        self$`context_xml_id` <- this_object$`context_xml_id`
      }
      if (!is.null(this_object$`entity_scheme`)) {
        self$`entity_scheme` <- this_object$`entity_scheme`
      }
      if (!is.null(this_object$`entity_id`)) {
        self$`entity_id` <- this_object$`entity_id`
      }
      if (!is.null(this_object$`fiscal_year`)) {
        self$`fiscal_year` <- this_object$`fiscal_year`
      }
      if (!is.null(this_object$`fiscal_period`)) {
        self$`fiscal_period` <- this_object$`fiscal_period`
      }
      if (!is.null(this_object$`context_hash`)) {
        self$`context_hash` <- this_object$`context_hash`
      }
      if (!is.null(this_object$`is_primary`)) {
        self$`is_primary` <- this_object$`is_primary`
      }
      if (!is.null(this_object$`dimension_hash`)) {
        self$`dimension_hash` <- this_object$`dimension_hash`
      }
      if (!is.null(this_object$`calendar_year`)) {
        self$`calendar_year` <- this_object$`calendar_year`
      }
      if (!is.null(this_object$`calendar_period`)) {
        self$`calendar_period` <- this_object$`calendar_period`
      }
      if (!is.null(this_object$`calendar_start_offset`)) {
        self$`calendar_start_offset` <- this_object$`calendar_start_offset`
      }
      if (!is.null(this_object$`calendar_end_offset`)) {
        self$`calendar_end_offset` <- this_object$`calendar_end_offset`
      }
      if (!is.null(this_object$`calendar_period_size_diff_percentage`)) {
        self$`calendar_period_size_diff_percentage` <- this_object$`calendar_period_size_diff_percentage`
      }
      if (!is.null(this_object$`calendar_period_cum`)) {
        self$`calendar_period_cum` <- this_object$`calendar_period_cum`
      }
      if (!is.null(this_object$`fiscalPeriodEndString`)) {
        self$`fiscalPeriodEndString` <- this_object$`fiscalPeriodEndString`
      }
      if (!is.null(this_object$`successor`)) {
        self$`successor` <- this_object$`successor`
      }
      if (!is.null(this_object$`predecessor`)) {
        self$`predecessor` <- this_object$`predecessor`
      }
      if (!is.null(this_object$`isMostCurrent`)) {
        self$`isMostCurrent` <- this_object$`isMostCurrent`
      }
      if (!is.null(this_object$`compareToColumn`)) {
        self$`compareToColumn` <- this_object$`compareToColumn`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return XBRLcontext in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`context_id`)) {
          sprintf(
          '"context_id":
            %d
                    ',
          self$`context_id`
          )
        },
        if (!is.null(self$`accession_id`)) {
          sprintf(
          '"accession_id":
            %d
                    ',
          self$`accession_id`
          )
        },
        if (!is.null(self$`period_start`)) {
          sprintf(
          '"period_start":
            "%s"
                    ',
          self$`period_start`
          )
        },
        if (!is.null(self$`period_end`)) {
          sprintf(
          '"period_end":
            "%s"
                    ',
          self$`period_end`
          )
        },
        if (!is.null(self$`period_instant`)) {
          sprintf(
          '"period_instant":
            "%s"
                    ',
          self$`period_instant`
          )
        },
        if (!is.null(self$`specifies_dimensions`)) {
          sprintf(
          '"specifies_dimensions":
            %s
                    ',
          tolower(self$`specifies_dimensions`)
          )
        },
        if (!is.null(self$`context_xml_id`)) {
          sprintf(
          '"context_xml_id":
            "%s"
                    ',
          self$`context_xml_id`
          )
        },
        if (!is.null(self$`entity_scheme`)) {
          sprintf(
          '"entity_scheme":
            "%s"
                    ',
          self$`entity_scheme`
          )
        },
        if (!is.null(self$`entity_id`)) {
          sprintf(
          '"entity_id":
            %d
                    ',
          self$`entity_id`
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
            "%s"
                    ',
          self$`fiscal_period`
          )
        },
        if (!is.null(self$`context_hash`)) {
          sprintf(
          '"context_hash":
            "%s"
                    ',
          self$`context_hash`
          )
        },
        if (!is.null(self$`is_primary`)) {
          sprintf(
          '"is_primary":
            %s
                    ',
          tolower(self$`is_primary`)
          )
        },
        if (!is.null(self$`dimension_hash`)) {
          sprintf(
          '"dimension_hash":
            "%s"
                    ',
          self$`dimension_hash`
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
            "%s"
                    ',
          self$`calendar_period`
          )
        },
        if (!is.null(self$`calendar_start_offset`)) {
          sprintf(
          '"calendar_start_offset":
            %d
                    ',
          self$`calendar_start_offset`
          )
        },
        if (!is.null(self$`calendar_end_offset`)) {
          sprintf(
          '"calendar_end_offset":
            %d
                    ',
          self$`calendar_end_offset`
          )
        },
        if (!is.null(self$`calendar_period_size_diff_percentage`)) {
          sprintf(
          '"calendar_period_size_diff_percentage":
            %d
                    ',
          self$`calendar_period_size_diff_percentage`
          )
        },
        if (!is.null(self$`calendar_period_cum`)) {
          sprintf(
          '"calendar_period_cum":
            "%s"
                    ',
          self$`calendar_period_cum`
          )
        },
        if (!is.null(self$`fiscalPeriodEndString`)) {
          sprintf(
          '"fiscalPeriodEndString":
            "%s"
                    ',
          self$`fiscalPeriodEndString`
          )
        },
        if (!is.null(self$`successor`)) {
          sprintf(
          '"successor":
            %s
                    ',
          tolower(self$`successor`)
          )
        },
        if (!is.null(self$`predecessor`)) {
          sprintf(
          '"predecessor":
            %s
                    ',
          tolower(self$`predecessor`)
          )
        },
        if (!is.null(self$`isMostCurrent`)) {
          sprintf(
          '"isMostCurrent":
            %s
                    ',
          tolower(self$`isMostCurrent`)
          )
        },
        if (!is.null(self$`compareToColumn`)) {
          sprintf(
          '"compareToColumn":
            %d
                    ',
          self$`compareToColumn`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of XBRLcontext
    #'
    #' @description
    #' Deserialize JSON string into an instance of XBRLcontext
    #'
    #' @param input_json the JSON input
    #' @return the instance of XBRLcontext
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`context_id` <- this_object$`context_id`
      self$`accession_id` <- this_object$`accession_id`
      self$`period_start` <- this_object$`period_start`
      self$`period_end` <- this_object$`period_end`
      self$`period_instant` <- this_object$`period_instant`
      self$`specifies_dimensions` <- this_object$`specifies_dimensions`
      self$`context_xml_id` <- this_object$`context_xml_id`
      self$`entity_scheme` <- this_object$`entity_scheme`
      self$`entity_id` <- this_object$`entity_id`
      self$`fiscal_year` <- this_object$`fiscal_year`
      self$`fiscal_period` <- this_object$`fiscal_period`
      self$`context_hash` <- this_object$`context_hash`
      self$`is_primary` <- this_object$`is_primary`
      self$`dimension_hash` <- this_object$`dimension_hash`
      self$`calendar_year` <- this_object$`calendar_year`
      self$`calendar_period` <- this_object$`calendar_period`
      self$`calendar_start_offset` <- this_object$`calendar_start_offset`
      self$`calendar_end_offset` <- this_object$`calendar_end_offset`
      self$`calendar_period_size_diff_percentage` <- this_object$`calendar_period_size_diff_percentage`
      self$`calendar_period_cum` <- this_object$`calendar_period_cum`
      self$`fiscalPeriodEndString` <- this_object$`fiscalPeriodEndString`
      self$`successor` <- this_object$`successor`
      self$`predecessor` <- this_object$`predecessor`
      self$`isMostCurrent` <- this_object$`isMostCurrent`
      self$`compareToColumn` <- this_object$`compareToColumn`
      self
    },
    #' Validate JSON input with respect to XBRLcontext
    #'
    #' @description
    #' Validate JSON input with respect to XBRLcontext and throw an exception if invalid
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
    #' @return String representation of XBRLcontext
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
      if (!str_detect(self$`context_hash`, "^(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=)?$")) {
        return(FALSE)
      }

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
      if (!str_detect(self$`context_hash`, "^(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=)?$")) {
        invalid_fields["context_hash"] <- "Invalid value for `context_hash`, must conform to the pattern ^(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=)?$."
      }

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
# XBRLcontext$unlock()
#
## Below is an example to define the print function
# XBRLcontext$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# XBRLcontext$lock()

