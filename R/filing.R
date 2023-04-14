#' Create a new Filing
#'
#' @description
#' Filing Class
#'
#' @docType class
#' @title Filing
#' @description Filing Class
#' @format An \code{R6Class} generator object
#' @field is_xbrl  character [optional]
#' @field is_wire  character [optional]
#' @field calcbench_id  integer [optional]
#' @field filing_id  integer [optional]
#' @field sec_accession_id  character [optional]
#' @field sec_html_url  character [optional]
#' @field document_type  character [optional]
#' @field filing_type  character [optional]
#' @field filing_date  character [optional]
#' @field fiscal_period  integer [optional]
#' @field fiscal_year  integer [optional]
#' @field calcbench_accepted  character [optional]
#' @field calcbench_finished_load  character [optional]
#' @field entity_id  integer [optional]
#' @field ticker  character [optional]
#' @field entity_name  character [optional]
#' @field CIK  character [optional]
#' @field period_index  integer [optional]
#' @field associated_proxy_SEC_URL  character [optional]
#' @field associated_earnings_press_release_SEC_URL  character [optional]
#' @field period_end_date  character [optional]
#' @field percentage_revenue_change  numeric [optional]
#' @field this_period_revenue  numeric [optional]
#' @field link1  character [optional]
#' @field link2  character [optional]
#' @field link3  character [optional]
#' @field calendar_year  integer [optional]
#' @field calendar_period  integer [optional]
#' @field standardized_XBRL  character [optional]
#' @field has_standardized_data  character [optional]
#' @field item_types  list(character) [optional]
#' @field standardized_data_compressed  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Filing <- R6::R6Class(
  "Filing",
  public = list(
    `is_xbrl` = NULL,
    `is_wire` = NULL,
    `calcbench_id` = NULL,
    `filing_id` = NULL,
    `sec_accession_id` = NULL,
    `sec_html_url` = NULL,
    `document_type` = NULL,
    `filing_type` = NULL,
    `filing_date` = NULL,
    `fiscal_period` = NULL,
    `fiscal_year` = NULL,
    `calcbench_accepted` = NULL,
    `calcbench_finished_load` = NULL,
    `entity_id` = NULL,
    `ticker` = NULL,
    `entity_name` = NULL,
    `CIK` = NULL,
    `period_index` = NULL,
    `associated_proxy_SEC_URL` = NULL,
    `associated_earnings_press_release_SEC_URL` = NULL,
    `period_end_date` = NULL,
    `percentage_revenue_change` = NULL,
    `this_period_revenue` = NULL,
    `link1` = NULL,
    `link2` = NULL,
    `link3` = NULL,
    `calendar_year` = NULL,
    `calendar_period` = NULL,
    `standardized_XBRL` = NULL,
    `has_standardized_data` = NULL,
    `item_types` = NULL,
    `standardized_data_compressed` = NULL,
    #' Initialize a new Filing class.
    #'
    #' @description
    #' Initialize a new Filing class.
    #'
    #' @param is_xbrl is_xbrl
    #' @param is_wire is_wire
    #' @param calcbench_id calcbench_id
    #' @param filing_id filing_id
    #' @param sec_accession_id sec_accession_id
    #' @param sec_html_url sec_html_url
    #' @param document_type document_type
    #' @param filing_type filing_type
    #' @param filing_date filing_date
    #' @param fiscal_period fiscal_period
    #' @param fiscal_year fiscal_year
    #' @param calcbench_accepted calcbench_accepted
    #' @param calcbench_finished_load calcbench_finished_load
    #' @param entity_id entity_id
    #' @param ticker ticker
    #' @param entity_name entity_name
    #' @param CIK CIK
    #' @param period_index period_index
    #' @param associated_proxy_SEC_URL associated_proxy_SEC_URL
    #' @param associated_earnings_press_release_SEC_URL associated_earnings_press_release_SEC_URL
    #' @param period_end_date period_end_date
    #' @param percentage_revenue_change percentage_revenue_change
    #' @param this_period_revenue this_period_revenue
    #' @param link1 link1
    #' @param link2 link2
    #' @param link3 link3
    #' @param calendar_year calendar_year
    #' @param calendar_period calendar_period
    #' @param standardized_XBRL standardized_XBRL
    #' @param has_standardized_data has_standardized_data
    #' @param item_types item_types
    #' @param standardized_data_compressed standardized_data_compressed
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`is_xbrl` = NULL, `is_wire` = NULL, `calcbench_id` = NULL, `filing_id` = NULL, `sec_accession_id` = NULL, `sec_html_url` = NULL, `document_type` = NULL, `filing_type` = NULL, `filing_date` = NULL, `fiscal_period` = NULL, `fiscal_year` = NULL, `calcbench_accepted` = NULL, `calcbench_finished_load` = NULL, `entity_id` = NULL, `ticker` = NULL, `entity_name` = NULL, `CIK` = NULL, `period_index` = NULL, `associated_proxy_SEC_URL` = NULL, `associated_earnings_press_release_SEC_URL` = NULL, `period_end_date` = NULL, `percentage_revenue_change` = NULL, `this_period_revenue` = NULL, `link1` = NULL, `link2` = NULL, `link3` = NULL, `calendar_year` = NULL, `calendar_period` = NULL, `standardized_XBRL` = NULL, `has_standardized_data` = NULL, `item_types` = NULL, `standardized_data_compressed` = NULL, ...) {
      if (!is.null(`is_xbrl`)) {
        if (!(is.logical(`is_xbrl`) && length(`is_xbrl`) == 1)) {
          stop(paste("Error! Invalid data for `is_xbrl`. Must be a boolean:", `is_xbrl`))
        }
        self$`is_xbrl` <- `is_xbrl`
      }
      if (!is.null(`is_wire`)) {
        if (!(is.logical(`is_wire`) && length(`is_wire`) == 1)) {
          stop(paste("Error! Invalid data for `is_wire`. Must be a boolean:", `is_wire`))
        }
        self$`is_wire` <- `is_wire`
      }
      if (!is.null(`calcbench_id`)) {
        if (!(is.numeric(`calcbench_id`) && length(`calcbench_id`) == 1)) {
          stop(paste("Error! Invalid data for `calcbench_id`. Must be an integer:", `calcbench_id`))
        }
        self$`calcbench_id` <- `calcbench_id`
      }
      if (!is.null(`filing_id`)) {
        if (!(is.numeric(`filing_id`) && length(`filing_id`) == 1)) {
          stop(paste("Error! Invalid data for `filing_id`. Must be an integer:", `filing_id`))
        }
        self$`filing_id` <- `filing_id`
      }
      if (!is.null(`sec_accession_id`)) {
        if (!(is.character(`sec_accession_id`) && length(`sec_accession_id`) == 1)) {
          stop(paste("Error! Invalid data for `sec_accession_id`. Must be a string:", `sec_accession_id`))
        }
        self$`sec_accession_id` <- `sec_accession_id`
      }
      if (!is.null(`sec_html_url`)) {
        if (!(is.character(`sec_html_url`) && length(`sec_html_url`) == 1)) {
          stop(paste("Error! Invalid data for `sec_html_url`. Must be a string:", `sec_html_url`))
        }
        self$`sec_html_url` <- `sec_html_url`
      }
      if (!is.null(`document_type`)) {
        if (!(is.character(`document_type`) && length(`document_type`) == 1)) {
          stop(paste("Error! Invalid data for `document_type`. Must be a string:", `document_type`))
        }
        self$`document_type` <- `document_type`
      }
      if (!is.null(`filing_type`)) {
        if (!(`filing_type` %in% c("BusinessWirePR_filedAfterAn8K", "BusinessWirePR_replaced", "proxy", "annualQuarterlyReport", "eightk_earningsPressRelease", "eightk_guidanceUpdate", "eightk_conferenceCallTranscript", "eightk_presentationSlides", "eightk_monthlyOperatingMetrics", "eightk_earningsPressRelease_preliminary", "eightk_earningsPressRelease_correction", "eightk_other", "commentLetter", "commentLetterResponse", "form_3", "form_4", "form_5", "eightk_nonfinancial", "NT10KorQ", "S", "Four24B", "institutionalOwnsership_13F", "ForeignAnnualOrInterimReport"))) {
          stop(paste("Error! \"", `filing_type`, "\" cannot be assigned to `filing_type`. Must be \"BusinessWirePR_filedAfterAn8K\", \"BusinessWirePR_replaced\", \"proxy\", \"annualQuarterlyReport\", \"eightk_earningsPressRelease\", \"eightk_guidanceUpdate\", \"eightk_conferenceCallTranscript\", \"eightk_presentationSlides\", \"eightk_monthlyOperatingMetrics\", \"eightk_earningsPressRelease_preliminary\", \"eightk_earningsPressRelease_correction\", \"eightk_other\", \"commentLetter\", \"commentLetterResponse\", \"form_3\", \"form_4\", \"form_5\", \"eightk_nonfinancial\", \"NT10KorQ\", \"S\", \"Four24B\", \"institutionalOwnsership_13F\", \"ForeignAnnualOrInterimReport\".", sep = ""))
        }
        if (!(is.character(`filing_type`) && length(`filing_type`) == 1)) {
          stop(paste("Error! Invalid data for `filing_type`. Must be a string:", `filing_type`))
        }
        self$`filing_type` <- `filing_type`
      }
      if (!is.null(`filing_date`)) {
        if (!is.character(`filing_date`)) {
          stop(paste("Error! Invalid data for `filing_date`. Must be a string:", `filing_date`))
        }
        self$`filing_date` <- `filing_date`
      }
      if (!is.null(`fiscal_period`)) {
        if (!(is.numeric(`fiscal_period`) && length(`fiscal_period`) == 1)) {
          stop(paste("Error! Invalid data for `fiscal_period`. Must be an integer:", `fiscal_period`))
        }
        self$`fiscal_period` <- `fiscal_period`
      }
      if (!is.null(`fiscal_year`)) {
        if (!(is.numeric(`fiscal_year`) && length(`fiscal_year`) == 1)) {
          stop(paste("Error! Invalid data for `fiscal_year`. Must be an integer:", `fiscal_year`))
        }
        self$`fiscal_year` <- `fiscal_year`
      }
      if (!is.null(`calcbench_accepted`)) {
        if (!is.character(`calcbench_accepted`)) {
          stop(paste("Error! Invalid data for `calcbench_accepted`. Must be a string:", `calcbench_accepted`))
        }
        self$`calcbench_accepted` <- `calcbench_accepted`
      }
      if (!is.null(`calcbench_finished_load`)) {
        if (!is.character(`calcbench_finished_load`)) {
          stop(paste("Error! Invalid data for `calcbench_finished_load`. Must be a string:", `calcbench_finished_load`))
        }
        self$`calcbench_finished_load` <- `calcbench_finished_load`
      }
      if (!is.null(`entity_id`)) {
        if (!(is.numeric(`entity_id`) && length(`entity_id`) == 1)) {
          stop(paste("Error! Invalid data for `entity_id`. Must be an integer:", `entity_id`))
        }
        self$`entity_id` <- `entity_id`
      }
      if (!is.null(`ticker`)) {
        if (!(is.character(`ticker`) && length(`ticker`) == 1)) {
          stop(paste("Error! Invalid data for `ticker`. Must be a string:", `ticker`))
        }
        self$`ticker` <- `ticker`
      }
      if (!is.null(`entity_name`)) {
        if (!(is.character(`entity_name`) && length(`entity_name`) == 1)) {
          stop(paste("Error! Invalid data for `entity_name`. Must be a string:", `entity_name`))
        }
        self$`entity_name` <- `entity_name`
      }
      if (!is.null(`CIK`)) {
        if (!(is.character(`CIK`) && length(`CIK`) == 1)) {
          stop(paste("Error! Invalid data for `CIK`. Must be a string:", `CIK`))
        }
        self$`CIK` <- `CIK`
      }
      if (!is.null(`period_index`)) {
        if (!(is.numeric(`period_index`) && length(`period_index`) == 1)) {
          stop(paste("Error! Invalid data for `period_index`. Must be an integer:", `period_index`))
        }
        self$`period_index` <- `period_index`
      }
      if (!is.null(`associated_proxy_SEC_URL`)) {
        if (!(is.character(`associated_proxy_SEC_URL`) && length(`associated_proxy_SEC_URL`) == 1)) {
          stop(paste("Error! Invalid data for `associated_proxy_SEC_URL`. Must be a string:", `associated_proxy_SEC_URL`))
        }
        self$`associated_proxy_SEC_URL` <- `associated_proxy_SEC_URL`
      }
      if (!is.null(`associated_earnings_press_release_SEC_URL`)) {
        if (!(is.character(`associated_earnings_press_release_SEC_URL`) && length(`associated_earnings_press_release_SEC_URL`) == 1)) {
          stop(paste("Error! Invalid data for `associated_earnings_press_release_SEC_URL`. Must be a string:", `associated_earnings_press_release_SEC_URL`))
        }
        self$`associated_earnings_press_release_SEC_URL` <- `associated_earnings_press_release_SEC_URL`
      }
      if (!is.null(`period_end_date`)) {
        if (!is.character(`period_end_date`)) {
          stop(paste("Error! Invalid data for `period_end_date`. Must be a string:", `period_end_date`))
        }
        self$`period_end_date` <- `period_end_date`
      }
      if (!is.null(`percentage_revenue_change`)) {
        if (!(is.numeric(`percentage_revenue_change`) && length(`percentage_revenue_change`) == 1)) {
          stop(paste("Error! Invalid data for `percentage_revenue_change`. Must be a number:", `percentage_revenue_change`))
        }
        self$`percentage_revenue_change` <- `percentage_revenue_change`
      }
      if (!is.null(`this_period_revenue`)) {
        if (!(is.numeric(`this_period_revenue`) && length(`this_period_revenue`) == 1)) {
          stop(paste("Error! Invalid data for `this_period_revenue`. Must be a number:", `this_period_revenue`))
        }
        self$`this_period_revenue` <- `this_period_revenue`
      }
      if (!is.null(`link1`)) {
        if (!(is.character(`link1`) && length(`link1`) == 1)) {
          stop(paste("Error! Invalid data for `link1`. Must be a string:", `link1`))
        }
        self$`link1` <- `link1`
      }
      if (!is.null(`link2`)) {
        if (!(is.character(`link2`) && length(`link2`) == 1)) {
          stop(paste("Error! Invalid data for `link2`. Must be a string:", `link2`))
        }
        self$`link2` <- `link2`
      }
      if (!is.null(`link3`)) {
        if (!(is.character(`link3`) && length(`link3`) == 1)) {
          stop(paste("Error! Invalid data for `link3`. Must be a string:", `link3`))
        }
        self$`link3` <- `link3`
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
      if (!is.null(`standardized_XBRL`)) {
        if (!(is.logical(`standardized_XBRL`) && length(`standardized_XBRL`) == 1)) {
          stop(paste("Error! Invalid data for `standardized_XBRL`. Must be a boolean:", `standardized_XBRL`))
        }
        self$`standardized_XBRL` <- `standardized_XBRL`
      }
      if (!is.null(`has_standardized_data`)) {
        if (!(is.logical(`has_standardized_data`) && length(`has_standardized_data`) == 1)) {
          stop(paste("Error! Invalid data for `has_standardized_data`. Must be a boolean:", `has_standardized_data`))
        }
        self$`has_standardized_data` <- `has_standardized_data`
      }
      if (!is.null(`item_types`)) {
        stopifnot(is.vector(`item_types`), length(`item_types`) != 0)
        sapply(`item_types`, function(x) stopifnot(is.character(x)))
        self$`item_types` <- `item_types`
      }
      if (!is.null(`standardized_data_compressed`)) {
        if (!(is.character(`standardized_data_compressed`) && length(`standardized_data_compressed`) == 1)) {
          stop(paste("Error! Invalid data for `standardized_data_compressed`. Must be a string:", `standardized_data_compressed`))
        }
        self$`standardized_data_compressed` <- `standardized_data_compressed`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Filing in JSON format
    #' @export
    toJSON = function() {
      FilingObject <- list()
      if (!is.null(self$`is_xbrl`)) {
        FilingObject[["is_xbrl"]] <-
          self$`is_xbrl`
      }
      if (!is.null(self$`is_wire`)) {
        FilingObject[["is_wire"]] <-
          self$`is_wire`
      }
      if (!is.null(self$`calcbench_id`)) {
        FilingObject[["calcbench_id"]] <-
          self$`calcbench_id`
      }
      if (!is.null(self$`filing_id`)) {
        FilingObject[["filing_id"]] <-
          self$`filing_id`
      }
      if (!is.null(self$`sec_accession_id`)) {
        FilingObject[["sec_accession_id"]] <-
          self$`sec_accession_id`
      }
      if (!is.null(self$`sec_html_url`)) {
        FilingObject[["sec_html_url"]] <-
          self$`sec_html_url`
      }
      if (!is.null(self$`document_type`)) {
        FilingObject[["document_type"]] <-
          self$`document_type`
      }
      if (!is.null(self$`filing_type`)) {
        FilingObject[["filing_type"]] <-
          self$`filing_type`
      }
      if (!is.null(self$`filing_date`)) {
        FilingObject[["filing_date"]] <-
          self$`filing_date`
      }
      if (!is.null(self$`fiscal_period`)) {
        FilingObject[["fiscal_period"]] <-
          self$`fiscal_period`
      }
      if (!is.null(self$`fiscal_year`)) {
        FilingObject[["fiscal_year"]] <-
          self$`fiscal_year`
      }
      if (!is.null(self$`calcbench_accepted`)) {
        FilingObject[["calcbench_accepted"]] <-
          self$`calcbench_accepted`
      }
      if (!is.null(self$`calcbench_finished_load`)) {
        FilingObject[["calcbench_finished_load"]] <-
          self$`calcbench_finished_load`
      }
      if (!is.null(self$`entity_id`)) {
        FilingObject[["entity_id"]] <-
          self$`entity_id`
      }
      if (!is.null(self$`ticker`)) {
        FilingObject[["ticker"]] <-
          self$`ticker`
      }
      if (!is.null(self$`entity_name`)) {
        FilingObject[["entity_name"]] <-
          self$`entity_name`
      }
      if (!is.null(self$`CIK`)) {
        FilingObject[["CIK"]] <-
          self$`CIK`
      }
      if (!is.null(self$`period_index`)) {
        FilingObject[["period_index"]] <-
          self$`period_index`
      }
      if (!is.null(self$`associated_proxy_SEC_URL`)) {
        FilingObject[["associated_proxy_SEC_URL"]] <-
          self$`associated_proxy_SEC_URL`
      }
      if (!is.null(self$`associated_earnings_press_release_SEC_URL`)) {
        FilingObject[["associated_earnings_press_release_SEC_URL"]] <-
          self$`associated_earnings_press_release_SEC_URL`
      }
      if (!is.null(self$`period_end_date`)) {
        FilingObject[["period_end_date"]] <-
          self$`period_end_date`
      }
      if (!is.null(self$`percentage_revenue_change`)) {
        FilingObject[["percentage_revenue_change"]] <-
          self$`percentage_revenue_change`
      }
      if (!is.null(self$`this_period_revenue`)) {
        FilingObject[["this_period_revenue"]] <-
          self$`this_period_revenue`
      }
      if (!is.null(self$`link1`)) {
        FilingObject[["link1"]] <-
          self$`link1`
      }
      if (!is.null(self$`link2`)) {
        FilingObject[["link2"]] <-
          self$`link2`
      }
      if (!is.null(self$`link3`)) {
        FilingObject[["link3"]] <-
          self$`link3`
      }
      if (!is.null(self$`calendar_year`)) {
        FilingObject[["calendar_year"]] <-
          self$`calendar_year`
      }
      if (!is.null(self$`calendar_period`)) {
        FilingObject[["calendar_period"]] <-
          self$`calendar_period`
      }
      if (!is.null(self$`standardized_XBRL`)) {
        FilingObject[["standardized_XBRL"]] <-
          self$`standardized_XBRL`
      }
      if (!is.null(self$`has_standardized_data`)) {
        FilingObject[["has_standardized_data"]] <-
          self$`has_standardized_data`
      }
      if (!is.null(self$`item_types`)) {
        FilingObject[["item_types"]] <-
          self$`item_types`
      }
      if (!is.null(self$`standardized_data_compressed`)) {
        FilingObject[["standardized_data_compressed"]] <-
          self$`standardized_data_compressed`
      }
      FilingObject
    },
    #' Deserialize JSON string into an instance of Filing
    #'
    #' @description
    #' Deserialize JSON string into an instance of Filing
    #'
    #' @param input_json the JSON input
    #' @return the instance of Filing
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`is_xbrl`)) {
        self$`is_xbrl` <- this_object$`is_xbrl`
      }
      if (!is.null(this_object$`is_wire`)) {
        self$`is_wire` <- this_object$`is_wire`
      }
      if (!is.null(this_object$`calcbench_id`)) {
        self$`calcbench_id` <- this_object$`calcbench_id`
      }
      if (!is.null(this_object$`filing_id`)) {
        self$`filing_id` <- this_object$`filing_id`
      }
      if (!is.null(this_object$`sec_accession_id`)) {
        self$`sec_accession_id` <- this_object$`sec_accession_id`
      }
      if (!is.null(this_object$`sec_html_url`)) {
        self$`sec_html_url` <- this_object$`sec_html_url`
      }
      if (!is.null(this_object$`document_type`)) {
        self$`document_type` <- this_object$`document_type`
      }
      if (!is.null(this_object$`filing_type`)) {
        if (!is.null(this_object$`filing_type`) && !(this_object$`filing_type` %in% c("BusinessWirePR_filedAfterAn8K", "BusinessWirePR_replaced", "proxy", "annualQuarterlyReport", "eightk_earningsPressRelease", "eightk_guidanceUpdate", "eightk_conferenceCallTranscript", "eightk_presentationSlides", "eightk_monthlyOperatingMetrics", "eightk_earningsPressRelease_preliminary", "eightk_earningsPressRelease_correction", "eightk_other", "commentLetter", "commentLetterResponse", "form_3", "form_4", "form_5", "eightk_nonfinancial", "NT10KorQ", "S", "Four24B", "institutionalOwnsership_13F", "ForeignAnnualOrInterimReport"))) {
          stop(paste("Error! \"", this_object$`filing_type`, "\" cannot be assigned to `filing_type`. Must be \"BusinessWirePR_filedAfterAn8K\", \"BusinessWirePR_replaced\", \"proxy\", \"annualQuarterlyReport\", \"eightk_earningsPressRelease\", \"eightk_guidanceUpdate\", \"eightk_conferenceCallTranscript\", \"eightk_presentationSlides\", \"eightk_monthlyOperatingMetrics\", \"eightk_earningsPressRelease_preliminary\", \"eightk_earningsPressRelease_correction\", \"eightk_other\", \"commentLetter\", \"commentLetterResponse\", \"form_3\", \"form_4\", \"form_5\", \"eightk_nonfinancial\", \"NT10KorQ\", \"S\", \"Four24B\", \"institutionalOwnsership_13F\", \"ForeignAnnualOrInterimReport\".", sep = ""))
        }
        self$`filing_type` <- this_object$`filing_type`
      }
      if (!is.null(this_object$`filing_date`)) {
        self$`filing_date` <- this_object$`filing_date`
      }
      if (!is.null(this_object$`fiscal_period`)) {
        self$`fiscal_period` <- this_object$`fiscal_period`
      }
      if (!is.null(this_object$`fiscal_year`)) {
        self$`fiscal_year` <- this_object$`fiscal_year`
      }
      if (!is.null(this_object$`calcbench_accepted`)) {
        self$`calcbench_accepted` <- this_object$`calcbench_accepted`
      }
      if (!is.null(this_object$`calcbench_finished_load`)) {
        self$`calcbench_finished_load` <- this_object$`calcbench_finished_load`
      }
      if (!is.null(this_object$`entity_id`)) {
        self$`entity_id` <- this_object$`entity_id`
      }
      if (!is.null(this_object$`ticker`)) {
        self$`ticker` <- this_object$`ticker`
      }
      if (!is.null(this_object$`entity_name`)) {
        self$`entity_name` <- this_object$`entity_name`
      }
      if (!is.null(this_object$`CIK`)) {
        self$`CIK` <- this_object$`CIK`
      }
      if (!is.null(this_object$`period_index`)) {
        self$`period_index` <- this_object$`period_index`
      }
      if (!is.null(this_object$`associated_proxy_SEC_URL`)) {
        self$`associated_proxy_SEC_URL` <- this_object$`associated_proxy_SEC_URL`
      }
      if (!is.null(this_object$`associated_earnings_press_release_SEC_URL`)) {
        self$`associated_earnings_press_release_SEC_URL` <- this_object$`associated_earnings_press_release_SEC_URL`
      }
      if (!is.null(this_object$`period_end_date`)) {
        self$`period_end_date` <- this_object$`period_end_date`
      }
      if (!is.null(this_object$`percentage_revenue_change`)) {
        self$`percentage_revenue_change` <- this_object$`percentage_revenue_change`
      }
      if (!is.null(this_object$`this_period_revenue`)) {
        self$`this_period_revenue` <- this_object$`this_period_revenue`
      }
      if (!is.null(this_object$`link1`)) {
        self$`link1` <- this_object$`link1`
      }
      if (!is.null(this_object$`link2`)) {
        self$`link2` <- this_object$`link2`
      }
      if (!is.null(this_object$`link3`)) {
        self$`link3` <- this_object$`link3`
      }
      if (!is.null(this_object$`calendar_year`)) {
        self$`calendar_year` <- this_object$`calendar_year`
      }
      if (!is.null(this_object$`calendar_period`)) {
        self$`calendar_period` <- this_object$`calendar_period`
      }
      if (!is.null(this_object$`standardized_XBRL`)) {
        self$`standardized_XBRL` <- this_object$`standardized_XBRL`
      }
      if (!is.null(this_object$`has_standardized_data`)) {
        self$`has_standardized_data` <- this_object$`has_standardized_data`
      }
      if (!is.null(this_object$`item_types`)) {
        self$`item_types` <- ApiClient$new()$deserializeObj(this_object$`item_types`, "array[character]", loadNamespace("calcbenchR"))
      }
      if (!is.null(this_object$`standardized_data_compressed`)) {
        self$`standardized_data_compressed` <- this_object$`standardized_data_compressed`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Filing in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`is_xbrl`)) {
          sprintf(
          '"is_xbrl":
            %s
                    ',
          tolower(self$`is_xbrl`)
          )
        },
        if (!is.null(self$`is_wire`)) {
          sprintf(
          '"is_wire":
            %s
                    ',
          tolower(self$`is_wire`)
          )
        },
        if (!is.null(self$`calcbench_id`)) {
          sprintf(
          '"calcbench_id":
            %d
                    ',
          self$`calcbench_id`
          )
        },
        if (!is.null(self$`filing_id`)) {
          sprintf(
          '"filing_id":
            %d
                    ',
          self$`filing_id`
          )
        },
        if (!is.null(self$`sec_accession_id`)) {
          sprintf(
          '"sec_accession_id":
            "%s"
                    ',
          self$`sec_accession_id`
          )
        },
        if (!is.null(self$`sec_html_url`)) {
          sprintf(
          '"sec_html_url":
            "%s"
                    ',
          self$`sec_html_url`
          )
        },
        if (!is.null(self$`document_type`)) {
          sprintf(
          '"document_type":
            "%s"
                    ',
          self$`document_type`
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
        if (!is.null(self$`filing_date`)) {
          sprintf(
          '"filing_date":
            "%s"
                    ',
          self$`filing_date`
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
        if (!is.null(self$`fiscal_year`)) {
          sprintf(
          '"fiscal_year":
            %d
                    ',
          self$`fiscal_year`
          )
        },
        if (!is.null(self$`calcbench_accepted`)) {
          sprintf(
          '"calcbench_accepted":
            "%s"
                    ',
          self$`calcbench_accepted`
          )
        },
        if (!is.null(self$`calcbench_finished_load`)) {
          sprintf(
          '"calcbench_finished_load":
            "%s"
                    ',
          self$`calcbench_finished_load`
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
        if (!is.null(self$`ticker`)) {
          sprintf(
          '"ticker":
            "%s"
                    ',
          self$`ticker`
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
        if (!is.null(self$`CIK`)) {
          sprintf(
          '"CIK":
            "%s"
                    ',
          self$`CIK`
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
        if (!is.null(self$`associated_proxy_SEC_URL`)) {
          sprintf(
          '"associated_proxy_SEC_URL":
            "%s"
                    ',
          self$`associated_proxy_SEC_URL`
          )
        },
        if (!is.null(self$`associated_earnings_press_release_SEC_URL`)) {
          sprintf(
          '"associated_earnings_press_release_SEC_URL":
            "%s"
                    ',
          self$`associated_earnings_press_release_SEC_URL`
          )
        },
        if (!is.null(self$`period_end_date`)) {
          sprintf(
          '"period_end_date":
            "%s"
                    ',
          self$`period_end_date`
          )
        },
        if (!is.null(self$`percentage_revenue_change`)) {
          sprintf(
          '"percentage_revenue_change":
            %d
                    ',
          self$`percentage_revenue_change`
          )
        },
        if (!is.null(self$`this_period_revenue`)) {
          sprintf(
          '"this_period_revenue":
            %d
                    ',
          self$`this_period_revenue`
          )
        },
        if (!is.null(self$`link1`)) {
          sprintf(
          '"link1":
            "%s"
                    ',
          self$`link1`
          )
        },
        if (!is.null(self$`link2`)) {
          sprintf(
          '"link2":
            "%s"
                    ',
          self$`link2`
          )
        },
        if (!is.null(self$`link3`)) {
          sprintf(
          '"link3":
            "%s"
                    ',
          self$`link3`
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
        if (!is.null(self$`standardized_XBRL`)) {
          sprintf(
          '"standardized_XBRL":
            %s
                    ',
          tolower(self$`standardized_XBRL`)
          )
        },
        if (!is.null(self$`has_standardized_data`)) {
          sprintf(
          '"has_standardized_data":
            %s
                    ',
          tolower(self$`has_standardized_data`)
          )
        },
        if (!is.null(self$`item_types`)) {
          sprintf(
          '"item_types":
             [%s]
          ',
          paste(unlist(lapply(self$`item_types`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`standardized_data_compressed`)) {
          sprintf(
          '"standardized_data_compressed":
            "%s"
                    ',
          self$`standardized_data_compressed`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of Filing
    #'
    #' @description
    #' Deserialize JSON string into an instance of Filing
    #'
    #' @param input_json the JSON input
    #' @return the instance of Filing
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`is_xbrl` <- this_object$`is_xbrl`
      self$`is_wire` <- this_object$`is_wire`
      self$`calcbench_id` <- this_object$`calcbench_id`
      self$`filing_id` <- this_object$`filing_id`
      self$`sec_accession_id` <- this_object$`sec_accession_id`
      self$`sec_html_url` <- this_object$`sec_html_url`
      self$`document_type` <- this_object$`document_type`
      if (!is.null(this_object$`filing_type`) && !(this_object$`filing_type` %in% c("BusinessWirePR_filedAfterAn8K", "BusinessWirePR_replaced", "proxy", "annualQuarterlyReport", "eightk_earningsPressRelease", "eightk_guidanceUpdate", "eightk_conferenceCallTranscript", "eightk_presentationSlides", "eightk_monthlyOperatingMetrics", "eightk_earningsPressRelease_preliminary", "eightk_earningsPressRelease_correction", "eightk_other", "commentLetter", "commentLetterResponse", "form_3", "form_4", "form_5", "eightk_nonfinancial", "NT10KorQ", "S", "Four24B", "institutionalOwnsership_13F", "ForeignAnnualOrInterimReport"))) {
        stop(paste("Error! \"", this_object$`filing_type`, "\" cannot be assigned to `filing_type`. Must be \"BusinessWirePR_filedAfterAn8K\", \"BusinessWirePR_replaced\", \"proxy\", \"annualQuarterlyReport\", \"eightk_earningsPressRelease\", \"eightk_guidanceUpdate\", \"eightk_conferenceCallTranscript\", \"eightk_presentationSlides\", \"eightk_monthlyOperatingMetrics\", \"eightk_earningsPressRelease_preliminary\", \"eightk_earningsPressRelease_correction\", \"eightk_other\", \"commentLetter\", \"commentLetterResponse\", \"form_3\", \"form_4\", \"form_5\", \"eightk_nonfinancial\", \"NT10KorQ\", \"S\", \"Four24B\", \"institutionalOwnsership_13F\", \"ForeignAnnualOrInterimReport\".", sep = ""))
      }
      self$`filing_type` <- this_object$`filing_type`
      self$`filing_date` <- this_object$`filing_date`
      self$`fiscal_period` <- this_object$`fiscal_period`
      self$`fiscal_year` <- this_object$`fiscal_year`
      self$`calcbench_accepted` <- this_object$`calcbench_accepted`
      self$`calcbench_finished_load` <- this_object$`calcbench_finished_load`
      self$`entity_id` <- this_object$`entity_id`
      self$`ticker` <- this_object$`ticker`
      self$`entity_name` <- this_object$`entity_name`
      self$`CIK` <- this_object$`CIK`
      self$`period_index` <- this_object$`period_index`
      self$`associated_proxy_SEC_URL` <- this_object$`associated_proxy_SEC_URL`
      self$`associated_earnings_press_release_SEC_URL` <- this_object$`associated_earnings_press_release_SEC_URL`
      self$`period_end_date` <- this_object$`period_end_date`
      self$`percentage_revenue_change` <- this_object$`percentage_revenue_change`
      self$`this_period_revenue` <- this_object$`this_period_revenue`
      self$`link1` <- this_object$`link1`
      self$`link2` <- this_object$`link2`
      self$`link3` <- this_object$`link3`
      self$`calendar_year` <- this_object$`calendar_year`
      self$`calendar_period` <- this_object$`calendar_period`
      self$`standardized_XBRL` <- this_object$`standardized_XBRL`
      self$`has_standardized_data` <- this_object$`has_standardized_data`
      self$`item_types` <- ApiClient$new()$deserializeObj(this_object$`item_types`, "array[character]", loadNamespace("calcbenchR"))
      self$`standardized_data_compressed` <- this_object$`standardized_data_compressed`
      self
    },
    #' Validate JSON input with respect to Filing
    #'
    #' @description
    #' Validate JSON input with respect to Filing and throw an exception if invalid
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
    #' @return String representation of Filing
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
# Filing$unlock()
#
## Below is an example to define the print function
# Filing$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Filing$lock()

