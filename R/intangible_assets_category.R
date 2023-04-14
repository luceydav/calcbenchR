#' Create a new IntangibleAssetsCategory
#'
#' @description
#' IntangibleAssetsCategory Class
#'
#' @docType class
#' @title IntangibleAssetsCategory
#' @description IntangibleAssetsCategory Class
#' @format An \code{R6Class} generator object
#' @field category  character [optional]
#' @field value  numeric [optional]
#' @field useful_life_upper_range  numeric [optional]
#' @field useful_life_lower_range  numeric [optional]
#' @field trace_facts  list(\link{TraceData}) [optional]
#' @field format_type  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
IntangibleAssetsCategory <- R6::R6Class(
  "IntangibleAssetsCategory",
  public = list(
    `category` = NULL,
    `value` = NULL,
    `useful_life_upper_range` = NULL,
    `useful_life_lower_range` = NULL,
    `trace_facts` = NULL,
    `format_type` = NULL,
    #' Initialize a new IntangibleAssetsCategory class.
    #'
    #' @description
    #' Initialize a new IntangibleAssetsCategory class.
    #'
    #' @param category category
    #' @param value value
    #' @param useful_life_upper_range useful_life_upper_range
    #' @param useful_life_lower_range useful_life_lower_range
    #' @param trace_facts trace_facts
    #' @param format_type format_type
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`category` = NULL, `value` = NULL, `useful_life_upper_range` = NULL, `useful_life_lower_range` = NULL, `trace_facts` = NULL, `format_type` = NULL, ...) {
      if (!is.null(`category`)) {
        if (!(is.character(`category`) && length(`category`) == 1)) {
          stop(paste("Error! Invalid data for `category`. Must be a string:", `category`))
        }
        self$`category` <- `category`
      }
      if (!is.null(`value`)) {
        if (!(is.numeric(`value`) && length(`value`) == 1)) {
          stop(paste("Error! Invalid data for `value`. Must be a number:", `value`))
        }
        self$`value` <- `value`
      }
      if (!is.null(`useful_life_upper_range`)) {
        if (!(is.numeric(`useful_life_upper_range`) && length(`useful_life_upper_range`) == 1)) {
          stop(paste("Error! Invalid data for `useful_life_upper_range`. Must be a number:", `useful_life_upper_range`))
        }
        self$`useful_life_upper_range` <- `useful_life_upper_range`
      }
      if (!is.null(`useful_life_lower_range`)) {
        if (!(is.numeric(`useful_life_lower_range`) && length(`useful_life_lower_range`) == 1)) {
          stop(paste("Error! Invalid data for `useful_life_lower_range`. Must be a number:", `useful_life_lower_range`))
        }
        self$`useful_life_lower_range` <- `useful_life_lower_range`
      }
      if (!is.null(`trace_facts`)) {
        stopifnot(is.vector(`trace_facts`), length(`trace_facts`) != 0)
        sapply(`trace_facts`, function(x) stopifnot(R6::is.R6(x)))
        self$`trace_facts` <- `trace_facts`
      }
      if (!is.null(`format_type`)) {
        if (!(`format_type` %in% c("error", "text", "currency", "percent", "twoDecimalPointsCurrency", "twoDecimalPointsNumber", "number", "date", "rawNumber", "boolean", "formula", "currency_cad", "currency_eur", "currency_gbp", "currency_jpy", "currency_cny", "emptyCell"))) {
          stop(paste("Error! \"", `format_type`, "\" cannot be assigned to `format_type`. Must be \"error\", \"text\", \"currency\", \"percent\", \"twoDecimalPointsCurrency\", \"twoDecimalPointsNumber\", \"number\", \"date\", \"rawNumber\", \"boolean\", \"formula\", \"currency_cad\", \"currency_eur\", \"currency_gbp\", \"currency_jpy\", \"currency_cny\", \"emptyCell\".", sep = ""))
        }
        if (!(is.character(`format_type`) && length(`format_type`) == 1)) {
          stop(paste("Error! Invalid data for `format_type`. Must be a string:", `format_type`))
        }
        self$`format_type` <- `format_type`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return IntangibleAssetsCategory in JSON format
    #' @export
    toJSON = function() {
      IntangibleAssetsCategoryObject <- list()
      if (!is.null(self$`category`)) {
        IntangibleAssetsCategoryObject[["category"]] <-
          self$`category`
      }
      if (!is.null(self$`value`)) {
        IntangibleAssetsCategoryObject[["value"]] <-
          self$`value`
      }
      if (!is.null(self$`useful_life_upper_range`)) {
        IntangibleAssetsCategoryObject[["useful_life_upper_range"]] <-
          self$`useful_life_upper_range`
      }
      if (!is.null(self$`useful_life_lower_range`)) {
        IntangibleAssetsCategoryObject[["useful_life_lower_range"]] <-
          self$`useful_life_lower_range`
      }
      if (!is.null(self$`trace_facts`)) {
        IntangibleAssetsCategoryObject[["trace_facts"]] <-
          lapply(self$`trace_facts`, function(x) x$toJSON())
      }
      if (!is.null(self$`format_type`)) {
        IntangibleAssetsCategoryObject[["format_type"]] <-
          self$`format_type`
      }
      IntangibleAssetsCategoryObject
    },
    #' Deserialize JSON string into an instance of IntangibleAssetsCategory
    #'
    #' @description
    #' Deserialize JSON string into an instance of IntangibleAssetsCategory
    #'
    #' @param input_json the JSON input
    #' @return the instance of IntangibleAssetsCategory
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`category`)) {
        self$`category` <- this_object$`category`
      }
      if (!is.null(this_object$`value`)) {
        self$`value` <- this_object$`value`
      }
      if (!is.null(this_object$`useful_life_upper_range`)) {
        self$`useful_life_upper_range` <- this_object$`useful_life_upper_range`
      }
      if (!is.null(this_object$`useful_life_lower_range`)) {
        self$`useful_life_lower_range` <- this_object$`useful_life_lower_range`
      }
      if (!is.null(this_object$`trace_facts`)) {
        self$`trace_facts` <- ApiClient$new()$deserializeObj(this_object$`trace_facts`, "array[TraceData]", loadNamespace("calcbenchR"))
      }
      if (!is.null(this_object$`format_type`)) {
        if (!is.null(this_object$`format_type`) && !(this_object$`format_type` %in% c("error", "text", "currency", "percent", "twoDecimalPointsCurrency", "twoDecimalPointsNumber", "number", "date", "rawNumber", "boolean", "formula", "currency_cad", "currency_eur", "currency_gbp", "currency_jpy", "currency_cny", "emptyCell"))) {
          stop(paste("Error! \"", this_object$`format_type`, "\" cannot be assigned to `format_type`. Must be \"error\", \"text\", \"currency\", \"percent\", \"twoDecimalPointsCurrency\", \"twoDecimalPointsNumber\", \"number\", \"date\", \"rawNumber\", \"boolean\", \"formula\", \"currency_cad\", \"currency_eur\", \"currency_gbp\", \"currency_jpy\", \"currency_cny\", \"emptyCell\".", sep = ""))
        }
        self$`format_type` <- this_object$`format_type`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return IntangibleAssetsCategory in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`category`)) {
          sprintf(
          '"category":
            "%s"
                    ',
          self$`category`
          )
        },
        if (!is.null(self$`value`)) {
          sprintf(
          '"value":
            %d
                    ',
          self$`value`
          )
        },
        if (!is.null(self$`useful_life_upper_range`)) {
          sprintf(
          '"useful_life_upper_range":
            %d
                    ',
          self$`useful_life_upper_range`
          )
        },
        if (!is.null(self$`useful_life_lower_range`)) {
          sprintf(
          '"useful_life_lower_range":
            %d
                    ',
          self$`useful_life_lower_range`
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
        if (!is.null(self$`format_type`)) {
          sprintf(
          '"format_type":
            "%s"
                    ',
          self$`format_type`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of IntangibleAssetsCategory
    #'
    #' @description
    #' Deserialize JSON string into an instance of IntangibleAssetsCategory
    #'
    #' @param input_json the JSON input
    #' @return the instance of IntangibleAssetsCategory
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`category` <- this_object$`category`
      self$`value` <- this_object$`value`
      self$`useful_life_upper_range` <- this_object$`useful_life_upper_range`
      self$`useful_life_lower_range` <- this_object$`useful_life_lower_range`
      self$`trace_facts` <- ApiClient$new()$deserializeObj(this_object$`trace_facts`, "array[TraceData]", loadNamespace("calcbenchR"))
      if (!is.null(this_object$`format_type`) && !(this_object$`format_type` %in% c("error", "text", "currency", "percent", "twoDecimalPointsCurrency", "twoDecimalPointsNumber", "number", "date", "rawNumber", "boolean", "formula", "currency_cad", "currency_eur", "currency_gbp", "currency_jpy", "currency_cny", "emptyCell"))) {
        stop(paste("Error! \"", this_object$`format_type`, "\" cannot be assigned to `format_type`. Must be \"error\", \"text\", \"currency\", \"percent\", \"twoDecimalPointsCurrency\", \"twoDecimalPointsNumber\", \"number\", \"date\", \"rawNumber\", \"boolean\", \"formula\", \"currency_cad\", \"currency_eur\", \"currency_gbp\", \"currency_jpy\", \"currency_cny\", \"emptyCell\".", sep = ""))
      }
      self$`format_type` <- this_object$`format_type`
      self
    },
    #' Validate JSON input with respect to IntangibleAssetsCategory
    #'
    #' @description
    #' Validate JSON input with respect to IntangibleAssetsCategory and throw an exception if invalid
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
    #' @return String representation of IntangibleAssetsCategory
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
# IntangibleAssetsCategory$unlock()
#
## Below is an example to define the print function
# IntangibleAssetsCategory$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# IntangibleAssetsCategory$lock()

