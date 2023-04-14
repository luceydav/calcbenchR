#' Create a new NonXBRLFact
#'
#' @description
#' NonXBRLFact Class
#'
#' @docType class
#' @title NonXBRLFact
#' @description NonXBRLFact Class
#' @format An \code{R6Class} generator object
#' @field companyID  integer [optional]
#' @field CIK  character [optional]
#' @field UOM  character [optional]
#' @field Value  numeric [optional]
#' @field XBRLfilingID  integer [optional]
#' @field column_label  character [optional]
#' @field document  character [optional]
#' @field entity_name  character [optional]
#' @field extract_tag  character [optional]
#' @field fact_id  integer [optional]
#' @field filingID  integer [optional]
#' @field filing_date  character [optional]
#' @field filing_end_date  character [optional]
#' @field filing_period  integer [optional]
#' @field filing_year  integer [optional]
#' @field fiscal_period  integer [optional]
#' @field fiscal_year  integer [optional]
#' @field is_guidance  character [optional]
#' @field is_non_gaap  character [optional]
#' @field label  character [optional]
#' @field metric  character [optional]
#' @field metric_id qname_id_min, a unique identifier for XBRL tags.  Set for rows when Calcbench thinks this data corresponds to an XBRL tag. integer [optional]
#' @field range_high  character [optional]
#' @field range_low  character [optional]
#' @field sec_filing_URL  character [optional]
#' @field sec_html_url  character [optional]
#' @field special_fact_type  character [optional]
#' @field statement_type  character [optional]
#' @field tabular_item  character [optional]
#' @field ticker  character [optional]
#' @field filing_type  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
NonXBRLFact <- R6::R6Class(
  "NonXBRLFact",
  public = list(
    `companyID` = NULL,
    `CIK` = NULL,
    `UOM` = NULL,
    `Value` = NULL,
    `XBRLfilingID` = NULL,
    `column_label` = NULL,
    `document` = NULL,
    `entity_name` = NULL,
    `extract_tag` = NULL,
    `fact_id` = NULL,
    `filingID` = NULL,
    `filing_date` = NULL,
    `filing_end_date` = NULL,
    `filing_period` = NULL,
    `filing_year` = NULL,
    `fiscal_period` = NULL,
    `fiscal_year` = NULL,
    `is_guidance` = NULL,
    `is_non_gaap` = NULL,
    `label` = NULL,
    `metric` = NULL,
    `metric_id` = NULL,
    `range_high` = NULL,
    `range_low` = NULL,
    `sec_filing_URL` = NULL,
    `sec_html_url` = NULL,
    `special_fact_type` = NULL,
    `statement_type` = NULL,
    `tabular_item` = NULL,
    `ticker` = NULL,
    `filing_type` = NULL,
    #' Initialize a new NonXBRLFact class.
    #'
    #' @description
    #' Initialize a new NonXBRLFact class.
    #'
    #' @param companyID companyID
    #' @param CIK CIK
    #' @param UOM UOM
    #' @param Value Value
    #' @param XBRLfilingID XBRLfilingID
    #' @param column_label column_label
    #' @param document document
    #' @param entity_name entity_name
    #' @param extract_tag extract_tag
    #' @param fact_id fact_id
    #' @param filingID filingID
    #' @param filing_date filing_date
    #' @param filing_end_date filing_end_date
    #' @param filing_period filing_period
    #' @param filing_year filing_year
    #' @param fiscal_period fiscal_period
    #' @param fiscal_year fiscal_year
    #' @param is_guidance is_guidance
    #' @param is_non_gaap is_non_gaap
    #' @param label label
    #' @param metric metric
    #' @param metric_id qname_id_min, a unique identifier for XBRL tags.  Set for rows when Calcbench thinks this data corresponds to an XBRL tag.
    #' @param range_high range_high
    #' @param range_low range_low
    #' @param sec_filing_URL sec_filing_URL
    #' @param sec_html_url sec_html_url
    #' @param special_fact_type special_fact_type
    #' @param statement_type statement_type
    #' @param tabular_item tabular_item
    #' @param ticker ticker
    #' @param filing_type filing_type
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`companyID` = NULL, `CIK` = NULL, `UOM` = NULL, `Value` = NULL, `XBRLfilingID` = NULL, `column_label` = NULL, `document` = NULL, `entity_name` = NULL, `extract_tag` = NULL, `fact_id` = NULL, `filingID` = NULL, `filing_date` = NULL, `filing_end_date` = NULL, `filing_period` = NULL, `filing_year` = NULL, `fiscal_period` = NULL, `fiscal_year` = NULL, `is_guidance` = NULL, `is_non_gaap` = NULL, `label` = NULL, `metric` = NULL, `metric_id` = NULL, `range_high` = NULL, `range_low` = NULL, `sec_filing_URL` = NULL, `sec_html_url` = NULL, `special_fact_type` = NULL, `statement_type` = NULL, `tabular_item` = NULL, `ticker` = NULL, `filing_type` = NULL, ...) {
      if (!is.null(`companyID`)) {
        if (!(is.numeric(`companyID`) && length(`companyID`) == 1)) {
          stop(paste("Error! Invalid data for `companyID`. Must be an integer:", `companyID`))
        }
        self$`companyID` <- `companyID`
      }
      if (!is.null(`CIK`)) {
        if (!(is.character(`CIK`) && length(`CIK`) == 1)) {
          stop(paste("Error! Invalid data for `CIK`. Must be a string:", `CIK`))
        }
        self$`CIK` <- `CIK`
      }
      if (!is.null(`UOM`)) {
        if (!(is.character(`UOM`) && length(`UOM`) == 1)) {
          stop(paste("Error! Invalid data for `UOM`. Must be a string:", `UOM`))
        }
        self$`UOM` <- `UOM`
      }
      if (!is.null(`Value`)) {
        if (!(is.numeric(`Value`) && length(`Value`) == 1)) {
          stop(paste("Error! Invalid data for `Value`. Must be a number:", `Value`))
        }
        self$`Value` <- `Value`
      }
      if (!is.null(`XBRLfilingID`)) {
        if (!(is.numeric(`XBRLfilingID`) && length(`XBRLfilingID`) == 1)) {
          stop(paste("Error! Invalid data for `XBRLfilingID`. Must be an integer:", `XBRLfilingID`))
        }
        self$`XBRLfilingID` <- `XBRLfilingID`
      }
      if (!is.null(`column_label`)) {
        if (!(is.character(`column_label`) && length(`column_label`) == 1)) {
          stop(paste("Error! Invalid data for `column_label`. Must be a string:", `column_label`))
        }
        self$`column_label` <- `column_label`
      }
      if (!is.null(`document`)) {
        if (!(is.character(`document`) && length(`document`) == 1)) {
          stop(paste("Error! Invalid data for `document`. Must be a string:", `document`))
        }
        self$`document` <- `document`
      }
      if (!is.null(`entity_name`)) {
        if (!(is.character(`entity_name`) && length(`entity_name`) == 1)) {
          stop(paste("Error! Invalid data for `entity_name`. Must be a string:", `entity_name`))
        }
        self$`entity_name` <- `entity_name`
      }
      if (!is.null(`extract_tag`)) {
        if (!(is.character(`extract_tag`) && length(`extract_tag`) == 1)) {
          stop(paste("Error! Invalid data for `extract_tag`. Must be a string:", `extract_tag`))
        }
        self$`extract_tag` <- `extract_tag`
      }
      if (!is.null(`fact_id`)) {
        if (!(is.numeric(`fact_id`) && length(`fact_id`) == 1)) {
          stop(paste("Error! Invalid data for `fact_id`. Must be an integer:", `fact_id`))
        }
        self$`fact_id` <- `fact_id`
      }
      if (!is.null(`filingID`)) {
        if (!(is.numeric(`filingID`) && length(`filingID`) == 1)) {
          stop(paste("Error! Invalid data for `filingID`. Must be an integer:", `filingID`))
        }
        self$`filingID` <- `filingID`
      }
      if (!is.null(`filing_date`)) {
        if (!is.character(`filing_date`)) {
          stop(paste("Error! Invalid data for `filing_date`. Must be a string:", `filing_date`))
        }
        self$`filing_date` <- `filing_date`
      }
      if (!is.null(`filing_end_date`)) {
        if (!is.character(`filing_end_date`)) {
          stop(paste("Error! Invalid data for `filing_end_date`. Must be a string:", `filing_end_date`))
        }
        self$`filing_end_date` <- `filing_end_date`
      }
      if (!is.null(`filing_period`)) {
        if (!(is.numeric(`filing_period`) && length(`filing_period`) == 1)) {
          stop(paste("Error! Invalid data for `filing_period`. Must be an integer:", `filing_period`))
        }
        self$`filing_period` <- `filing_period`
      }
      if (!is.null(`filing_year`)) {
        if (!(is.numeric(`filing_year`) && length(`filing_year`) == 1)) {
          stop(paste("Error! Invalid data for `filing_year`. Must be an integer:", `filing_year`))
        }
        self$`filing_year` <- `filing_year`
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
      if (!is.null(`is_guidance`)) {
        if (!(is.logical(`is_guidance`) && length(`is_guidance`) == 1)) {
          stop(paste("Error! Invalid data for `is_guidance`. Must be a boolean:", `is_guidance`))
        }
        self$`is_guidance` <- `is_guidance`
      }
      if (!is.null(`is_non_gaap`)) {
        if (!(is.logical(`is_non_gaap`) && length(`is_non_gaap`) == 1)) {
          stop(paste("Error! Invalid data for `is_non_gaap`. Must be a boolean:", `is_non_gaap`))
        }
        self$`is_non_gaap` <- `is_non_gaap`
      }
      if (!is.null(`label`)) {
        if (!(is.character(`label`) && length(`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", `label`))
        }
        self$`label` <- `label`
      }
      if (!is.null(`metric`)) {
        if (!(is.character(`metric`) && length(`metric`) == 1)) {
          stop(paste("Error! Invalid data for `metric`. Must be a string:", `metric`))
        }
        self$`metric` <- `metric`
      }
      if (!is.null(`metric_id`)) {
        if (!(is.numeric(`metric_id`) && length(`metric_id`) == 1)) {
          stop(paste("Error! Invalid data for `metric_id`. Must be an integer:", `metric_id`))
        }
        self$`metric_id` <- `metric_id`
      }
      if (!is.null(`range_high`)) {
        if (!(is.logical(`range_high`) && length(`range_high`) == 1)) {
          stop(paste("Error! Invalid data for `range_high`. Must be a boolean:", `range_high`))
        }
        self$`range_high` <- `range_high`
      }
      if (!is.null(`range_low`)) {
        if (!(is.logical(`range_low`) && length(`range_low`) == 1)) {
          stop(paste("Error! Invalid data for `range_low`. Must be a boolean:", `range_low`))
        }
        self$`range_low` <- `range_low`
      }
      if (!is.null(`sec_filing_URL`)) {
        if (!(is.character(`sec_filing_URL`) && length(`sec_filing_URL`) == 1)) {
          stop(paste("Error! Invalid data for `sec_filing_URL`. Must be a string:", `sec_filing_URL`))
        }
        self$`sec_filing_URL` <- `sec_filing_URL`
      }
      if (!is.null(`sec_html_url`)) {
        if (!(is.character(`sec_html_url`) && length(`sec_html_url`) == 1)) {
          stop(paste("Error! Invalid data for `sec_html_url`. Must be a string:", `sec_html_url`))
        }
        self$`sec_html_url` <- `sec_html_url`
      }
      if (!is.null(`special_fact_type`)) {
        if (!(is.character(`special_fact_type`) && length(`special_fact_type`) == 1)) {
          stop(paste("Error! Invalid data for `special_fact_type`. Must be a string:", `special_fact_type`))
        }
        self$`special_fact_type` <- `special_fact_type`
      }
      if (!is.null(`statement_type`)) {
        if (!(`statement_type` %in% c("unset", "docEntityInfo", "IncomeStatement", "BalanceSheet", "CashFlow", "Disclosure", "StockholdersEquity", "StatementOfComprehensiveIncome", "IncomeStatementParenthetical", "BalanceSheetParenthetical", "CashFlowParenthetical", "DisclosureParenthetical", "stockholdersEquityParenthetical", "StatementOfComprehensiveIncomeParenthetical", "extensionAnchoring"))) {
          stop(paste("Error! \"", `statement_type`, "\" cannot be assigned to `statement_type`. Must be \"unset\", \"docEntityInfo\", \"IncomeStatement\", \"BalanceSheet\", \"CashFlow\", \"Disclosure\", \"StockholdersEquity\", \"StatementOfComprehensiveIncome\", \"IncomeStatementParenthetical\", \"BalanceSheetParenthetical\", \"CashFlowParenthetical\", \"DisclosureParenthetical\", \"stockholdersEquityParenthetical\", \"StatementOfComprehensiveIncomeParenthetical\", \"extensionAnchoring\".", sep = ""))
        }
        if (!(is.character(`statement_type`) && length(`statement_type`) == 1)) {
          stop(paste("Error! Invalid data for `statement_type`. Must be a string:", `statement_type`))
        }
        self$`statement_type` <- `statement_type`
      }
      if (!is.null(`tabular_item`)) {
        if (!(is.logical(`tabular_item`) && length(`tabular_item`) == 1)) {
          stop(paste("Error! Invalid data for `tabular_item`. Must be a boolean:", `tabular_item`))
        }
        self$`tabular_item` <- `tabular_item`
      }
      if (!is.null(`ticker`)) {
        if (!(is.character(`ticker`) && length(`ticker`) == 1)) {
          stop(paste("Error! Invalid data for `ticker`. Must be a string:", `ticker`))
        }
        self$`ticker` <- `ticker`
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
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return NonXBRLFact in JSON format
    #' @export
    toJSON = function() {
      NonXBRLFactObject <- list()
      if (!is.null(self$`companyID`)) {
        NonXBRLFactObject[["companyID"]] <-
          self$`companyID`
      }
      if (!is.null(self$`CIK`)) {
        NonXBRLFactObject[["CIK"]] <-
          self$`CIK`
      }
      if (!is.null(self$`UOM`)) {
        NonXBRLFactObject[["UOM"]] <-
          self$`UOM`
      }
      if (!is.null(self$`Value`)) {
        NonXBRLFactObject[["Value"]] <-
          self$`Value`
      }
      if (!is.null(self$`XBRLfilingID`)) {
        NonXBRLFactObject[["XBRLfilingID"]] <-
          self$`XBRLfilingID`
      }
      if (!is.null(self$`column_label`)) {
        NonXBRLFactObject[["column_label"]] <-
          self$`column_label`
      }
      if (!is.null(self$`document`)) {
        NonXBRLFactObject[["document"]] <-
          self$`document`
      }
      if (!is.null(self$`entity_name`)) {
        NonXBRLFactObject[["entity_name"]] <-
          self$`entity_name`
      }
      if (!is.null(self$`extract_tag`)) {
        NonXBRLFactObject[["extract_tag"]] <-
          self$`extract_tag`
      }
      if (!is.null(self$`fact_id`)) {
        NonXBRLFactObject[["fact_id"]] <-
          self$`fact_id`
      }
      if (!is.null(self$`filingID`)) {
        NonXBRLFactObject[["filingID"]] <-
          self$`filingID`
      }
      if (!is.null(self$`filing_date`)) {
        NonXBRLFactObject[["filing_date"]] <-
          self$`filing_date`
      }
      if (!is.null(self$`filing_end_date`)) {
        NonXBRLFactObject[["filing_end_date"]] <-
          self$`filing_end_date`
      }
      if (!is.null(self$`filing_period`)) {
        NonXBRLFactObject[["filing_period"]] <-
          self$`filing_period`
      }
      if (!is.null(self$`filing_year`)) {
        NonXBRLFactObject[["filing_year"]] <-
          self$`filing_year`
      }
      if (!is.null(self$`fiscal_period`)) {
        NonXBRLFactObject[["fiscal_period"]] <-
          self$`fiscal_period`
      }
      if (!is.null(self$`fiscal_year`)) {
        NonXBRLFactObject[["fiscal_year"]] <-
          self$`fiscal_year`
      }
      if (!is.null(self$`is_guidance`)) {
        NonXBRLFactObject[["is_guidance"]] <-
          self$`is_guidance`
      }
      if (!is.null(self$`is_non_gaap`)) {
        NonXBRLFactObject[["is_non_gaap"]] <-
          self$`is_non_gaap`
      }
      if (!is.null(self$`label`)) {
        NonXBRLFactObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`metric`)) {
        NonXBRLFactObject[["metric"]] <-
          self$`metric`
      }
      if (!is.null(self$`metric_id`)) {
        NonXBRLFactObject[["metric_id"]] <-
          self$`metric_id`
      }
      if (!is.null(self$`range_high`)) {
        NonXBRLFactObject[["range_high"]] <-
          self$`range_high`
      }
      if (!is.null(self$`range_low`)) {
        NonXBRLFactObject[["range_low"]] <-
          self$`range_low`
      }
      if (!is.null(self$`sec_filing_URL`)) {
        NonXBRLFactObject[["sec_filing_URL"]] <-
          self$`sec_filing_URL`
      }
      if (!is.null(self$`sec_html_url`)) {
        NonXBRLFactObject[["sec_html_url"]] <-
          self$`sec_html_url`
      }
      if (!is.null(self$`special_fact_type`)) {
        NonXBRLFactObject[["special_fact_type"]] <-
          self$`special_fact_type`
      }
      if (!is.null(self$`statement_type`)) {
        NonXBRLFactObject[["statement_type"]] <-
          self$`statement_type`
      }
      if (!is.null(self$`tabular_item`)) {
        NonXBRLFactObject[["tabular_item"]] <-
          self$`tabular_item`
      }
      if (!is.null(self$`ticker`)) {
        NonXBRLFactObject[["ticker"]] <-
          self$`ticker`
      }
      if (!is.null(self$`filing_type`)) {
        NonXBRLFactObject[["filing_type"]] <-
          self$`filing_type`
      }
      NonXBRLFactObject
    },
    #' Deserialize JSON string into an instance of NonXBRLFact
    #'
    #' @description
    #' Deserialize JSON string into an instance of NonXBRLFact
    #'
    #' @param input_json the JSON input
    #' @return the instance of NonXBRLFact
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`companyID`)) {
        self$`companyID` <- this_object$`companyID`
      }
      if (!is.null(this_object$`CIK`)) {
        self$`CIK` <- this_object$`CIK`
      }
      if (!is.null(this_object$`UOM`)) {
        self$`UOM` <- this_object$`UOM`
      }
      if (!is.null(this_object$`Value`)) {
        self$`Value` <- this_object$`Value`
      }
      if (!is.null(this_object$`XBRLfilingID`)) {
        self$`XBRLfilingID` <- this_object$`XBRLfilingID`
      }
      if (!is.null(this_object$`column_label`)) {
        self$`column_label` <- this_object$`column_label`
      }
      if (!is.null(this_object$`document`)) {
        self$`document` <- this_object$`document`
      }
      if (!is.null(this_object$`entity_name`)) {
        self$`entity_name` <- this_object$`entity_name`
      }
      if (!is.null(this_object$`extract_tag`)) {
        self$`extract_tag` <- this_object$`extract_tag`
      }
      if (!is.null(this_object$`fact_id`)) {
        self$`fact_id` <- this_object$`fact_id`
      }
      if (!is.null(this_object$`filingID`)) {
        self$`filingID` <- this_object$`filingID`
      }
      if (!is.null(this_object$`filing_date`)) {
        self$`filing_date` <- this_object$`filing_date`
      }
      if (!is.null(this_object$`filing_end_date`)) {
        self$`filing_end_date` <- this_object$`filing_end_date`
      }
      if (!is.null(this_object$`filing_period`)) {
        self$`filing_period` <- this_object$`filing_period`
      }
      if (!is.null(this_object$`filing_year`)) {
        self$`filing_year` <- this_object$`filing_year`
      }
      if (!is.null(this_object$`fiscal_period`)) {
        self$`fiscal_period` <- this_object$`fiscal_period`
      }
      if (!is.null(this_object$`fiscal_year`)) {
        self$`fiscal_year` <- this_object$`fiscal_year`
      }
      if (!is.null(this_object$`is_guidance`)) {
        self$`is_guidance` <- this_object$`is_guidance`
      }
      if (!is.null(this_object$`is_non_gaap`)) {
        self$`is_non_gaap` <- this_object$`is_non_gaap`
      }
      if (!is.null(this_object$`label`)) {
        self$`label` <- this_object$`label`
      }
      if (!is.null(this_object$`metric`)) {
        self$`metric` <- this_object$`metric`
      }
      if (!is.null(this_object$`metric_id`)) {
        self$`metric_id` <- this_object$`metric_id`
      }
      if (!is.null(this_object$`range_high`)) {
        self$`range_high` <- this_object$`range_high`
      }
      if (!is.null(this_object$`range_low`)) {
        self$`range_low` <- this_object$`range_low`
      }
      if (!is.null(this_object$`sec_filing_URL`)) {
        self$`sec_filing_URL` <- this_object$`sec_filing_URL`
      }
      if (!is.null(this_object$`sec_html_url`)) {
        self$`sec_html_url` <- this_object$`sec_html_url`
      }
      if (!is.null(this_object$`special_fact_type`)) {
        self$`special_fact_type` <- this_object$`special_fact_type`
      }
      if (!is.null(this_object$`statement_type`)) {
        if (!is.null(this_object$`statement_type`) && !(this_object$`statement_type` %in% c("unset", "docEntityInfo", "IncomeStatement", "BalanceSheet", "CashFlow", "Disclosure", "StockholdersEquity", "StatementOfComprehensiveIncome", "IncomeStatementParenthetical", "BalanceSheetParenthetical", "CashFlowParenthetical", "DisclosureParenthetical", "stockholdersEquityParenthetical", "StatementOfComprehensiveIncomeParenthetical", "extensionAnchoring"))) {
          stop(paste("Error! \"", this_object$`statement_type`, "\" cannot be assigned to `statement_type`. Must be \"unset\", \"docEntityInfo\", \"IncomeStatement\", \"BalanceSheet\", \"CashFlow\", \"Disclosure\", \"StockholdersEquity\", \"StatementOfComprehensiveIncome\", \"IncomeStatementParenthetical\", \"BalanceSheetParenthetical\", \"CashFlowParenthetical\", \"DisclosureParenthetical\", \"stockholdersEquityParenthetical\", \"StatementOfComprehensiveIncomeParenthetical\", \"extensionAnchoring\".", sep = ""))
        }
        self$`statement_type` <- this_object$`statement_type`
      }
      if (!is.null(this_object$`tabular_item`)) {
        self$`tabular_item` <- this_object$`tabular_item`
      }
      if (!is.null(this_object$`ticker`)) {
        self$`ticker` <- this_object$`ticker`
      }
      if (!is.null(this_object$`filing_type`)) {
        if (!is.null(this_object$`filing_type`) && !(this_object$`filing_type` %in% c("BusinessWirePR_filedAfterAn8K", "BusinessWirePR_replaced", "proxy", "annualQuarterlyReport", "eightk_earningsPressRelease", "eightk_guidanceUpdate", "eightk_conferenceCallTranscript", "eightk_presentationSlides", "eightk_monthlyOperatingMetrics", "eightk_earningsPressRelease_preliminary", "eightk_earningsPressRelease_correction", "eightk_other", "commentLetter", "commentLetterResponse", "form_3", "form_4", "form_5", "eightk_nonfinancial", "NT10KorQ", "S", "Four24B", "institutionalOwnsership_13F", "ForeignAnnualOrInterimReport"))) {
          stop(paste("Error! \"", this_object$`filing_type`, "\" cannot be assigned to `filing_type`. Must be \"BusinessWirePR_filedAfterAn8K\", \"BusinessWirePR_replaced\", \"proxy\", \"annualQuarterlyReport\", \"eightk_earningsPressRelease\", \"eightk_guidanceUpdate\", \"eightk_conferenceCallTranscript\", \"eightk_presentationSlides\", \"eightk_monthlyOperatingMetrics\", \"eightk_earningsPressRelease_preliminary\", \"eightk_earningsPressRelease_correction\", \"eightk_other\", \"commentLetter\", \"commentLetterResponse\", \"form_3\", \"form_4\", \"form_5\", \"eightk_nonfinancial\", \"NT10KorQ\", \"S\", \"Four24B\", \"institutionalOwnsership_13F\", \"ForeignAnnualOrInterimReport\".", sep = ""))
        }
        self$`filing_type` <- this_object$`filing_type`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return NonXBRLFact in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`companyID`)) {
          sprintf(
          '"companyID":
            %d
                    ',
          self$`companyID`
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
        if (!is.null(self$`UOM`)) {
          sprintf(
          '"UOM":
            "%s"
                    ',
          self$`UOM`
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
        if (!is.null(self$`XBRLfilingID`)) {
          sprintf(
          '"XBRLfilingID":
            %d
                    ',
          self$`XBRLfilingID`
          )
        },
        if (!is.null(self$`column_label`)) {
          sprintf(
          '"column_label":
            "%s"
                    ',
          self$`column_label`
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
        if (!is.null(self$`entity_name`)) {
          sprintf(
          '"entity_name":
            "%s"
                    ',
          self$`entity_name`
          )
        },
        if (!is.null(self$`extract_tag`)) {
          sprintf(
          '"extract_tag":
            "%s"
                    ',
          self$`extract_tag`
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
        if (!is.null(self$`filingID`)) {
          sprintf(
          '"filingID":
            %d
                    ',
          self$`filingID`
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
        if (!is.null(self$`filing_end_date`)) {
          sprintf(
          '"filing_end_date":
            "%s"
                    ',
          self$`filing_end_date`
          )
        },
        if (!is.null(self$`filing_period`)) {
          sprintf(
          '"filing_period":
            %d
                    ',
          self$`filing_period`
          )
        },
        if (!is.null(self$`filing_year`)) {
          sprintf(
          '"filing_year":
            %d
                    ',
          self$`filing_year`
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
        if (!is.null(self$`is_guidance`)) {
          sprintf(
          '"is_guidance":
            %s
                    ',
          tolower(self$`is_guidance`)
          )
        },
        if (!is.null(self$`is_non_gaap`)) {
          sprintf(
          '"is_non_gaap":
            %s
                    ',
          tolower(self$`is_non_gaap`)
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
        if (!is.null(self$`metric`)) {
          sprintf(
          '"metric":
            "%s"
                    ',
          self$`metric`
          )
        },
        if (!is.null(self$`metric_id`)) {
          sprintf(
          '"metric_id":
            %d
                    ',
          self$`metric_id`
          )
        },
        if (!is.null(self$`range_high`)) {
          sprintf(
          '"range_high":
            %s
                    ',
          tolower(self$`range_high`)
          )
        },
        if (!is.null(self$`range_low`)) {
          sprintf(
          '"range_low":
            %s
                    ',
          tolower(self$`range_low`)
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
        if (!is.null(self$`sec_html_url`)) {
          sprintf(
          '"sec_html_url":
            "%s"
                    ',
          self$`sec_html_url`
          )
        },
        if (!is.null(self$`special_fact_type`)) {
          sprintf(
          '"special_fact_type":
            "%s"
                    ',
          self$`special_fact_type`
          )
        },
        if (!is.null(self$`statement_type`)) {
          sprintf(
          '"statement_type":
            "%s"
                    ',
          self$`statement_type`
          )
        },
        if (!is.null(self$`tabular_item`)) {
          sprintf(
          '"tabular_item":
            %s
                    ',
          tolower(self$`tabular_item`)
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
        if (!is.null(self$`filing_type`)) {
          sprintf(
          '"filing_type":
            "%s"
                    ',
          self$`filing_type`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of NonXBRLFact
    #'
    #' @description
    #' Deserialize JSON string into an instance of NonXBRLFact
    #'
    #' @param input_json the JSON input
    #' @return the instance of NonXBRLFact
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`companyID` <- this_object$`companyID`
      self$`CIK` <- this_object$`CIK`
      self$`UOM` <- this_object$`UOM`
      self$`Value` <- this_object$`Value`
      self$`XBRLfilingID` <- this_object$`XBRLfilingID`
      self$`column_label` <- this_object$`column_label`
      self$`document` <- this_object$`document`
      self$`entity_name` <- this_object$`entity_name`
      self$`extract_tag` <- this_object$`extract_tag`
      self$`fact_id` <- this_object$`fact_id`
      self$`filingID` <- this_object$`filingID`
      self$`filing_date` <- this_object$`filing_date`
      self$`filing_end_date` <- this_object$`filing_end_date`
      self$`filing_period` <- this_object$`filing_period`
      self$`filing_year` <- this_object$`filing_year`
      self$`fiscal_period` <- this_object$`fiscal_period`
      self$`fiscal_year` <- this_object$`fiscal_year`
      self$`is_guidance` <- this_object$`is_guidance`
      self$`is_non_gaap` <- this_object$`is_non_gaap`
      self$`label` <- this_object$`label`
      self$`metric` <- this_object$`metric`
      self$`metric_id` <- this_object$`metric_id`
      self$`range_high` <- this_object$`range_high`
      self$`range_low` <- this_object$`range_low`
      self$`sec_filing_URL` <- this_object$`sec_filing_URL`
      self$`sec_html_url` <- this_object$`sec_html_url`
      self$`special_fact_type` <- this_object$`special_fact_type`
      if (!is.null(this_object$`statement_type`) && !(this_object$`statement_type` %in% c("unset", "docEntityInfo", "IncomeStatement", "BalanceSheet", "CashFlow", "Disclosure", "StockholdersEquity", "StatementOfComprehensiveIncome", "IncomeStatementParenthetical", "BalanceSheetParenthetical", "CashFlowParenthetical", "DisclosureParenthetical", "stockholdersEquityParenthetical", "StatementOfComprehensiveIncomeParenthetical", "extensionAnchoring"))) {
        stop(paste("Error! \"", this_object$`statement_type`, "\" cannot be assigned to `statement_type`. Must be \"unset\", \"docEntityInfo\", \"IncomeStatement\", \"BalanceSheet\", \"CashFlow\", \"Disclosure\", \"StockholdersEquity\", \"StatementOfComprehensiveIncome\", \"IncomeStatementParenthetical\", \"BalanceSheetParenthetical\", \"CashFlowParenthetical\", \"DisclosureParenthetical\", \"stockholdersEquityParenthetical\", \"StatementOfComprehensiveIncomeParenthetical\", \"extensionAnchoring\".", sep = ""))
      }
      self$`statement_type` <- this_object$`statement_type`
      self$`tabular_item` <- this_object$`tabular_item`
      self$`ticker` <- this_object$`ticker`
      if (!is.null(this_object$`filing_type`) && !(this_object$`filing_type` %in% c("BusinessWirePR_filedAfterAn8K", "BusinessWirePR_replaced", "proxy", "annualQuarterlyReport", "eightk_earningsPressRelease", "eightk_guidanceUpdate", "eightk_conferenceCallTranscript", "eightk_presentationSlides", "eightk_monthlyOperatingMetrics", "eightk_earningsPressRelease_preliminary", "eightk_earningsPressRelease_correction", "eightk_other", "commentLetter", "commentLetterResponse", "form_3", "form_4", "form_5", "eightk_nonfinancial", "NT10KorQ", "S", "Four24B", "institutionalOwnsership_13F", "ForeignAnnualOrInterimReport"))) {
        stop(paste("Error! \"", this_object$`filing_type`, "\" cannot be assigned to `filing_type`. Must be \"BusinessWirePR_filedAfterAn8K\", \"BusinessWirePR_replaced\", \"proxy\", \"annualQuarterlyReport\", \"eightk_earningsPressRelease\", \"eightk_guidanceUpdate\", \"eightk_conferenceCallTranscript\", \"eightk_presentationSlides\", \"eightk_monthlyOperatingMetrics\", \"eightk_earningsPressRelease_preliminary\", \"eightk_earningsPressRelease_correction\", \"eightk_other\", \"commentLetter\", \"commentLetterResponse\", \"form_3\", \"form_4\", \"form_5\", \"eightk_nonfinancial\", \"NT10KorQ\", \"S\", \"Four24B\", \"institutionalOwnsership_13F\", \"ForeignAnnualOrInterimReport\".", sep = ""))
      }
      self$`filing_type` <- this_object$`filing_type`
      self
    },
    #' Validate JSON input with respect to NonXBRLFact
    #'
    #' @description
    #' Validate JSON input with respect to NonXBRLFact and throw an exception if invalid
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
    #' @return String representation of NonXBRLFact
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
# NonXBRLFact$unlock()
#
## Below is an example to define the print function
# NonXBRLFact$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# NonXBRLFact$lock()

