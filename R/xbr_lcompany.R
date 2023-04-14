#' Create a new XBRLcompany
#'
#' @description
#' XBRLcompany Class
#'
#' @docType class
#' @title XBRLcompany
#' @description XBRLcompany Class
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
XBRLcompany <- R6::R6Class(
  "XBRLcompany",
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
    `cik_code` = NULL,
    `SICCategory` = NULL,
    `naics_code` = NULL,
    `city` = NULL,
    `street_address` = NULL,
    `naics_minor_group_title` = NULL,
    `SICGroupMinorGroupTitle` = NULL,
    #' Initialize a new XBRLcompany class.
    #'
    #' @description
    #' Initialize a new XBRLcompany class.
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
    #' @param cik_code cik_code
    #' @param SICCategory SICCategory
    #' @param naics_code naics_code
    #' @param city city
    #' @param street_address street_address
    #' @param naics_minor_group_title naics_minor_group_title
    #' @param SICGroupMinorGroupTitle SICGroupMinorGroupTitle
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entity_name` = NULL, `entity_id` = NULL, `ticker` = NULL, `entity_code` = NULL, `sic_code` = NULL, `naics` = NULL, `naics2` = NULL, `assets` = NULL, `revenue` = NULL, `state` = NULL, `country` = NULL, `zip` = NULL, `EntityIncorporationStateCountryCode` = NULL, `EntityTaxIdentificationNumber` = NULL, `SecurityExchangeName` = NULL, `FYEndDateChange` = NULL, `status` = NULL, `Street1` = NULL, `Street2` = NULL, `cik_code` = NULL, `SICCategory` = NULL, `naics_code` = NULL, `city` = NULL, `street_address` = NULL, `naics_minor_group_title` = NULL, `SICGroupMinorGroupTitle` = NULL, ...) {
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
    #' @return XBRLcompany in JSON format
    #' @export
    toJSON = function() {
      XBRLcompanyObject <- list()
      if (!is.null(self$`entity_name`)) {
        XBRLcompanyObject[["entity_name"]] <-
          self$`entity_name`
      }
      if (!is.null(self$`entity_id`)) {
        XBRLcompanyObject[["entity_id"]] <-
          self$`entity_id`
      }
      if (!is.null(self$`ticker`)) {
        XBRLcompanyObject[["ticker"]] <-
          self$`ticker`
      }
      if (!is.null(self$`entity_code`)) {
        XBRLcompanyObject[["entity_code"]] <-
          self$`entity_code`
      }
      if (!is.null(self$`sic_code`)) {
        XBRLcompanyObject[["sic_code"]] <-
          self$`sic_code`
      }
      if (!is.null(self$`naics`)) {
        XBRLcompanyObject[["naics"]] <-
          self$`naics`
      }
      if (!is.null(self$`naics2`)) {
        XBRLcompanyObject[["naics2"]] <-
          self$`naics2`
      }
      if (!is.null(self$`assets`)) {
        XBRLcompanyObject[["assets"]] <-
          self$`assets`
      }
      if (!is.null(self$`revenue`)) {
        XBRLcompanyObject[["revenue"]] <-
          self$`revenue`
      }
      if (!is.null(self$`state`)) {
        XBRLcompanyObject[["state"]] <-
          self$`state`
      }
      if (!is.null(self$`country`)) {
        XBRLcompanyObject[["country"]] <-
          self$`country`
      }
      if (!is.null(self$`zip`)) {
        XBRLcompanyObject[["zip"]] <-
          self$`zip`
      }
      if (!is.null(self$`EntityIncorporationStateCountryCode`)) {
        XBRLcompanyObject[["EntityIncorporationStateCountryCode"]] <-
          self$`EntityIncorporationStateCountryCode`
      }
      if (!is.null(self$`EntityTaxIdentificationNumber`)) {
        XBRLcompanyObject[["EntityTaxIdentificationNumber"]] <-
          self$`EntityTaxIdentificationNumber`
      }
      if (!is.null(self$`SecurityExchangeName`)) {
        XBRLcompanyObject[["SecurityExchangeName"]] <-
          self$`SecurityExchangeName`
      }
      if (!is.null(self$`FYEndDateChange`)) {
        XBRLcompanyObject[["FYEndDateChange"]] <-
          self$`FYEndDateChange`
      }
      if (!is.null(self$`status`)) {
        XBRLcompanyObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`Street1`)) {
        XBRLcompanyObject[["Street1"]] <-
          self$`Street1`
      }
      if (!is.null(self$`Street2`)) {
        XBRLcompanyObject[["Street2"]] <-
          self$`Street2`
      }
      if (!is.null(self$`cik_code`)) {
        XBRLcompanyObject[["cik_code"]] <-
          self$`cik_code`
      }
      if (!is.null(self$`SICCategory`)) {
        XBRLcompanyObject[["SICCategory"]] <-
          self$`SICCategory`
      }
      if (!is.null(self$`naics_code`)) {
        XBRLcompanyObject[["naics_code"]] <-
          self$`naics_code`
      }
      if (!is.null(self$`city`)) {
        XBRLcompanyObject[["city"]] <-
          self$`city`
      }
      if (!is.null(self$`street_address`)) {
        XBRLcompanyObject[["street_address"]] <-
          self$`street_address`
      }
      if (!is.null(self$`naics_minor_group_title`)) {
        XBRLcompanyObject[["naics_minor_group_title"]] <-
          self$`naics_minor_group_title`
      }
      if (!is.null(self$`SICGroupMinorGroupTitle`)) {
        XBRLcompanyObject[["SICGroupMinorGroupTitle"]] <-
          self$`SICGroupMinorGroupTitle`
      }
      XBRLcompanyObject
    },
    #' Deserialize JSON string into an instance of XBRLcompany
    #'
    #' @description
    #' Deserialize JSON string into an instance of XBRLcompany
    #'
    #' @param input_json the JSON input
    #' @return the instance of XBRLcompany
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
    #' @return XBRLcompany in JSON format
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
    #' Deserialize JSON string into an instance of XBRLcompany
    #'
    #' @description
    #' Deserialize JSON string into an instance of XBRLcompany
    #'
    #' @param input_json the JSON input
    #' @return the instance of XBRLcompany
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
      self$`cik_code` <- this_object$`cik_code`
      self$`SICCategory` <- this_object$`SICCategory`
      self$`naics_code` <- this_object$`naics_code`
      self$`city` <- this_object$`city`
      self$`street_address` <- this_object$`street_address`
      self$`naics_minor_group_title` <- this_object$`naics_minor_group_title`
      self$`SICGroupMinorGroupTitle` <- this_object$`SICGroupMinorGroupTitle`
      self
    },
    #' Validate JSON input with respect to XBRLcompany
    #'
    #' @description
    #' Validate JSON input with respect to XBRLcompany and throw an exception if invalid
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
    #' @return String representation of XBRLcompany
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
# XBRLcompany$unlock()
#
## Below is an example to define the print function
# XBRLcompany$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# XBRLcompany$lock()

