#' Create a new MetricSearchCriteria
#'
#' @description
#' MetricSearchCriteria Class
#'
#' @docType class
#' @title MetricSearchCriteria
#' @description MetricSearchCriteria Class
#' @format An \code{R6Class} generator object
#' @field metrics  list(character) [optional]
#' @field company_identifiers  list(character) [optional]
#' @field start_year  integer [optional]
#' @field start_period  integer [optional]
#' @field end_year  integer [optional]
#' @field end_period  integer [optional]
#' @field fiscal_period  character [optional]
#' @field calendar_year  integer [optional]
#' @field calendar_period  character [optional]
#' @field periods_back  integer [optional]
#' @field include_trace  character [optional]
#' @field entire_universe  character [optional]
#' @field AccessionID  integer [optional]
#' @field use_fiscal_periods  character [optional]
#' @field as_originally_reported  character [optional]
#' @field all_history  character [optional]
#' @field PointInTime  character [optional]
#' @field updateDate  character [optional]
#' @field period_type  character [optional]
#' @field Annual  character [optional]
#' @field Quarterly  character [optional]
#' @field AllowedPeriods  list(character) [optional]
#' @field metricsDictionary  named list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MetricSearchCriteria <- R6::R6Class(
  "MetricSearchCriteria",
  public = list(
    `metrics` = NULL,
    `company_identifiers` = NULL,
    `start_year` = NULL,
    `start_period` = NULL,
    `end_year` = NULL,
    `end_period` = NULL,
    `fiscal_period` = NULL,
    `calendar_year` = NULL,
    `calendar_period` = NULL,
    `periods_back` = NULL,
    `include_trace` = NULL,
    `entire_universe` = NULL,
    `AccessionID` = NULL,
    `use_fiscal_periods` = NULL,
    `as_originally_reported` = NULL,
    `all_history` = NULL,
    `PointInTime` = NULL,
    `updateDate` = NULL,
    `period_type` = NULL,
    `Annual` = NULL,
    `Quarterly` = NULL,
    `AllowedPeriods` = NULL,
    `metricsDictionary` = NULL,
    #' Initialize a new MetricSearchCriteria class.
    #'
    #' @description
    #' Initialize a new MetricSearchCriteria class.
    #'
    #' @param metrics metrics
    #' @param company_identifiers company_identifiers
    #' @param start_year start_year
    #' @param start_period start_period
    #' @param end_year end_year
    #' @param end_period end_period
    #' @param fiscal_period fiscal_period
    #' @param calendar_year calendar_year
    #' @param calendar_period calendar_period
    #' @param periods_back periods_back
    #' @param include_trace include_trace
    #' @param entire_universe entire_universe
    #' @param AccessionID AccessionID
    #' @param use_fiscal_periods use_fiscal_periods
    #' @param as_originally_reported as_originally_reported
    #' @param all_history all_history
    #' @param PointInTime PointInTime
    #' @param updateDate updateDate
    #' @param period_type period_type
    #' @param Annual Annual
    #' @param Quarterly Quarterly
    #' @param AllowedPeriods AllowedPeriods
    #' @param metricsDictionary metricsDictionary
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`metrics` = NULL, `company_identifiers` = NULL, `start_year` = NULL, `start_period` = NULL, `end_year` = NULL, `end_period` = NULL, `fiscal_period` = NULL, `calendar_year` = NULL, `calendar_period` = NULL, `periods_back` = NULL, `include_trace` = NULL, `entire_universe` = NULL, `AccessionID` = NULL, `use_fiscal_periods` = NULL, `as_originally_reported` = NULL, `all_history` = NULL, `PointInTime` = NULL, `updateDate` = NULL, `period_type` = NULL, `Annual` = NULL, `Quarterly` = NULL, `AllowedPeriods` = NULL, `metricsDictionary` = NULL, ...) {
      if (!is.null(`metrics`)) {
        stopifnot(is.vector(`metrics`), length(`metrics`) != 0)
        sapply(`metrics`, function(x) stopifnot(is.character(x)))
        self$`metrics` <- `metrics`
      }
      if (!is.null(`company_identifiers`)) {
        stopifnot(is.vector(`company_identifiers`), length(`company_identifiers`) != 0)
        sapply(`company_identifiers`, function(x) stopifnot(is.character(x)))
        self$`company_identifiers` <- `company_identifiers`
      }
      if (!is.null(`start_year`)) {
        if (!(is.numeric(`start_year`) && length(`start_year`) == 1)) {
          stop(paste("Error! Invalid data for `start_year`. Must be an integer:", `start_year`))
        }
        self$`start_year` <- `start_year`
      }
      if (!is.null(`start_period`)) {
        if (!(is.numeric(`start_period`) && length(`start_period`) == 1)) {
          stop(paste("Error! Invalid data for `start_period`. Must be an integer:", `start_period`))
        }
        self$`start_period` <- `start_period`
      }
      if (!is.null(`end_year`)) {
        if (!(is.numeric(`end_year`) && length(`end_year`) == 1)) {
          stop(paste("Error! Invalid data for `end_year`. Must be an integer:", `end_year`))
        }
        self$`end_year` <- `end_year`
      }
      if (!is.null(`end_period`)) {
        if (!(is.numeric(`end_period`) && length(`end_period`) == 1)) {
          stop(paste("Error! Invalid data for `end_period`. Must be an integer:", `end_period`))
        }
        self$`end_period` <- `end_period`
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
      if (!is.null(`periods_back`)) {
        if (!(is.numeric(`periods_back`) && length(`periods_back`) == 1)) {
          stop(paste("Error! Invalid data for `periods_back`. Must be an integer:", `periods_back`))
        }
        self$`periods_back` <- `periods_back`
      }
      if (!is.null(`include_trace`)) {
        if (!(is.logical(`include_trace`) && length(`include_trace`) == 1)) {
          stop(paste("Error! Invalid data for `include_trace`. Must be a boolean:", `include_trace`))
        }
        self$`include_trace` <- `include_trace`
      }
      if (!is.null(`entire_universe`)) {
        if (!(is.logical(`entire_universe`) && length(`entire_universe`) == 1)) {
          stop(paste("Error! Invalid data for `entire_universe`. Must be a boolean:", `entire_universe`))
        }
        self$`entire_universe` <- `entire_universe`
      }
      if (!is.null(`AccessionID`)) {
        if (!(is.numeric(`AccessionID`) && length(`AccessionID`) == 1)) {
          stop(paste("Error! Invalid data for `AccessionID`. Must be an integer:", `AccessionID`))
        }
        self$`AccessionID` <- `AccessionID`
      }
      if (!is.null(`use_fiscal_periods`)) {
        if (!(is.logical(`use_fiscal_periods`) && length(`use_fiscal_periods`) == 1)) {
          stop(paste("Error! Invalid data for `use_fiscal_periods`. Must be a boolean:", `use_fiscal_periods`))
        }
        self$`use_fiscal_periods` <- `use_fiscal_periods`
      }
      if (!is.null(`as_originally_reported`)) {
        if (!(is.logical(`as_originally_reported`) && length(`as_originally_reported`) == 1)) {
          stop(paste("Error! Invalid data for `as_originally_reported`. Must be a boolean:", `as_originally_reported`))
        }
        self$`as_originally_reported` <- `as_originally_reported`
      }
      if (!is.null(`all_history`)) {
        if (!(is.logical(`all_history`) && length(`all_history`) == 1)) {
          stop(paste("Error! Invalid data for `all_history`. Must be a boolean:", `all_history`))
        }
        self$`all_history` <- `all_history`
      }
      if (!is.null(`PointInTime`)) {
        if (!(is.logical(`PointInTime`) && length(`PointInTime`) == 1)) {
          stop(paste("Error! Invalid data for `PointInTime`. Must be a boolean:", `PointInTime`))
        }
        self$`PointInTime` <- `PointInTime`
      }
      if (!is.null(`updateDate`)) {
        if (!is.character(`updateDate`)) {
          stop(paste("Error! Invalid data for `updateDate`. Must be a string:", `updateDate`))
        }
        self$`updateDate` <- `updateDate`
      }
      if (!is.null(`period_type`)) {
        if (!(`period_type` %in% c("unset", "y", "q1", "q2", "q3", "q4", "h1", "Q3Cum", "TTM", "MRQ", "MRQ_fiscal", "MRCumulative", "year_fiscal", "combined", "allHistory", "MostRecentPeriod", "DateRange"))) {
          stop(paste("Error! \"", `period_type`, "\" cannot be assigned to `period_type`. Must be \"unset\", \"y\", \"q1\", \"q2\", \"q3\", \"q4\", \"h1\", \"Q3Cum\", \"TTM\", \"MRQ\", \"MRQ_fiscal\", \"MRCumulative\", \"year_fiscal\", \"combined\", \"allHistory\", \"MostRecentPeriod\", \"DateRange\".", sep = ""))
        }
        if (!(is.character(`period_type`) && length(`period_type`) == 1)) {
          stop(paste("Error! Invalid data for `period_type`. Must be a string:", `period_type`))
        }
        self$`period_type` <- `period_type`
      }
      if (!is.null(`Annual`)) {
        if (!(is.logical(`Annual`) && length(`Annual`) == 1)) {
          stop(paste("Error! Invalid data for `Annual`. Must be a boolean:", `Annual`))
        }
        self$`Annual` <- `Annual`
      }
      if (!is.null(`Quarterly`)) {
        if (!(is.logical(`Quarterly`) && length(`Quarterly`) == 1)) {
          stop(paste("Error! Invalid data for `Quarterly`. Must be a boolean:", `Quarterly`))
        }
        self$`Quarterly` <- `Quarterly`
      }
      if (!is.null(`AllowedPeriods`)) {
        stopifnot(is.vector(`AllowedPeriods`), length(`AllowedPeriods`) != 0)
        sapply(`AllowedPeriods`, function(x) stopifnot(is.character(x)))
        self$`AllowedPeriods` <- `AllowedPeriods`
      }
      if (!is.null(`metricsDictionary`)) {
        stopifnot(is.vector(`metricsDictionary`), length(`metricsDictionary`) != 0)
        sapply(`metricsDictionary`, function(x) stopifnot(is.character(x)))
        self$`metricsDictionary` <- `metricsDictionary`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return MetricSearchCriteria in JSON format
    #' @export
    toJSON = function() {
      MetricSearchCriteriaObject <- list()
      if (!is.null(self$`metrics`)) {
        MetricSearchCriteriaObject[["metrics"]] <-
          self$`metrics`
      }
      if (!is.null(self$`company_identifiers`)) {
        MetricSearchCriteriaObject[["company_identifiers"]] <-
          self$`company_identifiers`
      }
      if (!is.null(self$`start_year`)) {
        MetricSearchCriteriaObject[["start_year"]] <-
          self$`start_year`
      }
      if (!is.null(self$`start_period`)) {
        MetricSearchCriteriaObject[["start_period"]] <-
          self$`start_period`
      }
      if (!is.null(self$`end_year`)) {
        MetricSearchCriteriaObject[["end_year"]] <-
          self$`end_year`
      }
      if (!is.null(self$`end_period`)) {
        MetricSearchCriteriaObject[["end_period"]] <-
          self$`end_period`
      }
      if (!is.null(self$`fiscal_period`)) {
        MetricSearchCriteriaObject[["fiscal_period"]] <-
          self$`fiscal_period`
      }
      if (!is.null(self$`calendar_year`)) {
        MetricSearchCriteriaObject[["calendar_year"]] <-
          self$`calendar_year`
      }
      if (!is.null(self$`calendar_period`)) {
        MetricSearchCriteriaObject[["calendar_period"]] <-
          self$`calendar_period`
      }
      if (!is.null(self$`periods_back`)) {
        MetricSearchCriteriaObject[["periods_back"]] <-
          self$`periods_back`
      }
      if (!is.null(self$`include_trace`)) {
        MetricSearchCriteriaObject[["include_trace"]] <-
          self$`include_trace`
      }
      if (!is.null(self$`entire_universe`)) {
        MetricSearchCriteriaObject[["entire_universe"]] <-
          self$`entire_universe`
      }
      if (!is.null(self$`AccessionID`)) {
        MetricSearchCriteriaObject[["AccessionID"]] <-
          self$`AccessionID`
      }
      if (!is.null(self$`use_fiscal_periods`)) {
        MetricSearchCriteriaObject[["use_fiscal_periods"]] <-
          self$`use_fiscal_periods`
      }
      if (!is.null(self$`as_originally_reported`)) {
        MetricSearchCriteriaObject[["as_originally_reported"]] <-
          self$`as_originally_reported`
      }
      if (!is.null(self$`all_history`)) {
        MetricSearchCriteriaObject[["all_history"]] <-
          self$`all_history`
      }
      if (!is.null(self$`PointInTime`)) {
        MetricSearchCriteriaObject[["PointInTime"]] <-
          self$`PointInTime`
      }
      if (!is.null(self$`updateDate`)) {
        MetricSearchCriteriaObject[["updateDate"]] <-
          self$`updateDate`
      }
      if (!is.null(self$`period_type`)) {
        MetricSearchCriteriaObject[["period_type"]] <-
          self$`period_type`
      }
      if (!is.null(self$`Annual`)) {
        MetricSearchCriteriaObject[["Annual"]] <-
          self$`Annual`
      }
      if (!is.null(self$`Quarterly`)) {
        MetricSearchCriteriaObject[["Quarterly"]] <-
          self$`Quarterly`
      }
      if (!is.null(self$`AllowedPeriods`)) {
        MetricSearchCriteriaObject[["AllowedPeriods"]] <-
          self$`AllowedPeriods`
      }
      if (!is.null(self$`metricsDictionary`)) {
        MetricSearchCriteriaObject[["metricsDictionary"]] <-
          self$`metricsDictionary`
      }
      MetricSearchCriteriaObject
    },
    #' Deserialize JSON string into an instance of MetricSearchCriteria
    #'
    #' @description
    #' Deserialize JSON string into an instance of MetricSearchCriteria
    #'
    #' @param input_json the JSON input
    #' @return the instance of MetricSearchCriteria
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`metrics`)) {
        self$`metrics` <- ApiClient$new()$deserializeObj(this_object$`metrics`, "array[character]", loadNamespace("calcbenchR"))
      }
      if (!is.null(this_object$`company_identifiers`)) {
        self$`company_identifiers` <- ApiClient$new()$deserializeObj(this_object$`company_identifiers`, "array[character]", loadNamespace("calcbenchR"))
      }
      if (!is.null(this_object$`start_year`)) {
        self$`start_year` <- this_object$`start_year`
      }
      if (!is.null(this_object$`start_period`)) {
        self$`start_period` <- this_object$`start_period`
      }
      if (!is.null(this_object$`end_year`)) {
        self$`end_year` <- this_object$`end_year`
      }
      if (!is.null(this_object$`end_period`)) {
        self$`end_period` <- this_object$`end_period`
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
      if (!is.null(this_object$`periods_back`)) {
        self$`periods_back` <- this_object$`periods_back`
      }
      if (!is.null(this_object$`include_trace`)) {
        self$`include_trace` <- this_object$`include_trace`
      }
      if (!is.null(this_object$`entire_universe`)) {
        self$`entire_universe` <- this_object$`entire_universe`
      }
      if (!is.null(this_object$`AccessionID`)) {
        self$`AccessionID` <- this_object$`AccessionID`
      }
      if (!is.null(this_object$`use_fiscal_periods`)) {
        self$`use_fiscal_periods` <- this_object$`use_fiscal_periods`
      }
      if (!is.null(this_object$`as_originally_reported`)) {
        self$`as_originally_reported` <- this_object$`as_originally_reported`
      }
      if (!is.null(this_object$`all_history`)) {
        self$`all_history` <- this_object$`all_history`
      }
      if (!is.null(this_object$`PointInTime`)) {
        self$`PointInTime` <- this_object$`PointInTime`
      }
      if (!is.null(this_object$`updateDate`)) {
        self$`updateDate` <- this_object$`updateDate`
      }
      if (!is.null(this_object$`period_type`)) {
        if (!is.null(this_object$`period_type`) && !(this_object$`period_type` %in% c("unset", "y", "q1", "q2", "q3", "q4", "h1", "Q3Cum", "TTM", "MRQ", "MRQ_fiscal", "MRCumulative", "year_fiscal", "combined", "allHistory", "MostRecentPeriod", "DateRange"))) {
          stop(paste("Error! \"", this_object$`period_type`, "\" cannot be assigned to `period_type`. Must be \"unset\", \"y\", \"q1\", \"q2\", \"q3\", \"q4\", \"h1\", \"Q3Cum\", \"TTM\", \"MRQ\", \"MRQ_fiscal\", \"MRCumulative\", \"year_fiscal\", \"combined\", \"allHistory\", \"MostRecentPeriod\", \"DateRange\".", sep = ""))
        }
        self$`period_type` <- this_object$`period_type`
      }
      if (!is.null(this_object$`Annual`)) {
        self$`Annual` <- this_object$`Annual`
      }
      if (!is.null(this_object$`Quarterly`)) {
        self$`Quarterly` <- this_object$`Quarterly`
      }
      if (!is.null(this_object$`AllowedPeriods`)) {
        self$`AllowedPeriods` <- ApiClient$new()$deserializeObj(this_object$`AllowedPeriods`, "array[character]", loadNamespace("calcbenchR"))
      }
      if (!is.null(this_object$`metricsDictionary`)) {
        self$`metricsDictionary` <- ApiClient$new()$deserializeObj(this_object$`metricsDictionary`, "map(character)", loadNamespace("calcbenchR"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return MetricSearchCriteria in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`metrics`)) {
          sprintf(
          '"metrics":
             [%s]
          ',
          paste(unlist(lapply(self$`metrics`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`company_identifiers`)) {
          sprintf(
          '"company_identifiers":
             [%s]
          ',
          paste(unlist(lapply(self$`company_identifiers`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`start_year`)) {
          sprintf(
          '"start_year":
            %d
                    ',
          self$`start_year`
          )
        },
        if (!is.null(self$`start_period`)) {
          sprintf(
          '"start_period":
            %d
                    ',
          self$`start_period`
          )
        },
        if (!is.null(self$`end_year`)) {
          sprintf(
          '"end_year":
            %d
                    ',
          self$`end_year`
          )
        },
        if (!is.null(self$`end_period`)) {
          sprintf(
          '"end_period":
            %d
                    ',
          self$`end_period`
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
        if (!is.null(self$`periods_back`)) {
          sprintf(
          '"periods_back":
            %d
                    ',
          self$`periods_back`
          )
        },
        if (!is.null(self$`include_trace`)) {
          sprintf(
          '"include_trace":
            %s
                    ',
          tolower(self$`include_trace`)
          )
        },
        if (!is.null(self$`entire_universe`)) {
          sprintf(
          '"entire_universe":
            %s
                    ',
          tolower(self$`entire_universe`)
          )
        },
        if (!is.null(self$`AccessionID`)) {
          sprintf(
          '"AccessionID":
            %d
                    ',
          self$`AccessionID`
          )
        },
        if (!is.null(self$`use_fiscal_periods`)) {
          sprintf(
          '"use_fiscal_periods":
            %s
                    ',
          tolower(self$`use_fiscal_periods`)
          )
        },
        if (!is.null(self$`as_originally_reported`)) {
          sprintf(
          '"as_originally_reported":
            %s
                    ',
          tolower(self$`as_originally_reported`)
          )
        },
        if (!is.null(self$`all_history`)) {
          sprintf(
          '"all_history":
            %s
                    ',
          tolower(self$`all_history`)
          )
        },
        if (!is.null(self$`PointInTime`)) {
          sprintf(
          '"PointInTime":
            %s
                    ',
          tolower(self$`PointInTime`)
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
        if (!is.null(self$`period_type`)) {
          sprintf(
          '"period_type":
            "%s"
                    ',
          self$`period_type`
          )
        },
        if (!is.null(self$`Annual`)) {
          sprintf(
          '"Annual":
            %s
                    ',
          tolower(self$`Annual`)
          )
        },
        if (!is.null(self$`Quarterly`)) {
          sprintf(
          '"Quarterly":
            %s
                    ',
          tolower(self$`Quarterly`)
          )
        },
        if (!is.null(self$`AllowedPeriods`)) {
          sprintf(
          '"AllowedPeriods":
             [%s]
          ',
          paste(unlist(lapply(self$`AllowedPeriods`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`metricsDictionary`)) {
          sprintf(
          '"metricsDictionary":
            "%s"
          ',
          jsonlite::toJSON(lapply(self$`metricsDictionary`, function(x){ x }), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of MetricSearchCriteria
    #'
    #' @description
    #' Deserialize JSON string into an instance of MetricSearchCriteria
    #'
    #' @param input_json the JSON input
    #' @return the instance of MetricSearchCriteria
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`metrics` <- ApiClient$new()$deserializeObj(this_object$`metrics`, "array[character]", loadNamespace("calcbenchR"))
      self$`company_identifiers` <- ApiClient$new()$deserializeObj(this_object$`company_identifiers`, "array[character]", loadNamespace("calcbenchR"))
      self$`start_year` <- this_object$`start_year`
      self$`start_period` <- this_object$`start_period`
      self$`end_year` <- this_object$`end_year`
      self$`end_period` <- this_object$`end_period`
      self$`fiscal_period` <- this_object$`fiscal_period`
      self$`calendar_year` <- this_object$`calendar_year`
      self$`calendar_period` <- this_object$`calendar_period`
      self$`periods_back` <- this_object$`periods_back`
      self$`include_trace` <- this_object$`include_trace`
      self$`entire_universe` <- this_object$`entire_universe`
      self$`AccessionID` <- this_object$`AccessionID`
      self$`use_fiscal_periods` <- this_object$`use_fiscal_periods`
      self$`as_originally_reported` <- this_object$`as_originally_reported`
      self$`all_history` <- this_object$`all_history`
      self$`PointInTime` <- this_object$`PointInTime`
      self$`updateDate` <- this_object$`updateDate`
      if (!is.null(this_object$`period_type`) && !(this_object$`period_type` %in% c("unset", "y", "q1", "q2", "q3", "q4", "h1", "Q3Cum", "TTM", "MRQ", "MRQ_fiscal", "MRCumulative", "year_fiscal", "combined", "allHistory", "MostRecentPeriod", "DateRange"))) {
        stop(paste("Error! \"", this_object$`period_type`, "\" cannot be assigned to `period_type`. Must be \"unset\", \"y\", \"q1\", \"q2\", \"q3\", \"q4\", \"h1\", \"Q3Cum\", \"TTM\", \"MRQ\", \"MRQ_fiscal\", \"MRCumulative\", \"year_fiscal\", \"combined\", \"allHistory\", \"MostRecentPeriod\", \"DateRange\".", sep = ""))
      }
      self$`period_type` <- this_object$`period_type`
      self$`Annual` <- this_object$`Annual`
      self$`Quarterly` <- this_object$`Quarterly`
      self$`AllowedPeriods` <- ApiClient$new()$deserializeObj(this_object$`AllowedPeriods`, "array[character]", loadNamespace("calcbenchR"))
      self$`metricsDictionary` <- ApiClient$new()$deserializeObj(this_object$`metricsDictionary`, "map(character)", loadNamespace("calcbenchR"))
      self
    },
    #' Validate JSON input with respect to MetricSearchCriteria
    #'
    #' @description
    #' Validate JSON input with respect to MetricSearchCriteria and throw an exception if invalid
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
    #' @return String representation of MetricSearchCriteria
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
# MetricSearchCriteria$unlock()
#
## Below is an example to define the print function
# MetricSearchCriteria$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MetricSearchCriteria$lock()

