#' Create a new FaceStatementColumn
#'
#' @description
#' FaceStatementColumn Class
#'
#' @docType class
#' @title FaceStatementColumn
#' @description FaceStatementColumn Class
#' @format An \code{R6Class} generator object
#' @field PRELIMINARYDATAID  integer [optional]
#' @field fiscal_period Fiscal period-Fiscal Year character [optional]
#' @field period_start  character [optional]
#' @field period_end  character [optional]
#' @field date_range  character [optional]
#' @field instant  character [optional]
#' @field compareType  character [optional]
#' @field preliminary  character [optional]
#' @field calculated  character [optional]
#' @field sec_links  list(object) [optional]
#' @field is_guidance_column  character [optional]
#' @field fiscal_period_type  character [optional]
#' @field fiscal_period_year  integer [optional]
#' @field fiscal_period_period  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FaceStatementColumn <- R6::R6Class(
  "FaceStatementColumn",
  public = list(
    `PRELIMINARYDATAID` = NULL,
    `fiscal_period` = NULL,
    `period_start` = NULL,
    `period_end` = NULL,
    `date_range` = NULL,
    `instant` = NULL,
    `compareType` = NULL,
    `preliminary` = NULL,
    `calculated` = NULL,
    `sec_links` = NULL,
    `is_guidance_column` = NULL,
    `fiscal_period_type` = NULL,
    `fiscal_period_year` = NULL,
    `fiscal_period_period` = NULL,
    #' Initialize a new FaceStatementColumn class.
    #'
    #' @description
    #' Initialize a new FaceStatementColumn class.
    #'
    #' @param PRELIMINARYDATAID PRELIMINARYDATAID
    #' @param fiscal_period Fiscal period-Fiscal Year
    #' @param period_start period_start
    #' @param period_end period_end
    #' @param date_range date_range
    #' @param instant instant
    #' @param compareType compareType
    #' @param preliminary preliminary
    #' @param calculated calculated
    #' @param sec_links sec_links
    #' @param is_guidance_column is_guidance_column
    #' @param fiscal_period_type fiscal_period_type
    #' @param fiscal_period_year fiscal_period_year
    #' @param fiscal_period_period fiscal_period_period
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`PRELIMINARYDATAID` = NULL, `fiscal_period` = NULL, `period_start` = NULL, `period_end` = NULL, `date_range` = NULL, `instant` = NULL, `compareType` = NULL, `preliminary` = NULL, `calculated` = NULL, `sec_links` = NULL, `is_guidance_column` = NULL, `fiscal_period_type` = NULL, `fiscal_period_year` = NULL, `fiscal_period_period` = NULL, ...) {
      if (!is.null(`PRELIMINARYDATAID`)) {
        if (!(is.numeric(`PRELIMINARYDATAID`) && length(`PRELIMINARYDATAID`) == 1)) {
          stop(paste("Error! Invalid data for `PRELIMINARYDATAID`. Must be an integer:", `PRELIMINARYDATAID`))
        }
        self$`PRELIMINARYDATAID` <- `PRELIMINARYDATAID`
      }
      if (!is.null(`fiscal_period`)) {
        if (!(is.character(`fiscal_period`) && length(`fiscal_period`) == 1)) {
          stop(paste("Error! Invalid data for `fiscal_period`. Must be a string:", `fiscal_period`))
        }
        self$`fiscal_period` <- `fiscal_period`
      }
      if (!is.null(`period_start`)) {
        if (!(is.character(`period_start`) && length(`period_start`) == 1)) {
          stop(paste("Error! Invalid data for `period_start`. Must be a string:", `period_start`))
        }
        self$`period_start` <- `period_start`
      }
      if (!is.null(`period_end`)) {
        if (!(is.character(`period_end`) && length(`period_end`) == 1)) {
          stop(paste("Error! Invalid data for `period_end`. Must be a string:", `period_end`))
        }
        self$`period_end` <- `period_end`
      }
      if (!is.null(`date_range`)) {
        if (!(is.character(`date_range`) && length(`date_range`) == 1)) {
          stop(paste("Error! Invalid data for `date_range`. Must be a string:", `date_range`))
        }
        self$`date_range` <- `date_range`
      }
      if (!is.null(`instant`)) {
        if (!(is.logical(`instant`) && length(`instant`) == 1)) {
          stop(paste("Error! Invalid data for `instant`. Must be a boolean:", `instant`))
        }
        self$`instant` <- `instant`
      }
      if (!is.null(`compareType`)) {
        if (!(is.character(`compareType`) && length(`compareType`) == 1)) {
          stop(paste("Error! Invalid data for `compareType`. Must be a string:", `compareType`))
        }
        self$`compareType` <- `compareType`
      }
      if (!is.null(`preliminary`)) {
        if (!(is.logical(`preliminary`) && length(`preliminary`) == 1)) {
          stop(paste("Error! Invalid data for `preliminary`. Must be a boolean:", `preliminary`))
        }
        self$`preliminary` <- `preliminary`
      }
      if (!is.null(`calculated`)) {
        if (!(is.logical(`calculated`) && length(`calculated`) == 1)) {
          stop(paste("Error! Invalid data for `calculated`. Must be a boolean:", `calculated`))
        }
        self$`calculated` <- `calculated`
      }
      if (!is.null(`sec_links`)) {
        stopifnot(is.vector(`sec_links`), length(`sec_links`) != 0)
        sapply(`sec_links`, function(x) stopifnot(is.character(x)))
        self$`sec_links` <- `sec_links`
      }
      if (!is.null(`is_guidance_column`)) {
        if (!(is.logical(`is_guidance_column`) && length(`is_guidance_column`) == 1)) {
          stop(paste("Error! Invalid data for `is_guidance_column`. Must be a boolean:", `is_guidance_column`))
        }
        self$`is_guidance_column` <- `is_guidance_column`
      }
      if (!is.null(`fiscal_period_type`)) {
        if (!(`fiscal_period_type` %in% c("unset", "Q1", "Q2", "Q3", "Y"))) {
          stop(paste("Error! \"", `fiscal_period_type`, "\" cannot be assigned to `fiscal_period_type`. Must be \"unset\", \"Q1\", \"Q2\", \"Q3\", \"Y\".", sep = ""))
        }
        if (!(is.character(`fiscal_period_type`) && length(`fiscal_period_type`) == 1)) {
          stop(paste("Error! Invalid data for `fiscal_period_type`. Must be a string:", `fiscal_period_type`))
        }
        self$`fiscal_period_type` <- `fiscal_period_type`
      }
      if (!is.null(`fiscal_period_year`)) {
        if (!(is.numeric(`fiscal_period_year`) && length(`fiscal_period_year`) == 1)) {
          stop(paste("Error! Invalid data for `fiscal_period_year`. Must be an integer:", `fiscal_period_year`))
        }
        self$`fiscal_period_year` <- `fiscal_period_year`
      }
      if (!is.null(`fiscal_period_period`)) {
        if (!(is.character(`fiscal_period_period`) && length(`fiscal_period_period`) == 1)) {
          stop(paste("Error! Invalid data for `fiscal_period_period`. Must be a string:", `fiscal_period_period`))
        }
        self$`fiscal_period_period` <- `fiscal_period_period`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FaceStatementColumn in JSON format
    #' @export
    toJSON = function() {
      FaceStatementColumnObject <- list()
      if (!is.null(self$`PRELIMINARYDATAID`)) {
        FaceStatementColumnObject[["PRELIMINARYDATAID"]] <-
          self$`PRELIMINARYDATAID`
      }
      if (!is.null(self$`fiscal_period`)) {
        FaceStatementColumnObject[["fiscal_period"]] <-
          self$`fiscal_period`
      }
      if (!is.null(self$`period_start`)) {
        FaceStatementColumnObject[["period_start"]] <-
          self$`period_start`
      }
      if (!is.null(self$`period_end`)) {
        FaceStatementColumnObject[["period_end"]] <-
          self$`period_end`
      }
      if (!is.null(self$`date_range`)) {
        FaceStatementColumnObject[["date_range"]] <-
          self$`date_range`
      }
      if (!is.null(self$`instant`)) {
        FaceStatementColumnObject[["instant"]] <-
          self$`instant`
      }
      if (!is.null(self$`compareType`)) {
        FaceStatementColumnObject[["compareType"]] <-
          self$`compareType`
      }
      if (!is.null(self$`preliminary`)) {
        FaceStatementColumnObject[["preliminary"]] <-
          self$`preliminary`
      }
      if (!is.null(self$`calculated`)) {
        FaceStatementColumnObject[["calculated"]] <-
          self$`calculated`
      }
      if (!is.null(self$`sec_links`)) {
        FaceStatementColumnObject[["sec_links"]] <-
          self$`sec_links`
      }
      if (!is.null(self$`is_guidance_column`)) {
        FaceStatementColumnObject[["is_guidance_column"]] <-
          self$`is_guidance_column`
      }
      if (!is.null(self$`fiscal_period_type`)) {
        FaceStatementColumnObject[["fiscal_period_type"]] <-
          self$`fiscal_period_type`
      }
      if (!is.null(self$`fiscal_period_year`)) {
        FaceStatementColumnObject[["fiscal_period_year"]] <-
          self$`fiscal_period_year`
      }
      if (!is.null(self$`fiscal_period_period`)) {
        FaceStatementColumnObject[["fiscal_period_period"]] <-
          self$`fiscal_period_period`
      }
      FaceStatementColumnObject
    },
    #' Deserialize JSON string into an instance of FaceStatementColumn
    #'
    #' @description
    #' Deserialize JSON string into an instance of FaceStatementColumn
    #'
    #' @param input_json the JSON input
    #' @return the instance of FaceStatementColumn
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`PRELIMINARYDATAID`)) {
        self$`PRELIMINARYDATAID` <- this_object$`PRELIMINARYDATAID`
      }
      if (!is.null(this_object$`fiscal_period`)) {
        self$`fiscal_period` <- this_object$`fiscal_period`
      }
      if (!is.null(this_object$`period_start`)) {
        self$`period_start` <- this_object$`period_start`
      }
      if (!is.null(this_object$`period_end`)) {
        self$`period_end` <- this_object$`period_end`
      }
      if (!is.null(this_object$`date_range`)) {
        self$`date_range` <- this_object$`date_range`
      }
      if (!is.null(this_object$`instant`)) {
        self$`instant` <- this_object$`instant`
      }
      if (!is.null(this_object$`compareType`)) {
        self$`compareType` <- this_object$`compareType`
      }
      if (!is.null(this_object$`preliminary`)) {
        self$`preliminary` <- this_object$`preliminary`
      }
      if (!is.null(this_object$`calculated`)) {
        self$`calculated` <- this_object$`calculated`
      }
      if (!is.null(this_object$`sec_links`)) {
        self$`sec_links` <- ApiClient$new()$deserializeObj(this_object$`sec_links`, "array[object]", loadNamespace("calcbenchR"))
      }
      if (!is.null(this_object$`is_guidance_column`)) {
        self$`is_guidance_column` <- this_object$`is_guidance_column`
      }
      if (!is.null(this_object$`fiscal_period_type`)) {
        if (!is.null(this_object$`fiscal_period_type`) && !(this_object$`fiscal_period_type` %in% c("unset", "Q1", "Q2", "Q3", "Y"))) {
          stop(paste("Error! \"", this_object$`fiscal_period_type`, "\" cannot be assigned to `fiscal_period_type`. Must be \"unset\", \"Q1\", \"Q2\", \"Q3\", \"Y\".", sep = ""))
        }
        self$`fiscal_period_type` <- this_object$`fiscal_period_type`
      }
      if (!is.null(this_object$`fiscal_period_year`)) {
        self$`fiscal_period_year` <- this_object$`fiscal_period_year`
      }
      if (!is.null(this_object$`fiscal_period_period`)) {
        self$`fiscal_period_period` <- this_object$`fiscal_period_period`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FaceStatementColumn in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`PRELIMINARYDATAID`)) {
          sprintf(
          '"PRELIMINARYDATAID":
            %d
                    ',
          self$`PRELIMINARYDATAID`
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
        if (!is.null(self$`date_range`)) {
          sprintf(
          '"date_range":
            "%s"
                    ',
          self$`date_range`
          )
        },
        if (!is.null(self$`instant`)) {
          sprintf(
          '"instant":
            %s
                    ',
          tolower(self$`instant`)
          )
        },
        if (!is.null(self$`compareType`)) {
          sprintf(
          '"compareType":
            "%s"
                    ',
          self$`compareType`
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
        if (!is.null(self$`calculated`)) {
          sprintf(
          '"calculated":
            %s
                    ',
          tolower(self$`calculated`)
          )
        },
        if (!is.null(self$`sec_links`)) {
          sprintf(
          '"sec_links":
             [%s]
          ',
          paste(unlist(lapply(self$`sec_links`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`is_guidance_column`)) {
          sprintf(
          '"is_guidance_column":
            %s
                    ',
          tolower(self$`is_guidance_column`)
          )
        },
        if (!is.null(self$`fiscal_period_type`)) {
          sprintf(
          '"fiscal_period_type":
            "%s"
                    ',
          self$`fiscal_period_type`
          )
        },
        if (!is.null(self$`fiscal_period_year`)) {
          sprintf(
          '"fiscal_period_year":
            %d
                    ',
          self$`fiscal_period_year`
          )
        },
        if (!is.null(self$`fiscal_period_period`)) {
          sprintf(
          '"fiscal_period_period":
            "%s"
                    ',
          self$`fiscal_period_period`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of FaceStatementColumn
    #'
    #' @description
    #' Deserialize JSON string into an instance of FaceStatementColumn
    #'
    #' @param input_json the JSON input
    #' @return the instance of FaceStatementColumn
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`PRELIMINARYDATAID` <- this_object$`PRELIMINARYDATAID`
      self$`fiscal_period` <- this_object$`fiscal_period`
      self$`period_start` <- this_object$`period_start`
      self$`period_end` <- this_object$`period_end`
      self$`date_range` <- this_object$`date_range`
      self$`instant` <- this_object$`instant`
      self$`compareType` <- this_object$`compareType`
      self$`preliminary` <- this_object$`preliminary`
      self$`calculated` <- this_object$`calculated`
      self$`sec_links` <- ApiClient$new()$deserializeObj(this_object$`sec_links`, "array[object]", loadNamespace("calcbenchR"))
      self$`is_guidance_column` <- this_object$`is_guidance_column`
      if (!is.null(this_object$`fiscal_period_type`) && !(this_object$`fiscal_period_type` %in% c("unset", "Q1", "Q2", "Q3", "Y"))) {
        stop(paste("Error! \"", this_object$`fiscal_period_type`, "\" cannot be assigned to `fiscal_period_type`. Must be \"unset\", \"Q1\", \"Q2\", \"Q3\", \"Y\".", sep = ""))
      }
      self$`fiscal_period_type` <- this_object$`fiscal_period_type`
      self$`fiscal_period_year` <- this_object$`fiscal_period_year`
      self$`fiscal_period_period` <- this_object$`fiscal_period_period`
      self
    },
    #' Validate JSON input with respect to FaceStatementColumn
    #'
    #' @description
    #' Validate JSON input with respect to FaceStatementColumn and throw an exception if invalid
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
    #' @return String representation of FaceStatementColumn
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
# FaceStatementColumn$unlock()
#
## Below is an example to define the print function
# FaceStatementColumn$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FaceStatementColumn$lock()

