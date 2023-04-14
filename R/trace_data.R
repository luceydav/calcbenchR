#' Create a new TraceData
#'
#' @description
#' TraceData Class
#'
#' @docType class
#' @title TraceData
#' @description TraceData Class
#' @format An \code{R6Class} generator object
#' @field dimensions  character [optional]
#' @field local_name  character [optional]
#' @field negative_weight  character [optional]
#' @field XBRL_fact_value  object [optional]
#' @field fact_id  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TraceData <- R6::R6Class(
  "TraceData",
  public = list(
    `dimensions` = NULL,
    `local_name` = NULL,
    `negative_weight` = NULL,
    `XBRL_fact_value` = NULL,
    `fact_id` = NULL,
    #' Initialize a new TraceData class.
    #'
    #' @description
    #' Initialize a new TraceData class.
    #'
    #' @param dimensions dimensions
    #' @param local_name local_name
    #' @param negative_weight negative_weight
    #' @param XBRL_fact_value XBRL_fact_value
    #' @param fact_id fact_id
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`dimensions` = NULL, `local_name` = NULL, `negative_weight` = NULL, `XBRL_fact_value` = NULL, `fact_id` = NULL, ...) {
      if (!is.null(`dimensions`)) {
        if (!(is.character(`dimensions`) && length(`dimensions`) == 1)) {
          stop(paste("Error! Invalid data for `dimensions`. Must be a string:", `dimensions`))
        }
        self$`dimensions` <- `dimensions`
      }
      if (!is.null(`local_name`)) {
        if (!(is.character(`local_name`) && length(`local_name`) == 1)) {
          stop(paste("Error! Invalid data for `local_name`. Must be a string:", `local_name`))
        }
        self$`local_name` <- `local_name`
      }
      if (!is.null(`negative_weight`)) {
        if (!(is.logical(`negative_weight`) && length(`negative_weight`) == 1)) {
          stop(paste("Error! Invalid data for `negative_weight`. Must be a boolean:", `negative_weight`))
        }
        self$`negative_weight` <- `negative_weight`
      }
      if (!is.null(`XBRL_fact_value`)) {
        self$`XBRL_fact_value` <- `XBRL_fact_value`
      }
      if (!is.null(`fact_id`)) {
        if (!(is.numeric(`fact_id`) && length(`fact_id`) == 1)) {
          stop(paste("Error! Invalid data for `fact_id`. Must be an integer:", `fact_id`))
        }
        self$`fact_id` <- `fact_id`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TraceData in JSON format
    #' @export
    toJSON = function() {
      TraceDataObject <- list()
      if (!is.null(self$`dimensions`)) {
        TraceDataObject[["dimensions"]] <-
          self$`dimensions`
      }
      if (!is.null(self$`local_name`)) {
        TraceDataObject[["local_name"]] <-
          self$`local_name`
      }
      if (!is.null(self$`negative_weight`)) {
        TraceDataObject[["negative_weight"]] <-
          self$`negative_weight`
      }
      if (!is.null(self$`XBRL_fact_value`)) {
        TraceDataObject[["XBRL_fact_value"]] <-
          self$`XBRL_fact_value`
      }
      if (!is.null(self$`fact_id`)) {
        TraceDataObject[["fact_id"]] <-
          self$`fact_id`
      }
      TraceDataObject
    },
    #' Deserialize JSON string into an instance of TraceData
    #'
    #' @description
    #' Deserialize JSON string into an instance of TraceData
    #'
    #' @param input_json the JSON input
    #' @return the instance of TraceData
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`dimensions`)) {
        self$`dimensions` <- this_object$`dimensions`
      }
      if (!is.null(this_object$`local_name`)) {
        self$`local_name` <- this_object$`local_name`
      }
      if (!is.null(this_object$`negative_weight`)) {
        self$`negative_weight` <- this_object$`negative_weight`
      }
      if (!is.null(this_object$`XBRL_fact_value`)) {
        self$`XBRL_fact_value` <- this_object$`XBRL_fact_value`
      }
      if (!is.null(this_object$`fact_id`)) {
        self$`fact_id` <- this_object$`fact_id`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TraceData in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`dimensions`)) {
          sprintf(
          '"dimensions":
            "%s"
                    ',
          self$`dimensions`
          )
        },
        if (!is.null(self$`local_name`)) {
          sprintf(
          '"local_name":
            "%s"
                    ',
          self$`local_name`
          )
        },
        if (!is.null(self$`negative_weight`)) {
          sprintf(
          '"negative_weight":
            %s
                    ',
          tolower(self$`negative_weight`)
          )
        },
        if (!is.null(self$`XBRL_fact_value`)) {
          sprintf(
          '"XBRL_fact_value":
            "%s"
                    ',
          self$`XBRL_fact_value`
          )
        },
        if (!is.null(self$`fact_id`)) {
          sprintf(
          '"fact_id":
            %d
                    ',
          self$`fact_id`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of TraceData
    #'
    #' @description
    #' Deserialize JSON string into an instance of TraceData
    #'
    #' @param input_json the JSON input
    #' @return the instance of TraceData
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`dimensions` <- this_object$`dimensions`
      self$`local_name` <- this_object$`local_name`
      self$`negative_weight` <- this_object$`negative_weight`
      self$`XBRL_fact_value` <- this_object$`XBRL_fact_value`
      self$`fact_id` <- this_object$`fact_id`
      self
    },
    #' Validate JSON input with respect to TraceData
    #'
    #' @description
    #' Validate JSON input with respect to TraceData and throw an exception if invalid
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
    #' @return String representation of TraceData
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
# TraceData$unlock()
#
## Below is an example to define the print function
# TraceData$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TraceData$lock()

