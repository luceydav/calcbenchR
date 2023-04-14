#' Create a new Form13FQueryPiece
#'
#' @description
#' Form13FQueryPiece Class
#'
#' @docType class
#' @title Form13FQueryPiece
#' @description Form13FQueryPiece Class
#' @format An \code{R6Class} generator object
#' @field parameter  character [optional]
#' @field Operator  integer [optional]
#' @field value  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Form13FQueryPiece <- R6::R6Class(
  "Form13FQueryPiece",
  public = list(
    `parameter` = NULL,
    `Operator` = NULL,
    `value` = NULL,
    #' Initialize a new Form13FQueryPiece class.
    #'
    #' @description
    #' Initialize a new Form13FQueryPiece class.
    #'
    #' @param parameter parameter
    #' @param Operator Operator
    #' @param value value
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`parameter` = NULL, `Operator` = NULL, `value` = NULL, ...) {
      if (!is.null(`parameter`)) {
        if (!(`parameter` %in% c("fiscalYear", "fiscalPeriod", "calendarPeriod", "calendarYear", "periodEndOrInstant", "periodStart", "fastIndex", "fastIndexCal", "ownername", "ownerCIK", "nameOfIssuer", "titleOfClass", "cusip", "value", "sshPrnamt", "sshPrnamtType", "investmentDiscretion", "Sole", "Shared", "None", "filingDate"))) {
          stop(paste("Error! \"", `parameter`, "\" cannot be assigned to `parameter`. Must be \"fiscalYear\", \"fiscalPeriod\", \"calendarPeriod\", \"calendarYear\", \"periodEndOrInstant\", \"periodStart\", \"fastIndex\", \"fastIndexCal\", \"ownername\", \"ownerCIK\", \"nameOfIssuer\", \"titleOfClass\", \"cusip\", \"value\", \"sshPrnamt\", \"sshPrnamtType\", \"investmentDiscretion\", \"Sole\", \"Shared\", \"None\", \"filingDate\".", sep = ""))
        }
        if (!(is.character(`parameter`) && length(`parameter`) == 1)) {
          stop(paste("Error! Invalid data for `parameter`. Must be a string:", `parameter`))
        }
        self$`parameter` <- `parameter`
      }
      if (!is.null(`Operator`)) {
        if (!(is.numeric(`Operator`) && length(`Operator`) == 1)) {
          stop(paste("Error! Invalid data for `Operator`. Must be an integer:", `Operator`))
        }
        self$`Operator` <- `Operator`
      }
      if (!is.null(`value`)) {
        if (!(is.character(`value`) && length(`value`) == 1)) {
          stop(paste("Error! Invalid data for `value`. Must be a string:", `value`))
        }
        self$`value` <- `value`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Form13FQueryPiece in JSON format
    #' @export
    toJSON = function() {
      Form13FQueryPieceObject <- list()
      if (!is.null(self$`parameter`)) {
        Form13FQueryPieceObject[["parameter"]] <-
          self$`parameter`
      }
      if (!is.null(self$`Operator`)) {
        Form13FQueryPieceObject[["Operator"]] <-
          self$`Operator`
      }
      if (!is.null(self$`value`)) {
        Form13FQueryPieceObject[["value"]] <-
          self$`value`
      }
      Form13FQueryPieceObject
    },
    #' Deserialize JSON string into an instance of Form13FQueryPiece
    #'
    #' @description
    #' Deserialize JSON string into an instance of Form13FQueryPiece
    #'
    #' @param input_json the JSON input
    #' @return the instance of Form13FQueryPiece
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`parameter`)) {
        if (!is.null(this_object$`parameter`) && !(this_object$`parameter` %in% c("fiscalYear", "fiscalPeriod", "calendarPeriod", "calendarYear", "periodEndOrInstant", "periodStart", "fastIndex", "fastIndexCal", "ownername", "ownerCIK", "nameOfIssuer", "titleOfClass", "cusip", "value", "sshPrnamt", "sshPrnamtType", "investmentDiscretion", "Sole", "Shared", "None", "filingDate"))) {
          stop(paste("Error! \"", this_object$`parameter`, "\" cannot be assigned to `parameter`. Must be \"fiscalYear\", \"fiscalPeriod\", \"calendarPeriod\", \"calendarYear\", \"periodEndOrInstant\", \"periodStart\", \"fastIndex\", \"fastIndexCal\", \"ownername\", \"ownerCIK\", \"nameOfIssuer\", \"titleOfClass\", \"cusip\", \"value\", \"sshPrnamt\", \"sshPrnamtType\", \"investmentDiscretion\", \"Sole\", \"Shared\", \"None\", \"filingDate\".", sep = ""))
        }
        self$`parameter` <- this_object$`parameter`
      }
      if (!is.null(this_object$`Operator`)) {
        self$`Operator` <- this_object$`Operator`
      }
      if (!is.null(this_object$`value`)) {
        self$`value` <- this_object$`value`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Form13FQueryPiece in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`parameter`)) {
          sprintf(
          '"parameter":
            "%s"
                    ',
          self$`parameter`
          )
        },
        if (!is.null(self$`Operator`)) {
          sprintf(
          '"Operator":
            %d
                    ',
          self$`Operator`
          )
        },
        if (!is.null(self$`value`)) {
          sprintf(
          '"value":
            "%s"
                    ',
          self$`value`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of Form13FQueryPiece
    #'
    #' @description
    #' Deserialize JSON string into an instance of Form13FQueryPiece
    #'
    #' @param input_json the JSON input
    #' @return the instance of Form13FQueryPiece
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`parameter`) && !(this_object$`parameter` %in% c("fiscalYear", "fiscalPeriod", "calendarPeriod", "calendarYear", "periodEndOrInstant", "periodStart", "fastIndex", "fastIndexCal", "ownername", "ownerCIK", "nameOfIssuer", "titleOfClass", "cusip", "value", "sshPrnamt", "sshPrnamtType", "investmentDiscretion", "Sole", "Shared", "None", "filingDate"))) {
        stop(paste("Error! \"", this_object$`parameter`, "\" cannot be assigned to `parameter`. Must be \"fiscalYear\", \"fiscalPeriod\", \"calendarPeriod\", \"calendarYear\", \"periodEndOrInstant\", \"periodStart\", \"fastIndex\", \"fastIndexCal\", \"ownername\", \"ownerCIK\", \"nameOfIssuer\", \"titleOfClass\", \"cusip\", \"value\", \"sshPrnamt\", \"sshPrnamtType\", \"investmentDiscretion\", \"Sole\", \"Shared\", \"None\", \"filingDate\".", sep = ""))
      }
      self$`parameter` <- this_object$`parameter`
      self$`Operator` <- this_object$`Operator`
      self$`value` <- this_object$`value`
      self
    },
    #' Validate JSON input with respect to Form13FQueryPiece
    #'
    #' @description
    #' Validate JSON input with respect to Form13FQueryPiece and throw an exception if invalid
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
    #' @return String representation of Form13FQueryPiece
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
# Form13FQueryPiece$unlock()
#
## Below is an example to define the print function
# Form13FQueryPiece$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Form13FQueryPiece$lock()

