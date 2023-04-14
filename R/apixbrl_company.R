#' Create a new APIXBRLCompany
#'
#' @description
#' APIXBRLCompany Class
#'
#' @docType class
#' @title APIXBRLCompany
#' @description APIXBRLCompany Class
#' @format An \code{R6Class} generator object
#' @field entity_name  character [optional]
#' @field entity_id  integer [optional]
#' @field ticker  character [optional]
#' @field entity_code  character [optional]
#' @field sic_code  integer [optional]
#' @field naics  integer [optional]
#' @field naics2  integer [optional]
#' @field assets  numeric [optional]
#' @field revenue  numeric [optional]
#' @field state  character [optional]
#' @field country  character [optional]
#' @field zip  character [optional]
#' @field EntityIncorporationStateCountryCode  character [optional]
#' @field EntityTaxIdentificationNumber  character [optional]
#' @field SecurityExchangeName  character [optional]
#' @field FYEndDateChange  integer [optional]
#' @field status  character [optional]
#' @field Street1  character [optional]
#' @field Street2  character [optional]
#' @field most_recent_filing  character [optional]
#' @field most_recent_full_year_end  character [optional]
#' @field most_recent_fiscal_year  integer [optional]
#' @field most_recent_complete_calendar_year  integer [optional]
#' @field most_recent_complete_fiscal_year  integer [optional]
#' @field most_recent_filing_calendar_period  integer [optional]
#' @field most_recent_filing_calendar_year  integer [optional]
#' @field first_filing  character [optional]
#' @field cik_code  object [optional]
#' @field SICCategory  character [optional]
#' @field naics_code  object [optional]
#' @field city  character [optional]
#' @field street_address  character [optional]
#' @field naics_minor_group_title  character [optional]
#' @field SICGroupMinorGroupTitle  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
APIXBRLCompany <- R6::R6Class(
  "APIXBRLCompany",
  public = list(
    `entity_name` = NULL,
    `entity_id` = NULL,
    `ticker` = NULL,
    `entity_code` = NULL,
    `sic_code` = NULL,
    `naics` = NULL,
    `naics2` = NULL,
    `assets` = NULL,
    `revenue` = NULL,
    `state` = NULL,
    `country` = NULL,
    `zip` = NULL,
    `EntityIncorporationStateCountryCode` = NULL,
    `EntityTaxIdentificationNumber` = NULL,
    `SecurityExchangeName` = NULL,
    `FYEndDateChange` = NULL,
    `status` = NULL,
    `Street1` = NULL,
    `Street2` = NULL,
    `most_recent_filing` = NULL,
    `most_recent_full_year_end` = NULL,
    `most_recent_fiscal_year` = NULL,
    `most_recent_complete_calendar_year` = NULL,
    `most_recent_complete_fiscal_year` = NULL,
    `most_recent_filing_calendar_period` = NULL,
    `most_recent_filing_calendar_year` = NULL,
    `first_filing` = NULL,
    `cik_code` = NULL,
    `SICCategory` = NULL,
    `naics_code` = NULL,
    `city` = NULL,
    `street_address` = NULL,
    `naics_minor_group_title` = NULL,
    `SICGroupMinorGroupTitle` = NULL,
    #' Initialize a new APIXBRLCompany class.
    #'
    #' @description
    #' Initialize a new APIXBRLCompany class.
    #'
    #' @param entity_name entity_name
    #' @param entity_id entity_id
    #' @param ticker ticker
    #' @param entity_code entity_code
    #' @param sic_code sic_code
    #' @param naics naics
    #' @param naics2 naics2
    #' @param assets assets
    #' @param revenue revenue
    #' @param state state
    #' @param country country
    #' @param zip zip
    #' @param EntityIncorporationStateCountryCode EntityIncorporationStateCountryCode
    #' @param EntityTaxIdentificationNumber EntityTaxIdentificationNumber
    #' @param SecurityExchangeName SecurityExchangeName
    #' @param FYEndDateChange FYEndDateChange
    #' @param status status
    #' @param Street1 Street1
    #' @param Street2 Street2
    #' @param most_recent_filing most_recent_filing
    #' @param most_recent_full_year_end most_recent_full_year_end
    #' @param most_recent_fiscal_year most_recent_fiscal_year
    #' @param most_recent_complete_calendar_year most_recent_complete_calendar_year
    #' @param most_recent_complete_fiscal_year most_recent_complete_fiscal_year
    #' @param most_recent_filing_calendar_period most_recent_filing_calendar_period
    #' @param most_recent_filing_calendar_year most_recent_filing_calendar_year
    #' @param first_filing first_filing
    #' @param cik_code cik_code
    #' @param SICCategory SICCategory
    #' @param naics_code naics_code
    #' @param city city
    #' @param street_address street_address
    #' @param naics_minor_group_title naics_minor_group_title
    #' @param SICGroupMinorGroupTitle SICGroupMinorGroupTitle
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entity_name` = NULL, `entity_id` = NULL, `ticker` = NULL, `entity_code` = NULL, `sic_code` = NULL, `naics` = NULL, `naics2` = NULL, `assets` = NULL, `revenue` = NULL, `state` = NULL, `country` = NULL, `zip` = NULL, `EntityIncorporationStateCountryCode` = NULL, `EntityTaxIdentificationNumber` = NULL, `SecurityExchangeName` = NULL, `FYEndDateChange` = NULL, `status` = NULL, `Street1` = NULL, `Street2` = NULL, `most_recent_filing` = NULL, `most_recent_full_year_end` = NULL, `most_recent_fiscal_year` = NULL, `most_recent_complete_calendar_year` = NULL, `most_recent_complete_fiscal_year` = NULL, `most_recent_filing_calendar_period` = NULL, `most_recent_filing_calendar_year` = NULL, `first_filing` = NULL, `cik_code` = NULL, `SICCategory` = NULL, `naics_code` = NULL, `city` = NULL, `street_address` = NULL, `naics_minor_group_title` = NULL, `SICGroupMinorGroupTitle` = NULL, ...) {
      if (!is.null(`entity_name`)) {
        if (!(is.character(`entity_name`) && length(`entity_name`) == 1)) {
          stop(paste("Error! Invalid data for `entity_name`. Must be a string:", `entity_name`))
        }
        self$`entity_name` <- `entity_name`
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
      if (!is.null(`entity_code`)) {
        if (!(is.character(`entity_code`) && length(`entity_code`) == 1)) {
          stop(paste("Error! Invalid data for `entity_code`. Must be a string:", `entity_code`))
        }
        self$`entity_code` <- `entity_code`
      }
      if (!is.null(`sic_code`)) {
        if (!(is.numeric(`sic_code`) && length(`sic_code`) == 1)) {
          stop(paste("Error! Invalid data for `sic_code`. Must be an integer:", `sic_code`))
        }
        self$`sic_code` <- `sic_code`
      }
      if (!is.null(`naics`)) {
        if (!(is.numeric(`naics`) && length(`naics`) == 1)) {
          stop(paste("Error! Invalid data for `naics`. Must be an integer:", `naics`))
        }
        self$`naics` <- `naics`
      }
      if (!is.null(`naics2`)) {
        if (!(is.numeric(`naics2`) && length(`naics2`) == 1)) {
          stop(paste("Error! Invalid data for `naics2`. Must be an integer:", `naics2`))
        }
        self$`naics2` <- `naics2`
      }
      if (!is.null(`assets`)) {
        if (!(is.numeric(`assets`) && length(`assets`) == 1)) {
          stop(paste("Error! Invalid data for `assets`. Must be a number:", `assets`))
        }
        self$`assets` <- `assets`
      }
      if (!is.null(`revenue`)) {
        if (!(is.numeric(`revenue`) && length(`revenue`) == 1)) {
          stop(paste("Error! Invalid data for `revenue`. Must be a number:", `revenue`))
        }
        self$`revenue` <- `revenue`
      }
      if (!is.null(`state`)) {
        if (!(is.character(`state`) && length(`state`) == 1)) {
          stop(paste("Error! Invalid data for `state`. Must be a string:", `state`))
        }
        self$`state` <- `state`
      }
      if (!is.null(`country`)) {
        if (!(is.character(`country`) && length(`country`) == 1)) {
          stop(paste("Error! Invalid data for `country`. Must be a string:", `country`))
        }
        self$`country` <- `country`
      }
      if (!is.null(`zip`)) {
        if (!(is.character(`zip`) && length(`zip`) == 1)) {
          stop(paste("Error! Invalid data for `zip`. Must be a string:", `zip`))
        }
        self$`zip` <- `zip`
      }
      if (!is.null(`EntityIncorporationStateCountryCode`)) {
        if (!(is.character(`EntityIncorporationStateCountryCode`) && length(`EntityIncorporationStateCountryCode`) == 1)) {
          stop(paste("Error! Invalid data for `EntityIncorporationStateCountryCode`. Must be a string:", `EntityIncorporationStateCountryCode`))
        }
        self$`EntityIncorporationStateCountryCode` <- `EntityIncorporationStateCountryCode`
      }
      if (!is.null(`EntityTaxIdentificationNumber`)) {
        if (!(is.character(`EntityTaxIdentificationNumber`) && length(`EntityTaxIdentificationNumber`) == 1)) {
          stop(paste("Error! Invalid data for `EntityTaxIdentificationNumber`. Must be a string:", `EntityTaxIdentificationNumber`))
        }
        self$`EntityTaxIdentificationNumber` <- `EntityTaxIdentificationNumber`
      }
      if (!is.null(`SecurityExchangeName`)) {
        if (!(is.character(`SecurityExchangeName`) && length(`SecurityExchangeName`) == 1)) {
          stop(paste("Error! Invalid data for `SecurityExchangeName`. Must be a string:", `SecurityExchangeName`))
        }
        self$`SecurityExchangeName` <- `SecurityExchangeName`
      }
      if (!is.null(`FYEndDateChange`)) {
        if (!(is.numeric(`FYEndDateChange`) && length(`FYEndDateChange`) == 1)) {
          stop(paste("Error! Invalid data for `FYEndDateChange`. Must be an integer:", `FYEndDateChange`))
        }
        self$`FYEndDateChange` <- `FYEndDateChange`
      }
      if (!is.null(`status`)) {
        if (!(`status` %in% c("normal", "subsidiary", "inactive", "fundOrOtherNonCompany", "nonXBRLFilingEntity", "NonSEC_Japan", "ESMA_ESEF_XBRLFilingEntity"))) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be \"normal\", \"subsidiary\", \"inactive\", \"fundOrOtherNonCompany\", \"nonXBRLFilingEntity\", \"NonSEC_Japan\", \"ESMA_ESEF_XBRLFilingEntity\".", sep = ""))
        }
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`Street1`)) {
        if (!(is.character(`Street1`) && length(`Street1`) == 1)) {
          stop(paste("Error! Invalid data for `Street1`. Must be a string:", `Street1`))
        }
        self$`Street1` <- `Street1`
      }
      if (!is.null(`Street2`)) {
        if (!(is.character(`Street2`) && length(`Street2`) == 1)) {
          stop(paste("Error! Invalid data for `Street2`. Must be a string:", `Street2`))
        }
        self$`Street2` <- `Street2`
      }
      if (!is.null(`most_recent_filing`)) {
        if (!is.character(`most_recent_filing`)) {
          stop(paste("Error! Invalid data for `most_recent_filing`. Must be a string:", `most_recent_filing`))
        }
        self$`most_recent_filing` <- `most_recent_filing`
      }
      if (!is.null(`most_recent_full_year_end`)) {
        if (!is.character(`most_recent_full_year_end`)) {
          stop(paste("Error! Invalid data for `most_recent_full_year_end`. Must be a string:", `most_recent_full_year_end`))
        }
        self$`most_recent_full_year_end` <- `most_recent_full_year_end`
      }
      if (!is.null(`most_recent_fiscal_year`)) {
        if (!(is.numeric(`most_recent_fiscal_year`) && length(`most_recent_fiscal_year`) == 1)) {
          stop(paste("Error! Invalid data for `most_recent_fiscal_year`. Must be an integer:", `most_recent_fiscal_year`))
        }
        self$`most_recent_fiscal_year` <- `most_recent_fiscal_year`
      }
      if (!is.null(`most_recent_complete_calendar_year`)) {
        if (!(is.numeric(`most_recent_complete_calendar_year`) && length(`most_recent_complete_calendar_year`) == 1)) {
          stop(paste("Error! Invalid data for `most_recent_complete_calendar_year`. Must be an integer:", `most_recent_complete_calendar_year`))
        }
        self$`most_recent_complete_calendar_year` <- `most_recent_complete_calendar_year`
      }
      if (!is.null(`most_recent_complete_fiscal_year`)) {
        if (!(is.numeric(`most_recent_complete_fiscal_year`) && length(`most_recent_complete_fiscal_year`) == 1)) {
          stop(paste("Error! Invalid data for `most_recent_complete_fiscal_year`. Must be an integer:", `most_recent_complete_fiscal_year`))
        }
        self$`most_recent_complete_fiscal_year` <- `most_recent_complete_fiscal_year`
      }
      if (!is.null(`most_recent_filing_calendar_period`)) {
        if (!(is.numeric(`most_recent_filing_calendar_period`) && length(`most_recent_filing_calendar_period`) == 1)) {
          stop(paste("Error! Invalid data for `most_recent_filing_calendar_period`. Must be an integer:", `most_recent_filing_calendar_period`))
        }
        self$`most_recent_filing_calendar_period` <- `most_recent_filing_calendar_period`
      }
      if (!is.null(`most_recent_filing_calendar_year`)) {
        if (!(is.numeric(`most_recent_filing_calendar_year`) && length(`most_recent_filing_calendar_year`) == 1)) {
          stop(paste("Error! Invalid data for `most_recent_filing_calendar_year`. Must be an integer:", `most_recent_filing_calendar_year`))
        }
        self$`most_recent_filing_calendar_year` <- `most_recent_filing_calendar_year`
      }
      if (!is.null(`first_filing`)) {
        if (!is.character(`first_filing`)) {
          stop(paste("Error! Invalid data for `first_filing`. Must be a string:", `first_filing`))
        }
        self$`first_filing` <- `first_filing`
      }
      if (!is.null(`cik_code`)) {
        self$`cik_code` <- `cik_code`
      }
      if (!is.null(`SICCategory`)) {
        if (!(is.character(`SICCategory`) && length(`SICCategory`) == 1)) {
          stop(paste("Error! Invalid data for `SICCategory`. Must be a string:", `SICCategory`))
        }
        self$`SICCategory` <- `SICCategory`
      }
      if (!is.null(`naics_code`)) {
        self$`naics_code` <- `naics_code`
      }
      if (!is.null(`city`)) {
        if (!(is.character(`city`) && length(`city`) == 1)) {
          stop(paste("Error! Invalid data for `city`. Must be a string:", `city`))
        }
        self$`city` <- `city`
      }
      if (!is.null(`street_address`)) {
        if (!(is.character(`street_address`) && length(`street_address`) == 1)) {
          stop(paste("Error! Invalid data for `street_address`. Must be a string:", `street_address`))
        }
        self$`street_address` <- `street_address`
      }
      if (!is.null(`naics_minor_group_title`)) {
        if (!(is.character(`naics_minor_group_title`) && length(`naics_minor_group_title`) == 1)) {
          stop(paste("Error! Invalid data for `naics_minor_group_title`. Must be a string:", `naics_minor_group_title`))
        }
        self$`naics_minor_group_title` <- `naics_minor_group_title`
      }
      if (!is.null(`SICGroupMinorGroupTitle`)) {
        if (!(is.character(`SICGroupMinorGroupTitle`) && length(`SICGroupMinorGroupTitle`) == 1)) {
          stop(paste("Error! Invalid data for `SICGroupMinorGroupTitle`. Must be a string:", `SICGroupMinorGroupTitle`))
        }
        self$`SICGroupMinorGroupTitle` <- `SICGroupMinorGroupTitle`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return APIXBRLCompany in JSON format
    #' @export
    toJSON = function() {
      APIXBRLCompanyObject <- list()
      if (!is.null(self$`entity_name`)) {
        APIXBRLCompanyObject[["entity_name"]] <-
          self$`entity_name`
      }
      if (!is.null(self$`entity_id`)) {
        APIXBRLCompanyObject[["entity_id"]] <-
          self$`entity_id`
      }
      if (!is.null(self$`ticker`)) {
        APIXBRLCompanyObject[["ticker"]] <-
          self$`ticker`
      }
      if (!is.null(self$`entity_code`)) {
        APIXBRLCompanyObject[["entity_code"]] <-
          self$`entity_code`
      }
      if (!is.null(self$`sic_code`)) {
        APIXBRLCompanyObject[["sic_code"]] <-
          self$`sic_code`
      }
      if (!is.null(self$`naics`)) {
        APIXBRLCompanyObject[["naics"]] <-
          self$`naics`
      }
      if (!is.null(self$`naics2`)) {
        APIXBRLCompanyObject[["naics2"]] <-
          self$`naics2`
      }
      if (!is.null(self$`assets`)) {
        APIXBRLCompanyObject[["assets"]] <-
          self$`assets`
      }
      if (!is.null(self$`revenue`)) {
        APIXBRLCompanyObject[["revenue"]] <-
          self$`revenue`
      }
      if (!is.null(self$`state`)) {
        APIXBRLCompanyObject[["state"]] <-
          self$`state`
      }
      if (!is.null(self$`country`)) {
        APIXBRLCompanyObject[["country"]] <-
          self$`country`
      }
      if (!is.null(self$`zip`)) {
        APIXBRLCompanyObject[["zip"]] <-
          self$`zip`
      }
      if (!is.null(self$`EntityIncorporationStateCountryCode`)) {
        APIXBRLCompanyObject[["EntityIncorporationStateCountryCode"]] <-
          self$`EntityIncorporationStateCountryCode`
      }
      if (!is.null(self$`EntityTaxIdentificationNumber`)) {
        APIXBRLCompanyObject[["EntityTaxIdentificationNumber"]] <-
          self$`EntityTaxIdentificationNumber`
      }
      if (!is.null(self$`SecurityExchangeName`)) {
        APIXBRLCompanyObject[["SecurityExchangeName"]] <-
          self$`SecurityExchangeName`
      }
      if (!is.null(self$`FYEndDateChange`)) {
        APIXBRLCompanyObject[["FYEndDateChange"]] <-
          self$`FYEndDateChange`
      }
      if (!is.null(self$`status`)) {
        APIXBRLCompanyObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`Street1`)) {
        APIXBRLCompanyObject[["Street1"]] <-
          self$`Street1`
      }
      if (!is.null(self$`Street2`)) {
        APIXBRLCompanyObject[["Street2"]] <-
          self$`Street2`
      }
      if (!is.null(self$`most_recent_filing`)) {
        APIXBRLCompanyObject[["most_recent_filing"]] <-
          self$`most_recent_filing`
      }
      if (!is.null(self$`most_recent_full_year_end`)) {
        APIXBRLCompanyObject[["most_recent_full_year_end"]] <-
          self$`most_recent_full_year_end`
      }
      if (!is.null(self$`most_recent_fiscal_year`)) {
        APIXBRLCompanyObject[["most_recent_fiscal_year"]] <-
          self$`most_recent_fiscal_year`
      }
      if (!is.null(self$`most_recent_complete_calendar_year`)) {
        APIXBRLCompanyObject[["most_recent_complete_calendar_year"]] <-
          self$`most_recent_complete_calendar_year`
      }
      if (!is.null(self$`most_recent_complete_fiscal_year`)) {
        APIXBRLCompanyObject[["most_recent_complete_fiscal_year"]] <-
          self$`most_recent_complete_fiscal_year`
      }
      if (!is.null(self$`most_recent_filing_calendar_period`)) {
        APIXBRLCompanyObject[["most_recent_filing_calendar_period"]] <-
          self$`most_recent_filing_calendar_period`
      }
      if (!is.null(self$`most_recent_filing_calendar_year`)) {
        APIXBRLCompanyObject[["most_recent_filing_calendar_year"]] <-
          self$`most_recent_filing_calendar_year`
      }
      if (!is.null(self$`first_filing`)) {
        APIXBRLCompanyObject[["first_filing"]] <-
          self$`first_filing`
      }
      if (!is.null(self$`cik_code`)) {
        APIXBRLCompanyObject[["cik_code"]] <-
          self$`cik_code`
      }
      if (!is.null(self$`SICCategory`)) {
        APIXBRLCompanyObject[["SICCategory"]] <-
          self$`SICCategory`
      }
      if (!is.null(self$`naics_code`)) {
        APIXBRLCompanyObject[["naics_code"]] <-
          self$`naics_code`
      }
      if (!is.null(self$`city`)) {
        APIXBRLCompanyObject[["city"]] <-
          self$`city`
      }
      if (!is.null(self$`street_address`)) {
        APIXBRLCompanyObject[["street_address"]] <-
          self$`street_address`
      }
      if (!is.null(self$`naics_minor_group_title`)) {
        APIXBRLCompanyObject[["naics_minor_group_title"]] <-
          self$`naics_minor_group_title`
      }
      if (!is.null(self$`SICGroupMinorGroupTitle`)) {
        APIXBRLCompanyObject[["SICGroupMinorGroupTitle"]] <-
          self$`SICGroupMinorGroupTitle`
      }
      APIXBRLCompanyObject
    },
    #' Deserialize JSON string into an instance of APIXBRLCompany
    #'
    #' @description
    #' Deserialize JSON string into an instance of APIXBRLCompany
    #'
    #' @param input_json the JSON input
    #' @return the instance of APIXBRLCompany
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`entity_name`)) {
        self$`entity_name` <- this_object$`entity_name`
      }
      if (!is.null(this_object$`entity_id`)) {
        self$`entity_id` <- this_object$`entity_id`
      }
      if (!is.null(this_object$`ticker`)) {
        self$`ticker` <- this_object$`ticker`
      }
      if (!is.null(this_object$`entity_code`)) {
        self$`entity_code` <- this_object$`entity_code`
      }
      if (!is.null(this_object$`sic_code`)) {
        self$`sic_code` <- this_object$`sic_code`
      }
      if (!is.null(this_object$`naics`)) {
        self$`naics` <- this_object$`naics`
      }
      if (!is.null(this_object$`naics2`)) {
        self$`naics2` <- this_object$`naics2`
      }
      if (!is.null(this_object$`assets`)) {
        self$`assets` <- this_object$`assets`
      }
      if (!is.null(this_object$`revenue`)) {
        self$`revenue` <- this_object$`revenue`
      }
      if (!is.null(this_object$`state`)) {
        self$`state` <- this_object$`state`
      }
      if (!is.null(this_object$`country`)) {
        self$`country` <- this_object$`country`
      }
      if (!is.null(this_object$`zip`)) {
        self$`zip` <- this_object$`zip`
      }
      if (!is.null(this_object$`EntityIncorporationStateCountryCode`)) {
        self$`EntityIncorporationStateCountryCode` <- this_object$`EntityIncorporationStateCountryCode`
      }
      if (!is.null(this_object$`EntityTaxIdentificationNumber`)) {
        self$`EntityTaxIdentificationNumber` <- this_object$`EntityTaxIdentificationNumber`
      }
      if (!is.null(this_object$`SecurityExchangeName`)) {
        self$`SecurityExchangeName` <- this_object$`SecurityExchangeName`
      }
      if (!is.null(this_object$`FYEndDateChange`)) {
        self$`FYEndDateChange` <- this_object$`FYEndDateChange`
      }
      if (!is.null(this_object$`status`)) {
        if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("normal", "subsidiary", "inactive", "fundOrOtherNonCompany", "nonXBRLFilingEntity", "NonSEC_Japan", "ESMA_ESEF_XBRLFilingEntity"))) {
          stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"normal\", \"subsidiary\", \"inactive\", \"fundOrOtherNonCompany\", \"nonXBRLFilingEntity\", \"NonSEC_Japan\", \"ESMA_ESEF_XBRLFilingEntity\".", sep = ""))
        }
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`Street1`)) {
        self$`Street1` <- this_object$`Street1`
      }
      if (!is.null(this_object$`Street2`)) {
        self$`Street2` <- this_object$`Street2`
      }
      if (!is.null(this_object$`most_recent_filing`)) {
        self$`most_recent_filing` <- this_object$`most_recent_filing`
      }
      if (!is.null(this_object$`most_recent_full_year_end`)) {
        self$`most_recent_full_year_end` <- this_object$`most_recent_full_year_end`
      }
      if (!is.null(this_object$`most_recent_fiscal_year`)) {
        self$`most_recent_fiscal_year` <- this_object$`most_recent_fiscal_year`
      }
      if (!is.null(this_object$`most_recent_complete_calendar_year`)) {
        self$`most_recent_complete_calendar_year` <- this_object$`most_recent_complete_calendar_year`
      }
      if (!is.null(this_object$`most_recent_complete_fiscal_year`)) {
        self$`most_recent_complete_fiscal_year` <- this_object$`most_recent_complete_fiscal_year`
      }
      if (!is.null(this_object$`most_recent_filing_calendar_period`)) {
        self$`most_recent_filing_calendar_period` <- this_object$`most_recent_filing_calendar_period`
      }
      if (!is.null(this_object$`most_recent_filing_calendar_year`)) {
        self$`most_recent_filing_calendar_year` <- this_object$`most_recent_filing_calendar_year`
      }
      if (!is.null(this_object$`first_filing`)) {
        self$`first_filing` <- this_object$`first_filing`
      }
      if (!is.null(this_object$`cik_code`)) {
        self$`cik_code` <- this_object$`cik_code`
      }
      if (!is.null(this_object$`SICCategory`)) {
        self$`SICCategory` <- this_object$`SICCategory`
      }
      if (!is.null(this_object$`naics_code`)) {
        self$`naics_code` <- this_object$`naics_code`
      }
      if (!is.null(this_object$`city`)) {
        self$`city` <- this_object$`city`
      }
      if (!is.null(this_object$`street_address`)) {
        self$`street_address` <- this_object$`street_address`
      }
      if (!is.null(this_object$`naics_minor_group_title`)) {
        self$`naics_minor_group_title` <- this_object$`naics_minor_group_title`
      }
      if (!is.null(this_object$`SICGroupMinorGroupTitle`)) {
        self$`SICGroupMinorGroupTitle` <- this_object$`SICGroupMinorGroupTitle`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return APIXBRLCompany in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`entity_name`)) {
          sprintf(
          '"entity_name":
            "%s"
                    ',
          self$`entity_name`
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
        if (!is.null(self$`entity_code`)) {
          sprintf(
          '"entity_code":
            "%s"
                    ',
          self$`entity_code`
          )
        },
        if (!is.null(self$`sic_code`)) {
          sprintf(
          '"sic_code":
            %d
                    ',
          self$`sic_code`
          )
        },
        if (!is.null(self$`naics`)) {
          sprintf(
          '"naics":
            %d
                    ',
          self$`naics`
          )
        },
        if (!is.null(self$`naics2`)) {
          sprintf(
          '"naics2":
            %d
                    ',
          self$`naics2`
          )
        },
        if (!is.null(self$`assets`)) {
          sprintf(
          '"assets":
            %d
                    ',
          self$`assets`
          )
        },
        if (!is.null(self$`revenue`)) {
          sprintf(
          '"revenue":
            %d
                    ',
          self$`revenue`
          )
        },
        if (!is.null(self$`state`)) {
          sprintf(
          '"state":
            "%s"
                    ',
          self$`state`
          )
        },
        if (!is.null(self$`country`)) {
          sprintf(
          '"country":
            "%s"
                    ',
          self$`country`
          )
        },
        if (!is.null(self$`zip`)) {
          sprintf(
          '"zip":
            "%s"
                    ',
          self$`zip`
          )
        },
        if (!is.null(self$`EntityIncorporationStateCountryCode`)) {
          sprintf(
          '"EntityIncorporationStateCountryCode":
            "%s"
                    ',
          self$`EntityIncorporationStateCountryCode`
          )
        },
        if (!is.null(self$`EntityTaxIdentificationNumber`)) {
          sprintf(
          '"EntityTaxIdentificationNumber":
            "%s"
                    ',
          self$`EntityTaxIdentificationNumber`
          )
        },
        if (!is.null(self$`SecurityExchangeName`)) {
          sprintf(
          '"SecurityExchangeName":
            "%s"
                    ',
          self$`SecurityExchangeName`
          )
        },
        if (!is.null(self$`FYEndDateChange`)) {
          sprintf(
          '"FYEndDateChange":
            %d
                    ',
          self$`FYEndDateChange`
          )
        },
        if (!is.null(self$`status`)) {
          sprintf(
          '"status":
            "%s"
                    ',
          self$`status`
          )
        },
        if (!is.null(self$`Street1`)) {
          sprintf(
          '"Street1":
            "%s"
                    ',
          self$`Street1`
          )
        },
        if (!is.null(self$`Street2`)) {
          sprintf(
          '"Street2":
            "%s"
                    ',
          self$`Street2`
          )
        },
        if (!is.null(self$`most_recent_filing`)) {
          sprintf(
          '"most_recent_filing":
            "%s"
                    ',
          self$`most_recent_filing`
          )
        },
        if (!is.null(self$`most_recent_full_year_end`)) {
          sprintf(
          '"most_recent_full_year_end":
            "%s"
                    ',
          self$`most_recent_full_year_end`
          )
        },
        if (!is.null(self$`most_recent_fiscal_year`)) {
          sprintf(
          '"most_recent_fiscal_year":
            %d
                    ',
          self$`most_recent_fiscal_year`
          )
        },
        if (!is.null(self$`most_recent_complete_calendar_year`)) {
          sprintf(
          '"most_recent_complete_calendar_year":
            %d
                    ',
          self$`most_recent_complete_calendar_year`
          )
        },
        if (!is.null(self$`most_recent_complete_fiscal_year`)) {
          sprintf(
          '"most_recent_complete_fiscal_year":
            %d
                    ',
          self$`most_recent_complete_fiscal_year`
          )
        },
        if (!is.null(self$`most_recent_filing_calendar_period`)) {
          sprintf(
          '"most_recent_filing_calendar_period":
            %d
                    ',
          self$`most_recent_filing_calendar_period`
          )
        },
        if (!is.null(self$`most_recent_filing_calendar_year`)) {
          sprintf(
          '"most_recent_filing_calendar_year":
            %d
                    ',
          self$`most_recent_filing_calendar_year`
          )
        },
        if (!is.null(self$`first_filing`)) {
          sprintf(
          '"first_filing":
            "%s"
                    ',
          self$`first_filing`
          )
        },
        if (!is.null(self$`cik_code`)) {
          sprintf(
          '"cik_code":
            "%s"
                    ',
          self$`cik_code`
          )
        },
        if (!is.null(self$`SICCategory`)) {
          sprintf(
          '"SICCategory":
            "%s"
                    ',
          self$`SICCategory`
          )
        },
        if (!is.null(self$`naics_code`)) {
          sprintf(
          '"naics_code":
            "%s"
                    ',
          self$`naics_code`
          )
        },
        if (!is.null(self$`city`)) {
          sprintf(
          '"city":
            "%s"
                    ',
          self$`city`
          )
        },
        if (!is.null(self$`street_address`)) {
          sprintf(
          '"street_address":
            "%s"
                    ',
          self$`street_address`
          )
        },
        if (!is.null(self$`naics_minor_group_title`)) {
          sprintf(
          '"naics_minor_group_title":
            "%s"
                    ',
          self$`naics_minor_group_title`
          )
        },
        if (!is.null(self$`SICGroupMinorGroupTitle`)) {
          sprintf(
          '"SICGroupMinorGroupTitle":
            "%s"
                    ',
          self$`SICGroupMinorGroupTitle`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of APIXBRLCompany
    #'
    #' @description
    #' Deserialize JSON string into an instance of APIXBRLCompany
    #'
    #' @param input_json the JSON input
    #' @return the instance of APIXBRLCompany
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entity_name` <- this_object$`entity_name`
      self$`entity_id` <- this_object$`entity_id`
      self$`ticker` <- this_object$`ticker`
      self$`entity_code` <- this_object$`entity_code`
      self$`sic_code` <- this_object$`sic_code`
      self$`naics` <- this_object$`naics`
      self$`naics2` <- this_object$`naics2`
      self$`assets` <- this_object$`assets`
      self$`revenue` <- this_object$`revenue`
      self$`state` <- this_object$`state`
      self$`country` <- this_object$`country`
      self$`zip` <- this_object$`zip`
      self$`EntityIncorporationStateCountryCode` <- this_object$`EntityIncorporationStateCountryCode`
      self$`EntityTaxIdentificationNumber` <- this_object$`EntityTaxIdentificationNumber`
      self$`SecurityExchangeName` <- this_object$`SecurityExchangeName`
      self$`FYEndDateChange` <- this_object$`FYEndDateChange`
      if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("normal", "subsidiary", "inactive", "fundOrOtherNonCompany", "nonXBRLFilingEntity", "NonSEC_Japan", "ESMA_ESEF_XBRLFilingEntity"))) {
        stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"normal\", \"subsidiary\", \"inactive\", \"fundOrOtherNonCompany\", \"nonXBRLFilingEntity\", \"NonSEC_Japan\", \"ESMA_ESEF_XBRLFilingEntity\".", sep = ""))
      }
      self$`status` <- this_object$`status`
      self$`Street1` <- this_object$`Street1`
      self$`Street2` <- this_object$`Street2`
      self$`most_recent_filing` <- this_object$`most_recent_filing`
      self$`most_recent_full_year_end` <- this_object$`most_recent_full_year_end`
      self$`most_recent_fiscal_year` <- this_object$`most_recent_fiscal_year`
      self$`most_recent_complete_calendar_year` <- this_object$`most_recent_complete_calendar_year`
      self$`most_recent_complete_fiscal_year` <- this_object$`most_recent_complete_fiscal_year`
      self$`most_recent_filing_calendar_period` <- this_object$`most_recent_filing_calendar_period`
      self$`most_recent_filing_calendar_year` <- this_object$`most_recent_filing_calendar_year`
      self$`first_filing` <- this_object$`first_filing`
      self$`cik_code` <- this_object$`cik_code`
      self$`SICCategory` <- this_object$`SICCategory`
      self$`naics_code` <- this_object$`naics_code`
      self$`city` <- this_object$`city`
      self$`street_address` <- this_object$`street_address`
      self$`naics_minor_group_title` <- this_object$`naics_minor_group_title`
      self$`SICGroupMinorGroupTitle` <- this_object$`SICGroupMinorGroupTitle`
      self
    },
    #' Validate JSON input with respect to APIXBRLCompany
    #'
    #' @description
    #' Validate JSON input with respect to APIXBRLCompany and throw an exception if invalid
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
    #' @return String representation of APIXBRLCompany
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
# APIXBRLCompany$unlock()
#
## Below is an example to define the print function
# APIXBRLCompany$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# APIXBRLCompany$lock()

