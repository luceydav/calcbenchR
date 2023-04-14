#' Create a new XbrlQueryPiece
#'
#' @description
#' XbrlQueryPiece Class
#'
#' @docType class
#' @title XbrlQueryPiece
#' @description XbrlQueryPiece Class
#' @format An \code{R6Class} generator object
#' @field parameter  character [optional]
#' @field Operator  character [optional]
#' @field value  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
XbrlQueryPiece <- R6::R6Class(
  "XbrlQueryPiece",
  public = list(
    `parameter` = NULL,
    `Operator` = NULL,
    `value` = NULL,
    #' Initialize a new XbrlQueryPiece class.
    #'
    #' @description
    #' Initialize a new XbrlQueryPiece class.
    #'
    #' @param parameter parameter
    #' @param Operator Operator
    #' @param value value
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`parameter` = NULL, `Operator` = NULL, `value` = NULL, ...) {
      if (!is.null(`parameter`)) {
        if (!(`parameter` %in% c("numericalValue", "textValue", "UOM", "ultimusIndex", "isrevisionHasBeenrevised", "signSwitched", "corrected", "factversion", "firstreportedValue", "fiscalYear", "fiscalPeriod", "calendarPeriod", "calendarYear", "periodEndOrInstant", "periodStart", "fastIndex", "fastIndexCal", "XBRLtag", "qnameIDmin", "entityID", "CIK", "ticker", "sicCode", "StandardizedMetricFace", "StandardizedMetricFootnote", "periodTypeID", "creditOrDebit", "XBRLtagtaxonomy", "axisName", "memberName", "specifiesDimensions", "memberTaxonomy", "originalAndRevisions", "label", "filingfiscalYear", "filingfiscalPeriod", "filingDate", "filingType", "guidance", "nongaap", "rangeHigh", "rangeLow", "statementType", "showStatementName", "mostRecentFiling", "isExtension", "isIFRS", "isGAAP", "numericalValueFS"))) {
          stop(paste("Error! \"", `parameter`, "\" cannot be assigned to `parameter`. Must be \"numericalValue\", \"textValue\", \"UOM\", \"ultimusIndex\", \"isrevisionHasBeenrevised\", \"signSwitched\", \"corrected\", \"factversion\", \"firstreportedValue\", \"fiscalYear\", \"fiscalPeriod\", \"calendarPeriod\", \"calendarYear\", \"periodEndOrInstant\", \"periodStart\", \"fastIndex\", \"fastIndexCal\", \"XBRLtag\", \"qnameIDmin\", \"entityID\", \"CIK\", \"ticker\", \"sicCode\", \"StandardizedMetricFace\", \"StandardizedMetricFootnote\", \"periodTypeID\", \"creditOrDebit\", \"XBRLtagtaxonomy\", \"axisName\", \"memberName\", \"specifiesDimensions\", \"memberTaxonomy\", \"originalAndRevisions\", \"label\", \"filingfiscalYear\", \"filingfiscalPeriod\", \"filingDate\", \"filingType\", \"guidance\", \"nongaap\", \"rangeHigh\", \"rangeLow\", \"statementType\", \"showStatementName\", \"mostRecentFiling\", \"isExtension\", \"isIFRS\", \"isGAAP\", \"numericalValueFS\".", sep = ""))
        }
        if (!(is.character(`parameter`) && length(`parameter`) == 1)) {
          stop(paste("Error! Invalid data for `parameter`. Must be a string:", `parameter`))
        }
        self$`parameter` <- `parameter`
      }
      if (!is.null(`Operator`)) {
        if (!(`Operator` %in% c("equals", "notequals", "gt", "gteq", "lt", "lteq", "in_", "in__shortcut_internaluseonly", "notin", "contains", "startsWith", "endsWith", "notcontains", "notstartsWith", "notendsWith", "textequals", "textnotequals", "negate"))) {
          stop(paste("Error! \"", `Operator`, "\" cannot be assigned to `Operator`. Must be \"equals\", \"notequals\", \"gt\", \"gteq\", \"lt\", \"lteq\", \"in_\", \"in__shortcut_internaluseonly\", \"notin\", \"contains\", \"startsWith\", \"endsWith\", \"notcontains\", \"notstartsWith\", \"notendsWith\", \"textequals\", \"textnotequals\", \"negate\".", sep = ""))
        }
        if (!(is.character(`Operator`) && length(`Operator`) == 1)) {
          stop(paste("Error! Invalid data for `Operator`. Must be a string:", `Operator`))
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
    #' @return XbrlQueryPiece in JSON format
    #' @export
    toJSON = function() {
      XbrlQueryPieceObject <- list()
      if (!is.null(self$`parameter`)) {
        XbrlQueryPieceObject[["parameter"]] <-
          self$`parameter`
      }
      if (!is.null(self$`Operator`)) {
        XbrlQueryPieceObject[["Operator"]] <-
          self$`Operator`
      }
      if (!is.null(self$`value`)) {
        XbrlQueryPieceObject[["value"]] <-
          self$`value`
      }
      XbrlQueryPieceObject
    },
    #' Deserialize JSON string into an instance of XbrlQueryPiece
    #'
    #' @description
    #' Deserialize JSON string into an instance of XbrlQueryPiece
    #'
    #' @param input_json the JSON input
    #' @return the instance of XbrlQueryPiece
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`parameter`)) {
        if (!is.null(this_object$`parameter`) && !(this_object$`parameter` %in% c("numericalValue", "textValue", "UOM", "ultimusIndex", "isrevisionHasBeenrevised", "signSwitched", "corrected", "factversion", "firstreportedValue", "fiscalYear", "fiscalPeriod", "calendarPeriod", "calendarYear", "periodEndOrInstant", "periodStart", "fastIndex", "fastIndexCal", "XBRLtag", "qnameIDmin", "entityID", "CIK", "ticker", "sicCode", "StandardizedMetricFace", "StandardizedMetricFootnote", "periodTypeID", "creditOrDebit", "XBRLtagtaxonomy", "axisName", "memberName", "specifiesDimensions", "memberTaxonomy", "originalAndRevisions", "label", "filingfiscalYear", "filingfiscalPeriod", "filingDate", "filingType", "guidance", "nongaap", "rangeHigh", "rangeLow", "statementType", "showStatementName", "mostRecentFiling", "isExtension", "isIFRS", "isGAAP", "numericalValueFS"))) {
          stop(paste("Error! \"", this_object$`parameter`, "\" cannot be assigned to `parameter`. Must be \"numericalValue\", \"textValue\", \"UOM\", \"ultimusIndex\", \"isrevisionHasBeenrevised\", \"signSwitched\", \"corrected\", \"factversion\", \"firstreportedValue\", \"fiscalYear\", \"fiscalPeriod\", \"calendarPeriod\", \"calendarYear\", \"periodEndOrInstant\", \"periodStart\", \"fastIndex\", \"fastIndexCal\", \"XBRLtag\", \"qnameIDmin\", \"entityID\", \"CIK\", \"ticker\", \"sicCode\", \"StandardizedMetricFace\", \"StandardizedMetricFootnote\", \"periodTypeID\", \"creditOrDebit\", \"XBRLtagtaxonomy\", \"axisName\", \"memberName\", \"specifiesDimensions\", \"memberTaxonomy\", \"originalAndRevisions\", \"label\", \"filingfiscalYear\", \"filingfiscalPeriod\", \"filingDate\", \"filingType\", \"guidance\", \"nongaap\", \"rangeHigh\", \"rangeLow\", \"statementType\", \"showStatementName\", \"mostRecentFiling\", \"isExtension\", \"isIFRS\", \"isGAAP\", \"numericalValueFS\".", sep = ""))
        }
        self$`parameter` <- this_object$`parameter`
      }
      if (!is.null(this_object$`Operator`)) {
        if (!is.null(this_object$`Operator`) && !(this_object$`Operator` %in% c("equals", "notequals", "gt", "gteq", "lt", "lteq", "in_", "in__shortcut_internaluseonly", "notin", "contains", "startsWith", "endsWith", "notcontains", "notstartsWith", "notendsWith", "textequals", "textnotequals", "negate"))) {
          stop(paste("Error! \"", this_object$`Operator`, "\" cannot be assigned to `Operator`. Must be \"equals\", \"notequals\", \"gt\", \"gteq\", \"lt\", \"lteq\", \"in_\", \"in__shortcut_internaluseonly\", \"notin\", \"contains\", \"startsWith\", \"endsWith\", \"notcontains\", \"notstartsWith\", \"notendsWith\", \"textequals\", \"textnotequals\", \"negate\".", sep = ""))
        }
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
    #' @return XbrlQueryPiece in JSON format
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
            "%s"
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
    #' Deserialize JSON string into an instance of XbrlQueryPiece
    #'
    #' @description
    #' Deserialize JSON string into an instance of XbrlQueryPiece
    #'
    #' @param input_json the JSON input
    #' @return the instance of XbrlQueryPiece
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`parameter`) && !(this_object$`parameter` %in% c("numericalValue", "textValue", "UOM", "ultimusIndex", "isrevisionHasBeenrevised", "signSwitched", "corrected", "factversion", "firstreportedValue", "fiscalYear", "fiscalPeriod", "calendarPeriod", "calendarYear", "periodEndOrInstant", "periodStart", "fastIndex", "fastIndexCal", "XBRLtag", "qnameIDmin", "entityID", "CIK", "ticker", "sicCode", "StandardizedMetricFace", "StandardizedMetricFootnote", "periodTypeID", "creditOrDebit", "XBRLtagtaxonomy", "axisName", "memberName", "specifiesDimensions", "memberTaxonomy", "originalAndRevisions", "label", "filingfiscalYear", "filingfiscalPeriod", "filingDate", "filingType", "guidance", "nongaap", "rangeHigh", "rangeLow", "statementType", "showStatementName", "mostRecentFiling", "isExtension", "isIFRS", "isGAAP", "numericalValueFS"))) {
        stop(paste("Error! \"", this_object$`parameter`, "\" cannot be assigned to `parameter`. Must be \"numericalValue\", \"textValue\", \"UOM\", \"ultimusIndex\", \"isrevisionHasBeenrevised\", \"signSwitched\", \"corrected\", \"factversion\", \"firstreportedValue\", \"fiscalYear\", \"fiscalPeriod\", \"calendarPeriod\", \"calendarYear\", \"periodEndOrInstant\", \"periodStart\", \"fastIndex\", \"fastIndexCal\", \"XBRLtag\", \"qnameIDmin\", \"entityID\", \"CIK\", \"ticker\", \"sicCode\", \"StandardizedMetricFace\", \"StandardizedMetricFootnote\", \"periodTypeID\", \"creditOrDebit\", \"XBRLtagtaxonomy\", \"axisName\", \"memberName\", \"specifiesDimensions\", \"memberTaxonomy\", \"originalAndRevisions\", \"label\", \"filingfiscalYear\", \"filingfiscalPeriod\", \"filingDate\", \"filingType\", \"guidance\", \"nongaap\", \"rangeHigh\", \"rangeLow\", \"statementType\", \"showStatementName\", \"mostRecentFiling\", \"isExtension\", \"isIFRS\", \"isGAAP\", \"numericalValueFS\".", sep = ""))
      }
      self$`parameter` <- this_object$`parameter`
      if (!is.null(this_object$`Operator`) && !(this_object$`Operator` %in% c("equals", "notequals", "gt", "gteq", "lt", "lteq", "in_", "in__shortcut_internaluseonly", "notin", "contains", "startsWith", "endsWith", "notcontains", "notstartsWith", "notendsWith", "textequals", "textnotequals", "negate"))) {
        stop(paste("Error! \"", this_object$`Operator`, "\" cannot be assigned to `Operator`. Must be \"equals\", \"notequals\", \"gt\", \"gteq\", \"lt\", \"lteq\", \"in_\", \"in__shortcut_internaluseonly\", \"notin\", \"contains\", \"startsWith\", \"endsWith\", \"notcontains\", \"notstartsWith\", \"notendsWith\", \"textequals\", \"textnotequals\", \"negate\".", sep = ""))
      }
      self$`Operator` <- this_object$`Operator`
      self$`value` <- this_object$`value`
      self
    },
    #' Validate JSON input with respect to XbrlQueryPiece
    #'
    #' @description
    #' Validate JSON input with respect to XbrlQueryPiece and throw an exception if invalid
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
    #' @return String representation of XbrlQueryPiece
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
# XbrlQueryPiece$unlock()
#
## Below is an example to define the print function
# XbrlQueryPiece$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# XbrlQueryPiece$lock()

