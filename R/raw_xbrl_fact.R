#' Create a new RawXBRLFact
#'
#' @description
#' RawXBRLFact Class
#'
#' @docType class
#' @title RawXBRLFact
#' @description RawXBRLFact Class
#' @format An \code{R6Class} generator object
#' @field ticker  character [optional]
#' @field CIK  character [optional]
#' @field entity_name  character [optional]
#' @field filingID  integer [optional]
#' @field sec_filing_URL  character [optional]
#' @field document 10-K, 10-Q etc. character [optional]
#' @field XBRLtag  character [optional]
#' @field Value  numeric [optional]
#' @field fiscal_year  integer [optional]
#' @field fiscal_period  character [optional]
#' @field calendar_year  integer [optional]
#' @field calendar_period  character [optional]
#' @field period_start  character [optional]
#' @field period_end  character [optional]
#' @field period_instant  character [optional]
#' @field tagID  integer [optional]
#' @field factVersion  integer [optional]
#' @field filing_date  character [optional]
#' @field SEC_accession_number  character [optional]
#' @field filing_end_date  character [optional]
#' @field period_index  integer [optional]
#' @field unit_of_measure  character [optional]
#' @field format_type  character [optional]
#' @field fact_id  integer [optional]
#' @field uncorrectedValue  numeric [optional]
#' @field dimension_string  character [optional]
#' @field label  character [optional]
#' @field description  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RawXBRLFact <- R6::R6Class(
  "RawXBRLFact",
  public = list(
    `ticker` = NULL,
    `CIK` = NULL,
    `entity_name` = NULL,
    `filingID` = NULL,
    `sec_filing_URL` = NULL,
    `document` = NULL,
    `XBRLtag` = NULL,
    `Value` = NULL,
    `fiscal_year` = NULL,
    `fiscal_period` = NULL,
    `calendar_year` = NULL,
    `calendar_period` = NULL,
    `period_start` = NULL,
    `period_end` = NULL,
    `period_instant` = NULL,
    `tagID` = NULL,
    `factVersion` = NULL,
    `filing_date` = NULL,
    `SEC_accession_number` = NULL,
    `filing_end_date` = NULL,
    `period_index` = NULL,
    `unit_of_measure` = NULL,
    `format_type` = NULL,
    `fact_id` = NULL,
    `uncorrectedValue` = NULL,
    `dimension_string` = NULL,
    `label` = NULL,
    `description` = NULL,
    #' Initialize a new RawXBRLFact class.
    #'
    #' @description
    #' Initialize a new RawXBRLFact class.
    #'
    #' @param ticker ticker
    #' @param CIK CIK
    #' @param entity_name entity_name
    #' @param filingID filingID
    #' @param sec_filing_URL sec_filing_URL
    #' @param document 10-K, 10-Q etc.
    #' @param XBRLtag XBRLtag
    #' @param Value Value
    #' @param fiscal_year fiscal_year
    #' @param fiscal_period fiscal_period
    #' @param calendar_year calendar_year
    #' @param calendar_period calendar_period
    #' @param period_start period_start
    #' @param period_end period_end
    #' @param period_instant period_instant
    #' @param tagID tagID
    #' @param factVersion factVersion
    #' @param filing_date filing_date
    #' @param SEC_accession_number SEC_accession_number
    #' @param filing_end_date filing_end_date
    #' @param period_index period_index
    #' @param unit_of_measure unit_of_measure
    #' @param format_type format_type
    #' @param fact_id fact_id
    #' @param uncorrectedValue uncorrectedValue
    #' @param dimension_string dimension_string
    #' @param label label
    #' @param description description
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`ticker` = NULL, `CIK` = NULL, `entity_name` = NULL, `filingID` = NULL, `sec_filing_URL` = NULL, `document` = NULL, `XBRLtag` = NULL, `Value` = NULL, `fiscal_year` = NULL, `fiscal_period` = NULL, `calendar_year` = NULL, `calendar_period` = NULL, `period_start` = NULL, `period_end` = NULL, `period_instant` = NULL, `tagID` = NULL, `factVersion` = NULL, `filing_date` = NULL, `SEC_accession_number` = NULL, `filing_end_date` = NULL, `period_index` = NULL, `unit_of_measure` = NULL, `format_type` = NULL, `fact_id` = NULL, `uncorrectedValue` = NULL, `dimension_string` = NULL, `label` = NULL, `description` = NULL, ...) {
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
      if (!is.null(`entity_name`)) {
        if (!(is.character(`entity_name`) && length(`entity_name`) == 1)) {
          stop(paste("Error! Invalid data for `entity_name`. Must be a string:", `entity_name`))
        }
        self$`entity_name` <- `entity_name`
      }
      if (!is.null(`filingID`)) {
        if (!(is.numeric(`filingID`) && length(`filingID`) == 1)) {
          stop(paste("Error! Invalid data for `filingID`. Must be an integer:", `filingID`))
        }
        self$`filingID` <- `filingID`
      }
      if (!is.null(`sec_filing_URL`)) {
        if (!(is.character(`sec_filing_URL`) && length(`sec_filing_URL`) == 1)) {
          stop(paste("Error! Invalid data for `sec_filing_URL`. Must be a string:", `sec_filing_URL`))
        }
        self$`sec_filing_URL` <- `sec_filing_URL`
      }
      if (!is.null(`document`)) {
        if (!(is.character(`document`) && length(`document`) == 1)) {
          stop(paste("Error! Invalid data for `document`. Must be a string:", `document`))
        }
        self$`document` <- `document`
      }
      if (!is.null(`XBRLtag`)) {
        if (!(is.character(`XBRLtag`) && length(`XBRLtag`) == 1)) {
          stop(paste("Error! Invalid data for `XBRLtag`. Must be a string:", `XBRLtag`))
        }
        self$`XBRLtag` <- `XBRLtag`
      }
      if (!is.null(`Value`)) {
        if (!(is.numeric(`Value`) && length(`Value`) == 1)) {
          stop(paste("Error! Invalid data for `Value`. Must be a number:", `Value`))
        }
        self$`Value` <- `Value`
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
      if (!is.null(`tagID`)) {
        if (!(is.numeric(`tagID`) && length(`tagID`) == 1)) {
          stop(paste("Error! Invalid data for `tagID`. Must be an integer:", `tagID`))
        }
        self$`tagID` <- `tagID`
      }
      if (!is.null(`factVersion`)) {
        if (!(is.numeric(`factVersion`) && length(`factVersion`) == 1)) {
          stop(paste("Error! Invalid data for `factVersion`. Must be an integer:", `factVersion`))
        }
        self$`factVersion` <- `factVersion`
      }
      if (!is.null(`filing_date`)) {
        if (!is.character(`filing_date`)) {
          stop(paste("Error! Invalid data for `filing_date`. Must be a string:", `filing_date`))
        }
        self$`filing_date` <- `filing_date`
      }
      if (!is.null(`SEC_accession_number`)) {
        if (!(is.character(`SEC_accession_number`) && length(`SEC_accession_number`) == 1)) {
          stop(paste("Error! Invalid data for `SEC_accession_number`. Must be a string:", `SEC_accession_number`))
        }
        self$`SEC_accession_number` <- `SEC_accession_number`
      }
      if (!is.null(`filing_end_date`)) {
        if (!is.character(`filing_end_date`)) {
          stop(paste("Error! Invalid data for `filing_end_date`. Must be a string:", `filing_end_date`))
        }
        self$`filing_end_date` <- `filing_end_date`
      }
      if (!is.null(`period_index`)) {
        if (!(is.numeric(`period_index`) && length(`period_index`) == 1)) {
          stop(paste("Error! Invalid data for `period_index`. Must be an integer:", `period_index`))
        }
        self$`period_index` <- `period_index`
      }
      if (!is.null(`unit_of_measure`)) {
        if (!(is.character(`unit_of_measure`) && length(`unit_of_measure`) == 1)) {
          stop(paste("Error! Invalid data for `unit_of_measure`. Must be a string:", `unit_of_measure`))
        }
        self$`unit_of_measure` <- `unit_of_measure`
      }
      if (!is.null(`format_type`)) {
        if (!(is.character(`format_type`) && length(`format_type`) == 1)) {
          stop(paste("Error! Invalid data for `format_type`. Must be a string:", `format_type`))
        }
        self$`format_type` <- `format_type`
      }
      if (!is.null(`fact_id`)) {
        if (!(is.numeric(`fact_id`) && length(`fact_id`) == 1)) {
          stop(paste("Error! Invalid data for `fact_id`. Must be an integer:", `fact_id`))
        }
        self$`fact_id` <- `fact_id`
      }
      if (!is.null(`uncorrectedValue`)) {
        if (!(is.numeric(`uncorrectedValue`) && length(`uncorrectedValue`) == 1)) {
          stop(paste("Error! Invalid data for `uncorrectedValue`. Must be a number:", `uncorrectedValue`))
        }
        self$`uncorrectedValue` <- `uncorrectedValue`
      }
      if (!is.null(`dimension_string`)) {
        if (!(is.character(`dimension_string`) && length(`dimension_string`) == 1)) {
          stop(paste("Error! Invalid data for `dimension_string`. Must be a string:", `dimension_string`))
        }
        self$`dimension_string` <- `dimension_string`
      }
      if (!is.null(`label`)) {
        if (!(is.character(`label`) && length(`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", `label`))
        }
        self$`label` <- `label`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return RawXBRLFact in JSON format
    #' @export
    toJSON = function() {
      RawXBRLFactObject <- list()
      if (!is.null(self$`ticker`)) {
        RawXBRLFactObject[["ticker"]] <-
          self$`ticker`
      }
      if (!is.null(self$`CIK`)) {
        RawXBRLFactObject[["CIK"]] <-
          self$`CIK`
      }
      if (!is.null(self$`entity_name`)) {
        RawXBRLFactObject[["entity_name"]] <-
          self$`entity_name`
      }
      if (!is.null(self$`filingID`)) {
        RawXBRLFactObject[["filingID"]] <-
          self$`filingID`
      }
      if (!is.null(self$`sec_filing_URL`)) {
        RawXBRLFactObject[["sec_filing_URL"]] <-
          self$`sec_filing_URL`
      }
      if (!is.null(self$`document`)) {
        RawXBRLFactObject[["document"]] <-
          self$`document`
      }
      if (!is.null(self$`XBRLtag`)) {
        RawXBRLFactObject[["XBRLtag"]] <-
          self$`XBRLtag`
      }
      if (!is.null(self$`Value`)) {
        RawXBRLFactObject[["Value"]] <-
          self$`Value`
      }
      if (!is.null(self$`fiscal_year`)) {
        RawXBRLFactObject[["fiscal_year"]] <-
          self$`fiscal_year`
      }
      if (!is.null(self$`fiscal_period`)) {
        RawXBRLFactObject[["fiscal_period"]] <-
          self$`fiscal_period`
      }
      if (!is.null(self$`calendar_year`)) {
        RawXBRLFactObject[["calendar_year"]] <-
          self$`calendar_year`
      }
      if (!is.null(self$`calendar_period`)) {
        RawXBRLFactObject[["calendar_period"]] <-
          self$`calendar_period`
      }
      if (!is.null(self$`period_start`)) {
        RawXBRLFactObject[["period_start"]] <-
          self$`period_start`
      }
      if (!is.null(self$`period_end`)) {
        RawXBRLFactObject[["period_end"]] <-
          self$`period_end`
      }
      if (!is.null(self$`period_instant`)) {
        RawXBRLFactObject[["period_instant"]] <-
          self$`period_instant`
      }
      if (!is.null(self$`tagID`)) {
        RawXBRLFactObject[["tagID"]] <-
          self$`tagID`
      }
      if (!is.null(self$`factVersion`)) {
        RawXBRLFactObject[["factVersion"]] <-
          self$`factVersion`
      }
      if (!is.null(self$`filing_date`)) {
        RawXBRLFactObject[["filing_date"]] <-
          self$`filing_date`
      }
      if (!is.null(self$`SEC_accession_number`)) {
        RawXBRLFactObject[["SEC_accession_number"]] <-
          self$`SEC_accession_number`
      }
      if (!is.null(self$`filing_end_date`)) {
        RawXBRLFactObject[["filing_end_date"]] <-
          self$`filing_end_date`
      }
      if (!is.null(self$`period_index`)) {
        RawXBRLFactObject[["period_index"]] <-
          self$`period_index`
      }
      if (!is.null(self$`unit_of_measure`)) {
        RawXBRLFactObject[["unit_of_measure"]] <-
          self$`unit_of_measure`
      }
      if (!is.null(self$`format_type`)) {
        RawXBRLFactObject[["format_type"]] <-
          self$`format_type`
      }
      if (!is.null(self$`fact_id`)) {
        RawXBRLFactObject[["fact_id"]] <-
          self$`fact_id`
      }
      if (!is.null(self$`uncorrectedValue`)) {
        RawXBRLFactObject[["uncorrectedValue"]] <-
          self$`uncorrectedValue`
      }
      if (!is.null(self$`dimension_string`)) {
        RawXBRLFactObject[["dimension_string"]] <-
          self$`dimension_string`
      }
      if (!is.null(self$`label`)) {
        RawXBRLFactObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`description`)) {
        RawXBRLFactObject[["description"]] <-
          self$`description`
      }
      RawXBRLFactObject
    },
    #' Deserialize JSON string into an instance of RawXBRLFact
    #'
    #' @description
    #' Deserialize JSON string into an instance of RawXBRLFact
    #'
    #' @param input_json the JSON input
    #' @return the instance of RawXBRLFact
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`ticker`)) {
        self$`ticker` <- this_object$`ticker`
      }
      if (!is.null(this_object$`CIK`)) {
        self$`CIK` <- this_object$`CIK`
      }
      if (!is.null(this_object$`entity_name`)) {
        self$`entity_name` <- this_object$`entity_name`
      }
      if (!is.null(this_object$`filingID`)) {
        self$`filingID` <- this_object$`filingID`
      }
      if (!is.null(this_object$`sec_filing_URL`)) {
        self$`sec_filing_URL` <- this_object$`sec_filing_URL`
      }
      if (!is.null(this_object$`document`)) {
        self$`document` <- this_object$`document`
      }
      if (!is.null(this_object$`XBRLtag`)) {
        self$`XBRLtag` <- this_object$`XBRLtag`
      }
      if (!is.null(this_object$`Value`)) {
        self$`Value` <- this_object$`Value`
      }
      if (!is.null(this_object$`fiscal_year`)) {
        self$`fiscal_year` <- this_object$`fiscal_year`
      }
      if (!is.null(this_object$`fiscal_period`)) {
        self$`fiscal_period` <- this_object$`fiscal_period`
      }
      if (!is.null(this_object$`calendar_year`)) {
        self$`calendar_year` <- this_object$`calendar_year`
      }
      if (!is.null(this_object$`calendar_period`)) {
        self$`calendar_period` <- this_object$`calendar_period`
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
      if (!is.null(this_object$`tagID`)) {
        self$`tagID` <- this_object$`tagID`
      }
      if (!is.null(this_object$`factVersion`)) {
        self$`factVersion` <- this_object$`factVersion`
      }
      if (!is.null(this_object$`filing_date`)) {
        self$`filing_date` <- this_object$`filing_date`
      }
      if (!is.null(this_object$`SEC_accession_number`)) {
        self$`SEC_accession_number` <- this_object$`SEC_accession_number`
      }
      if (!is.null(this_object$`filing_end_date`)) {
        self$`filing_end_date` <- this_object$`filing_end_date`
      }
      if (!is.null(this_object$`period_index`)) {
        self$`period_index` <- this_object$`period_index`
      }
      if (!is.null(this_object$`unit_of_measure`)) {
        self$`unit_of_measure` <- this_object$`unit_of_measure`
      }
      if (!is.null(this_object$`format_type`)) {
        self$`format_type` <- this_object$`format_type`
      }
      if (!is.null(this_object$`fact_id`)) {
        self$`fact_id` <- this_object$`fact_id`
      }
      if (!is.null(this_object$`uncorrectedValue`)) {
        self$`uncorrectedValue` <- this_object$`uncorrectedValue`
      }
      if (!is.null(this_object$`dimension_string`)) {
        self$`dimension_string` <- this_object$`dimension_string`
      }
      if (!is.null(this_object$`label`)) {
        self$`label` <- this_object$`label`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return RawXBRLFact in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
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
        if (!is.null(self$`entity_name`)) {
          sprintf(
          '"entity_name":
            "%s"
                    ',
          self$`entity_name`
          )
        },
        if (!is.null(self$`filingID`)) {
          sprintf(
          '"filingID":
            %d
                    ',
          self$`filingID`
          )
        },
        if (!is.null(self$`sec_filing_URL`)) {
          sprintf(
          '"sec_filing_URL":
            "%s"
                    ',
          self$`sec_filing_URL`
          )
        },
        if (!is.null(self$`document`)) {
          sprintf(
          '"document":
            "%s"
                    ',
          self$`document`
          )
        },
        if (!is.null(self$`XBRLtag`)) {
          sprintf(
          '"XBRLtag":
            "%s"
                    ',
          self$`XBRLtag`
          )
        },
        if (!is.null(self$`Value`)) {
          sprintf(
          '"Value":
            %d
                    ',
          self$`Value`
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
        if (!is.null(self$`tagID`)) {
          sprintf(
          '"tagID":
            %d
                    ',
          self$`tagID`
          )
        },
        if (!is.null(self$`factVersion`)) {
          sprintf(
          '"factVersion":
            %d
                    ',
          self$`factVersion`
          )
        },
        if (!is.null(self$`filing_date`)) {
          sprintf(
          '"filing_date":
            "%s"
                    ',
          self$`filing_date`
          )
        },
        if (!is.null(self$`SEC_accession_number`)) {
          sprintf(
          '"SEC_accession_number":
            "%s"
                    ',
          self$`SEC_accession_number`
          )
        },
        if (!is.null(self$`filing_end_date`)) {
          sprintf(
          '"filing_end_date":
            "%s"
                    ',
          self$`filing_end_date`
          )
        },
        if (!is.null(self$`period_index`)) {
          sprintf(
          '"period_index":
            %d
                    ',
          self$`period_index`
          )
        },
        if (!is.null(self$`unit_of_measure`)) {
          sprintf(
          '"unit_of_measure":
            "%s"
                    ',
          self$`unit_of_measure`
          )
        },
        if (!is.null(self$`format_type`)) {
          sprintf(
          '"format_type":
            "%s"
                    ',
          self$`format_type`
          )
        },
        if (!is.null(self$`fact_id`)) {
          sprintf(
          '"fact_id":
            %d
                    ',
          self$`fact_id`
          )
        },
        if (!is.null(self$`uncorrectedValue`)) {
          sprintf(
          '"uncorrectedValue":
            %d
                    ',
          self$`uncorrectedValue`
          )
        },
        if (!is.null(self$`dimension_string`)) {
          sprintf(
          '"dimension_string":
            "%s"
                    ',
          self$`dimension_string`
          )
        },
        if (!is.null(self$`label`)) {
          sprintf(
          '"label":
            "%s"
                    ',
          self$`label`
          )
        },
        if (!is.null(self$`description`)) {
          sprintf(
          '"description":
            "%s"
                    ',
          self$`description`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of RawXBRLFact
    #'
    #' @description
    #' Deserialize JSON string into an instance of RawXBRLFact
    #'
    #' @param input_json the JSON input
    #' @return the instance of RawXBRLFact
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`ticker` <- this_object$`ticker`
      self$`CIK` <- this_object$`CIK`
      self$`entity_name` <- this_object$`entity_name`
      self$`filingID` <- this_object$`filingID`
      self$`sec_filing_URL` <- this_object$`sec_filing_URL`
      self$`document` <- this_object$`document`
      self$`XBRLtag` <- this_object$`XBRLtag`
      self$`Value` <- this_object$`Value`
      self$`fiscal_year` <- this_object$`fiscal_year`
      self$`fiscal_period` <- this_object$`fiscal_period`
      self$`calendar_year` <- this_object$`calendar_year`
      self$`calendar_period` <- this_object$`calendar_period`
      self$`period_start` <- this_object$`period_start`
      self$`period_end` <- this_object$`period_end`
      self$`period_instant` <- this_object$`period_instant`
      self$`tagID` <- this_object$`tagID`
      self$`factVersion` <- this_object$`factVersion`
      self$`filing_date` <- this_object$`filing_date`
      self$`SEC_accession_number` <- this_object$`SEC_accession_number`
      self$`filing_end_date` <- this_object$`filing_end_date`
      self$`period_index` <- this_object$`period_index`
      self$`unit_of_measure` <- this_object$`unit_of_measure`
      self$`format_type` <- this_object$`format_type`
      self$`fact_id` <- this_object$`fact_id`
      self$`uncorrectedValue` <- this_object$`uncorrectedValue`
      self$`dimension_string` <- this_object$`dimension_string`
      self$`label` <- this_object$`label`
      self$`description` <- this_object$`description`
      self
    },
    #' Validate JSON input with respect to RawXBRLFact
    #'
    #' @description
    #' Validate JSON input with respect to RawXBRLFact and throw an exception if invalid
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
    #' @return String representation of RawXBRLFact
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
# RawXBRLFact$unlock()
#
## Below is an example to define the print function
# RawXBRLFact$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RawXBRLFact$lock()

