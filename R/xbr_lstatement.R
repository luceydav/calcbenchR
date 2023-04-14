#' Create a new XBRLstatement
#'
#' @description
#' A \"face\" statement.
#'
#' @docType class
#' @title XBRLstatement
#' @description XBRLstatement Class
#' @format An \code{R6Class} generator object
#' @field name  character [optional]
#' @field statementType  character [optional]
#' @field statementSubType  character [optional]
#' @field accessionID  integer [optional]
#' @field abbreviatedStatementType  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
XBRLstatement <- R6::R6Class(
  "XBRLstatement",
  public = list(
    `name` = NULL,
    `statementType` = NULL,
    `statementSubType` = NULL,
    `accessionID` = NULL,
    `abbreviatedStatementType` = NULL,
    #' Initialize a new XBRLstatement class.
    #'
    #' @description
    #' Initialize a new XBRLstatement class.
    #'
    #' @param name name
    #' @param statementType statementType
    #' @param statementSubType statementSubType
    #' @param accessionID accessionID
    #' @param abbreviatedStatementType abbreviatedStatementType
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`name` = NULL, `statementType` = NULL, `statementSubType` = NULL, `accessionID` = NULL, `abbreviatedStatementType` = NULL, ...) {
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`statementType`)) {
        if (!(`statementType` %in% c("unset", "docEntityInfo", "IncomeStatement", "BalanceSheet", "CashFlow", "Disclosure", "StockholdersEquity", "StatementOfComprehensiveIncome", "IncomeStatementParenthetical", "BalanceSheetParenthetical", "CashFlowParenthetical", "DisclosureParenthetical", "stockholdersEquityParenthetical", "StatementOfComprehensiveIncomeParenthetical", "extensionAnchoring"))) {
          stop(paste("Error! \"", `statementType`, "\" cannot be assigned to `statementType`. Must be \"unset\", \"docEntityInfo\", \"IncomeStatement\", \"BalanceSheet\", \"CashFlow\", \"Disclosure\", \"StockholdersEquity\", \"StatementOfComprehensiveIncome\", \"IncomeStatementParenthetical\", \"BalanceSheetParenthetical\", \"CashFlowParenthetical\", \"DisclosureParenthetical\", \"stockholdersEquityParenthetical\", \"StatementOfComprehensiveIncomeParenthetical\", \"extensionAnchoring\".", sep = ""))
        }
        if (!(is.character(`statementType`) && length(`statementType`) == 1)) {
          stop(paste("Error! Invalid data for `statementType`. Must be a string:", `statementType`))
        }
        self$`statementType` <- `statementType`
      }
      if (!is.null(`statementSubType`)) {
        if (!(`statementSubType` %in% c("none", "parenthetical"))) {
          stop(paste("Error! \"", `statementSubType`, "\" cannot be assigned to `statementSubType`. Must be \"none\", \"parenthetical\".", sep = ""))
        }
        if (!(is.character(`statementSubType`) && length(`statementSubType`) == 1)) {
          stop(paste("Error! Invalid data for `statementSubType`. Must be a string:", `statementSubType`))
        }
        self$`statementSubType` <- `statementSubType`
      }
      if (!is.null(`accessionID`)) {
        if (!(is.numeric(`accessionID`) && length(`accessionID`) == 1)) {
          stop(paste("Error! Invalid data for `accessionID`. Must be an integer:", `accessionID`))
        }
        self$`accessionID` <- `accessionID`
      }
      if (!is.null(`abbreviatedStatementType`)) {
        if (!(is.character(`abbreviatedStatementType`) && length(`abbreviatedStatementType`) == 1)) {
          stop(paste("Error! Invalid data for `abbreviatedStatementType`. Must be a string:", `abbreviatedStatementType`))
        }
        self$`abbreviatedStatementType` <- `abbreviatedStatementType`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return XBRLstatement in JSON format
    #' @export
    toJSON = function() {
      XBRLstatementObject <- list()
      if (!is.null(self$`name`)) {
        XBRLstatementObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`statementType`)) {
        XBRLstatementObject[["statementType"]] <-
          self$`statementType`
      }
      if (!is.null(self$`statementSubType`)) {
        XBRLstatementObject[["statementSubType"]] <-
          self$`statementSubType`
      }
      if (!is.null(self$`accessionID`)) {
        XBRLstatementObject[["accessionID"]] <-
          self$`accessionID`
      }
      if (!is.null(self$`abbreviatedStatementType`)) {
        XBRLstatementObject[["abbreviatedStatementType"]] <-
          self$`abbreviatedStatementType`
      }
      XBRLstatementObject
    },
    #' Deserialize JSON string into an instance of XBRLstatement
    #'
    #' @description
    #' Deserialize JSON string into an instance of XBRLstatement
    #'
    #' @param input_json the JSON input
    #' @return the instance of XBRLstatement
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`statementType`)) {
        if (!is.null(this_object$`statementType`) && !(this_object$`statementType` %in% c("unset", "docEntityInfo", "IncomeStatement", "BalanceSheet", "CashFlow", "Disclosure", "StockholdersEquity", "StatementOfComprehensiveIncome", "IncomeStatementParenthetical", "BalanceSheetParenthetical", "CashFlowParenthetical", "DisclosureParenthetical", "stockholdersEquityParenthetical", "StatementOfComprehensiveIncomeParenthetical", "extensionAnchoring"))) {
          stop(paste("Error! \"", this_object$`statementType`, "\" cannot be assigned to `statementType`. Must be \"unset\", \"docEntityInfo\", \"IncomeStatement\", \"BalanceSheet\", \"CashFlow\", \"Disclosure\", \"StockholdersEquity\", \"StatementOfComprehensiveIncome\", \"IncomeStatementParenthetical\", \"BalanceSheetParenthetical\", \"CashFlowParenthetical\", \"DisclosureParenthetical\", \"stockholdersEquityParenthetical\", \"StatementOfComprehensiveIncomeParenthetical\", \"extensionAnchoring\".", sep = ""))
        }
        self$`statementType` <- this_object$`statementType`
      }
      if (!is.null(this_object$`statementSubType`)) {
        if (!is.null(this_object$`statementSubType`) && !(this_object$`statementSubType` %in% c("none", "parenthetical"))) {
          stop(paste("Error! \"", this_object$`statementSubType`, "\" cannot be assigned to `statementSubType`. Must be \"none\", \"parenthetical\".", sep = ""))
        }
        self$`statementSubType` <- this_object$`statementSubType`
      }
      if (!is.null(this_object$`accessionID`)) {
        self$`accessionID` <- this_object$`accessionID`
      }
      if (!is.null(this_object$`abbreviatedStatementType`)) {
        self$`abbreviatedStatementType` <- this_object$`abbreviatedStatementType`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return XBRLstatement in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
          )
        },
        if (!is.null(self$`statementType`)) {
          sprintf(
          '"statementType":
            "%s"
                    ',
          self$`statementType`
          )
        },
        if (!is.null(self$`statementSubType`)) {
          sprintf(
          '"statementSubType":
            "%s"
                    ',
          self$`statementSubType`
          )
        },
        if (!is.null(self$`accessionID`)) {
          sprintf(
          '"accessionID":
            %d
                    ',
          self$`accessionID`
          )
        },
        if (!is.null(self$`abbreviatedStatementType`)) {
          sprintf(
          '"abbreviatedStatementType":
            "%s"
                    ',
          self$`abbreviatedStatementType`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of XBRLstatement
    #'
    #' @description
    #' Deserialize JSON string into an instance of XBRLstatement
    #'
    #' @param input_json the JSON input
    #' @return the instance of XBRLstatement
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      if (!is.null(this_object$`statementType`) && !(this_object$`statementType` %in% c("unset", "docEntityInfo", "IncomeStatement", "BalanceSheet", "CashFlow", "Disclosure", "StockholdersEquity", "StatementOfComprehensiveIncome", "IncomeStatementParenthetical", "BalanceSheetParenthetical", "CashFlowParenthetical", "DisclosureParenthetical", "stockholdersEquityParenthetical", "StatementOfComprehensiveIncomeParenthetical", "extensionAnchoring"))) {
        stop(paste("Error! \"", this_object$`statementType`, "\" cannot be assigned to `statementType`. Must be \"unset\", \"docEntityInfo\", \"IncomeStatement\", \"BalanceSheet\", \"CashFlow\", \"Disclosure\", \"StockholdersEquity\", \"StatementOfComprehensiveIncome\", \"IncomeStatementParenthetical\", \"BalanceSheetParenthetical\", \"CashFlowParenthetical\", \"DisclosureParenthetical\", \"stockholdersEquityParenthetical\", \"StatementOfComprehensiveIncomeParenthetical\", \"extensionAnchoring\".", sep = ""))
      }
      self$`statementType` <- this_object$`statementType`
      if (!is.null(this_object$`statementSubType`) && !(this_object$`statementSubType` %in% c("none", "parenthetical"))) {
        stop(paste("Error! \"", this_object$`statementSubType`, "\" cannot be assigned to `statementSubType`. Must be \"none\", \"parenthetical\".", sep = ""))
      }
      self$`statementSubType` <- this_object$`statementSubType`
      self$`accessionID` <- this_object$`accessionID`
      self$`abbreviatedStatementType` <- this_object$`abbreviatedStatementType`
      self
    },
    #' Validate JSON input with respect to XBRLstatement
    #'
    #' @description
    #' Validate JSON input with respect to XBRLstatement and throw an exception if invalid
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
    #' @return String representation of XBRLstatement
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
# XBRLstatement$unlock()
#
## Below is an example to define the print function
# XBRLstatement$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# XBRLstatement$lock()

