#' Create a new PurchasePriceAllocation
#'
#' @description
#' Standardized M and A data
#'
#' @docType class
#' @title PurchasePriceAllocation
#' @description PurchasePriceAllocation Class
#' @format An \code{R6Class} generator object
#' @field acquisition_date  character [optional]
#' @field date_reported  character [optional]
#' @field date_originally_reported  character [optional]
#' @field target The company being acquired character [optional]
#' @field enterprise_value Purchase price + Debt - Cash numeric [optional]
#' @field parent_company The acquiring company character [optional]
#' @field parent_company_ticker  character [optional]
#' @field parent_company_cik  character [optional]
#' @field parent_company_state  character [optional]
#' @field parent_company_SIC_code  integer [optional]
#' @field purchase_price  \link{DimensionalDataPoint} [optional]
#' @field trace_link  character [optional]
#' @field intangible_categories Defined by a Calcbench client named list(\link{IntangibleAssetsCategory}) [optional]
#' @field standardized_PPA_points All of the BusinessCombinations... points named list(\link{MappedDataPoint}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PurchasePriceAllocation <- R6::R6Class(
  "PurchasePriceAllocation",
  public = list(
    `acquisition_date` = NULL,
    `date_reported` = NULL,
    `date_originally_reported` = NULL,
    `target` = NULL,
    `enterprise_value` = NULL,
    `parent_company` = NULL,
    `parent_company_ticker` = NULL,
    `parent_company_cik` = NULL,
    `parent_company_state` = NULL,
    `parent_company_SIC_code` = NULL,
    `purchase_price` = NULL,
    `trace_link` = NULL,
    `intangible_categories` = NULL,
    `standardized_PPA_points` = NULL,
    #' Initialize a new PurchasePriceAllocation class.
    #'
    #' @description
    #' Initialize a new PurchasePriceAllocation class.
    #'
    #' @param acquisition_date acquisition_date
    #' @param date_reported date_reported
    #' @param date_originally_reported date_originally_reported
    #' @param target The company being acquired
    #' @param enterprise_value Purchase price + Debt - Cash
    #' @param parent_company The acquiring company
    #' @param parent_company_ticker parent_company_ticker
    #' @param parent_company_cik parent_company_cik
    #' @param parent_company_state parent_company_state
    #' @param parent_company_SIC_code parent_company_SIC_code
    #' @param purchase_price purchase_price
    #' @param trace_link trace_link
    #' @param intangible_categories Defined by a Calcbench client
    #' @param standardized_PPA_points All of the BusinessCombinations... points
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`acquisition_date` = NULL, `date_reported` = NULL, `date_originally_reported` = NULL, `target` = NULL, `enterprise_value` = NULL, `parent_company` = NULL, `parent_company_ticker` = NULL, `parent_company_cik` = NULL, `parent_company_state` = NULL, `parent_company_SIC_code` = NULL, `purchase_price` = NULL, `trace_link` = NULL, `intangible_categories` = NULL, `standardized_PPA_points` = NULL, ...) {
      if (!is.null(`acquisition_date`)) {
        if (!is.character(`acquisition_date`)) {
          stop(paste("Error! Invalid data for `acquisition_date`. Must be a string:", `acquisition_date`))
        }
        self$`acquisition_date` <- `acquisition_date`
      }
      if (!is.null(`date_reported`)) {
        if (!is.character(`date_reported`)) {
          stop(paste("Error! Invalid data for `date_reported`. Must be a string:", `date_reported`))
        }
        self$`date_reported` <- `date_reported`
      }
      if (!is.null(`date_originally_reported`)) {
        if (!is.character(`date_originally_reported`)) {
          stop(paste("Error! Invalid data for `date_originally_reported`. Must be a string:", `date_originally_reported`))
        }
        self$`date_originally_reported` <- `date_originally_reported`
      }
      if (!is.null(`target`)) {
        if (!(is.character(`target`) && length(`target`) == 1)) {
          stop(paste("Error! Invalid data for `target`. Must be a string:", `target`))
        }
        self$`target` <- `target`
      }
      if (!is.null(`enterprise_value`)) {
        if (!(is.numeric(`enterprise_value`) && length(`enterprise_value`) == 1)) {
          stop(paste("Error! Invalid data for `enterprise_value`. Must be a number:", `enterprise_value`))
        }
        self$`enterprise_value` <- `enterprise_value`
      }
      if (!is.null(`parent_company`)) {
        if (!(is.character(`parent_company`) && length(`parent_company`) == 1)) {
          stop(paste("Error! Invalid data for `parent_company`. Must be a string:", `parent_company`))
        }
        self$`parent_company` <- `parent_company`
      }
      if (!is.null(`parent_company_ticker`)) {
        if (!(is.character(`parent_company_ticker`) && length(`parent_company_ticker`) == 1)) {
          stop(paste("Error! Invalid data for `parent_company_ticker`. Must be a string:", `parent_company_ticker`))
        }
        self$`parent_company_ticker` <- `parent_company_ticker`
      }
      if (!is.null(`parent_company_cik`)) {
        if (!(is.character(`parent_company_cik`) && length(`parent_company_cik`) == 1)) {
          stop(paste("Error! Invalid data for `parent_company_cik`. Must be a string:", `parent_company_cik`))
        }
        self$`parent_company_cik` <- `parent_company_cik`
      }
      if (!is.null(`parent_company_state`)) {
        if (!(is.character(`parent_company_state`) && length(`parent_company_state`) == 1)) {
          stop(paste("Error! Invalid data for `parent_company_state`. Must be a string:", `parent_company_state`))
        }
        self$`parent_company_state` <- `parent_company_state`
      }
      if (!is.null(`parent_company_SIC_code`)) {
        if (!(is.numeric(`parent_company_SIC_code`) && length(`parent_company_SIC_code`) == 1)) {
          stop(paste("Error! Invalid data for `parent_company_SIC_code`. Must be an integer:", `parent_company_SIC_code`))
        }
        self$`parent_company_SIC_code` <- `parent_company_SIC_code`
      }
      if (!is.null(`purchase_price`)) {
        stopifnot(R6::is.R6(`purchase_price`))
        self$`purchase_price` <- `purchase_price`
      }
      if (!is.null(`trace_link`)) {
        if (!(is.character(`trace_link`) && length(`trace_link`) == 1)) {
          stop(paste("Error! Invalid data for `trace_link`. Must be a string:", `trace_link`))
        }
        self$`trace_link` <- `trace_link`
      }
      if (!is.null(`intangible_categories`)) {
        stopifnot(is.vector(`intangible_categories`), length(`intangible_categories`) != 0)
        sapply(`intangible_categories`, function(x) stopifnot(R6::is.R6(x)))
        self$`intangible_categories` <- `intangible_categories`
      }
      if (!is.null(`standardized_PPA_points`)) {
        stopifnot(is.vector(`standardized_PPA_points`), length(`standardized_PPA_points`) != 0)
        sapply(`standardized_PPA_points`, function(x) stopifnot(R6::is.R6(x)))
        self$`standardized_PPA_points` <- `standardized_PPA_points`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return PurchasePriceAllocation in JSON format
    #' @export
    toJSON = function() {
      PurchasePriceAllocationObject <- list()
      if (!is.null(self$`acquisition_date`)) {
        PurchasePriceAllocationObject[["acquisition_date"]] <-
          self$`acquisition_date`
      }
      if (!is.null(self$`date_reported`)) {
        PurchasePriceAllocationObject[["date_reported"]] <-
          self$`date_reported`
      }
      if (!is.null(self$`date_originally_reported`)) {
        PurchasePriceAllocationObject[["date_originally_reported"]] <-
          self$`date_originally_reported`
      }
      if (!is.null(self$`target`)) {
        PurchasePriceAllocationObject[["target"]] <-
          self$`target`
      }
      if (!is.null(self$`enterprise_value`)) {
        PurchasePriceAllocationObject[["enterprise_value"]] <-
          self$`enterprise_value`
      }
      if (!is.null(self$`parent_company`)) {
        PurchasePriceAllocationObject[["parent_company"]] <-
          self$`parent_company`
      }
      if (!is.null(self$`parent_company_ticker`)) {
        PurchasePriceAllocationObject[["parent_company_ticker"]] <-
          self$`parent_company_ticker`
      }
      if (!is.null(self$`parent_company_cik`)) {
        PurchasePriceAllocationObject[["parent_company_cik"]] <-
          self$`parent_company_cik`
      }
      if (!is.null(self$`parent_company_state`)) {
        PurchasePriceAllocationObject[["parent_company_state"]] <-
          self$`parent_company_state`
      }
      if (!is.null(self$`parent_company_SIC_code`)) {
        PurchasePriceAllocationObject[["parent_company_SIC_code"]] <-
          self$`parent_company_SIC_code`
      }
      if (!is.null(self$`purchase_price`)) {
        PurchasePriceAllocationObject[["purchase_price"]] <-
          self$`purchase_price`$toJSON()
      }
      if (!is.null(self$`trace_link`)) {
        PurchasePriceAllocationObject[["trace_link"]] <-
          self$`trace_link`
      }
      if (!is.null(self$`intangible_categories`)) {
        PurchasePriceAllocationObject[["intangible_categories"]] <-
          lapply(self$`intangible_categories`, function(x) x$toJSON())
      }
      if (!is.null(self$`standardized_PPA_points`)) {
        PurchasePriceAllocationObject[["standardized_PPA_points"]] <-
          lapply(self$`standardized_PPA_points`, function(x) x$toJSON())
      }
      PurchasePriceAllocationObject
    },
    #' Deserialize JSON string into an instance of PurchasePriceAllocation
    #'
    #' @description
    #' Deserialize JSON string into an instance of PurchasePriceAllocation
    #'
    #' @param input_json the JSON input
    #' @return the instance of PurchasePriceAllocation
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`acquisition_date`)) {
        self$`acquisition_date` <- this_object$`acquisition_date`
      }
      if (!is.null(this_object$`date_reported`)) {
        self$`date_reported` <- this_object$`date_reported`
      }
      if (!is.null(this_object$`date_originally_reported`)) {
        self$`date_originally_reported` <- this_object$`date_originally_reported`
      }
      if (!is.null(this_object$`target`)) {
        self$`target` <- this_object$`target`
      }
      if (!is.null(this_object$`enterprise_value`)) {
        self$`enterprise_value` <- this_object$`enterprise_value`
      }
      if (!is.null(this_object$`parent_company`)) {
        self$`parent_company` <- this_object$`parent_company`
      }
      if (!is.null(this_object$`parent_company_ticker`)) {
        self$`parent_company_ticker` <- this_object$`parent_company_ticker`
      }
      if (!is.null(this_object$`parent_company_cik`)) {
        self$`parent_company_cik` <- this_object$`parent_company_cik`
      }
      if (!is.null(this_object$`parent_company_state`)) {
        self$`parent_company_state` <- this_object$`parent_company_state`
      }
      if (!is.null(this_object$`parent_company_SIC_code`)) {
        self$`parent_company_SIC_code` <- this_object$`parent_company_SIC_code`
      }
      if (!is.null(this_object$`purchase_price`)) {
        `purchase_price_object` <- DimensionalDataPoint$new()
        `purchase_price_object`$fromJSON(jsonlite::toJSON(this_object$`purchase_price`, auto_unbox = TRUE, digits = NA))
        self$`purchase_price` <- `purchase_price_object`
      }
      if (!is.null(this_object$`trace_link`)) {
        self$`trace_link` <- this_object$`trace_link`
      }
      if (!is.null(this_object$`intangible_categories`)) {
        self$`intangible_categories` <- ApiClient$new()$deserializeObj(this_object$`intangible_categories`, "map(IntangibleAssetsCategory)", loadNamespace("calcbenchR"))
      }
      if (!is.null(this_object$`standardized_PPA_points`)) {
        self$`standardized_PPA_points` <- ApiClient$new()$deserializeObj(this_object$`standardized_PPA_points`, "map(MappedDataPoint)", loadNamespace("calcbenchR"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return PurchasePriceAllocation in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`acquisition_date`)) {
          sprintf(
          '"acquisition_date":
            "%s"
                    ',
          self$`acquisition_date`
          )
        },
        if (!is.null(self$`date_reported`)) {
          sprintf(
          '"date_reported":
            "%s"
                    ',
          self$`date_reported`
          )
        },
        if (!is.null(self$`date_originally_reported`)) {
          sprintf(
          '"date_originally_reported":
            "%s"
                    ',
          self$`date_originally_reported`
          )
        },
        if (!is.null(self$`target`)) {
          sprintf(
          '"target":
            "%s"
                    ',
          self$`target`
          )
        },
        if (!is.null(self$`enterprise_value`)) {
          sprintf(
          '"enterprise_value":
            %d
                    ',
          self$`enterprise_value`
          )
        },
        if (!is.null(self$`parent_company`)) {
          sprintf(
          '"parent_company":
            "%s"
                    ',
          self$`parent_company`
          )
        },
        if (!is.null(self$`parent_company_ticker`)) {
          sprintf(
          '"parent_company_ticker":
            "%s"
                    ',
          self$`parent_company_ticker`
          )
        },
        if (!is.null(self$`parent_company_cik`)) {
          sprintf(
          '"parent_company_cik":
            "%s"
                    ',
          self$`parent_company_cik`
          )
        },
        if (!is.null(self$`parent_company_state`)) {
          sprintf(
          '"parent_company_state":
            "%s"
                    ',
          self$`parent_company_state`
          )
        },
        if (!is.null(self$`parent_company_SIC_code`)) {
          sprintf(
          '"parent_company_SIC_code":
            %d
                    ',
          self$`parent_company_SIC_code`
          )
        },
        if (!is.null(self$`purchase_price`)) {
          sprintf(
          '"purchase_price":
          %s
          ',
          jsonlite::toJSON(self$`purchase_price`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`trace_link`)) {
          sprintf(
          '"trace_link":
            "%s"
                    ',
          self$`trace_link`
          )
        },
        if (!is.null(self$`intangible_categories`)) {
          sprintf(
          '"intangible_categories":
          %s
',
          jsonlite::toJSON(lapply(self$`intangible_categories`, function(x){ x$toJSON() }), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`standardized_PPA_points`)) {
          sprintf(
          '"standardized_PPA_points":
          %s
',
          jsonlite::toJSON(lapply(self$`standardized_PPA_points`, function(x){ x$toJSON() }), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of PurchasePriceAllocation
    #'
    #' @description
    #' Deserialize JSON string into an instance of PurchasePriceAllocation
    #'
    #' @param input_json the JSON input
    #' @return the instance of PurchasePriceAllocation
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`acquisition_date` <- this_object$`acquisition_date`
      self$`date_reported` <- this_object$`date_reported`
      self$`date_originally_reported` <- this_object$`date_originally_reported`
      self$`target` <- this_object$`target`
      self$`enterprise_value` <- this_object$`enterprise_value`
      self$`parent_company` <- this_object$`parent_company`
      self$`parent_company_ticker` <- this_object$`parent_company_ticker`
      self$`parent_company_cik` <- this_object$`parent_company_cik`
      self$`parent_company_state` <- this_object$`parent_company_state`
      self$`parent_company_SIC_code` <- this_object$`parent_company_SIC_code`
      self$`purchase_price` <- DimensionalDataPoint$new()$fromJSON(jsonlite::toJSON(this_object$`purchase_price`, auto_unbox = TRUE, digits = NA))
      self$`trace_link` <- this_object$`trace_link`
      self$`intangible_categories` <- ApiClient$new()$deserializeObj(this_object$`intangible_categories`, "map(IntangibleAssetsCategory)", loadNamespace("calcbenchR"))
      self$`standardized_PPA_points` <- ApiClient$new()$deserializeObj(this_object$`standardized_PPA_points`, "map(MappedDataPoint)", loadNamespace("calcbenchR"))
      self
    },
    #' Validate JSON input with respect to PurchasePriceAllocation
    #'
    #' @description
    #' Validate JSON input with respect to PurchasePriceAllocation and throw an exception if invalid
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
    #' @return String representation of PurchasePriceAllocation
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
# PurchasePriceAllocation$unlock()
#
## Below is an example to define the print function
# PurchasePriceAllocation$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PurchasePriceAllocation$lock()

