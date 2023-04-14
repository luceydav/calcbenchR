#' Create a new StandardizedMetricDefinition
#'
#' @description
#' StandardizedMetricDefinition Class
#'
#' @docType class
#' @title StandardizedMetricDefinition
#' @description StandardizedMetricDefinition Class
#' @format An \code{R6Class} generator object
#' @field metric  character [optional]
#' @field name  character [optional]
#' @field period_type  character [optional]
#' @field section  character [optional]
#' @field class  character [optional]
#' @field equation  character [optional]
#' @field format_type  character [optional]
#' @field is_face  character [optional]
#' @field is_footnote  character [optional]
#' @field is_ratio  character [optional]
#' @field description  character [optional]
#' @field UnitOfMeasure  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
StandardizedMetricDefinition <- R6::R6Class(
  "StandardizedMetricDefinition",
  public = list(
    `metric` = NULL,
    `name` = NULL,
    `period_type` = NULL,
    `section` = NULL,
    `class` = NULL,
    `equation` = NULL,
    `format_type` = NULL,
    `is_face` = NULL,
    `is_footnote` = NULL,
    `is_ratio` = NULL,
    `description` = NULL,
    `UnitOfMeasure` = NULL,
    #' Initialize a new StandardizedMetricDefinition class.
    #'
    #' @description
    #' Initialize a new StandardizedMetricDefinition class.
    #'
    #' @param metric metric
    #' @param name name
    #' @param period_type period_type
    #' @param section section
    #' @param class class
    #' @param equation equation
    #' @param format_type format_type
    #' @param is_face is_face
    #' @param is_footnote is_footnote
    #' @param is_ratio is_ratio
    #' @param description description
    #' @param UnitOfMeasure UnitOfMeasure
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`metric` = NULL, `name` = NULL, `period_type` = NULL, `section` = NULL, `class` = NULL, `equation` = NULL, `format_type` = NULL, `is_face` = NULL, `is_footnote` = NULL, `is_ratio` = NULL, `description` = NULL, `UnitOfMeasure` = NULL, ...) {
      if (!is.null(`metric`)) {
        if (!(is.character(`metric`) && length(`metric`) == 1)) {
          stop(paste("Error! Invalid data for `metric`. Must be a string:", `metric`))
        }
        self$`metric` <- `metric`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`period_type`)) {
        if (!(is.character(`period_type`) && length(`period_type`) == 1)) {
          stop(paste("Error! Invalid data for `period_type`. Must be a string:", `period_type`))
        }
        self$`period_type` <- `period_type`
      }
      if (!is.null(`section`)) {
        if (!(is.character(`section`) && length(`section`) == 1)) {
          stop(paste("Error! Invalid data for `section`. Must be a string:", `section`))
        }
        self$`section` <- `section`
      }
      if (!is.null(`class`)) {
        if (!(is.character(`class`) && length(`class`) == 1)) {
          stop(paste("Error! Invalid data for `class`. Must be a string:", `class`))
        }
        self$`class` <- `class`
      }
      if (!is.null(`equation`)) {
        if (!(is.character(`equation`) && length(`equation`) == 1)) {
          stop(paste("Error! Invalid data for `equation`. Must be a string:", `equation`))
        }
        self$`equation` <- `equation`
      }
      if (!is.null(`format_type`)) {
        if (!(is.character(`format_type`) && length(`format_type`) == 1)) {
          stop(paste("Error! Invalid data for `format_type`. Must be a string:", `format_type`))
        }
        self$`format_type` <- `format_type`
      }
      if (!is.null(`is_face`)) {
        if (!(is.logical(`is_face`) && length(`is_face`) == 1)) {
          stop(paste("Error! Invalid data for `is_face`. Must be a boolean:", `is_face`))
        }
        self$`is_face` <- `is_face`
      }
      if (!is.null(`is_footnote`)) {
        if (!(is.logical(`is_footnote`) && length(`is_footnote`) == 1)) {
          stop(paste("Error! Invalid data for `is_footnote`. Must be a boolean:", `is_footnote`))
        }
        self$`is_footnote` <- `is_footnote`
      }
      if (!is.null(`is_ratio`)) {
        if (!(is.logical(`is_ratio`) && length(`is_ratio`) == 1)) {
          stop(paste("Error! Invalid data for `is_ratio`. Must be a boolean:", `is_ratio`))
        }
        self$`is_ratio` <- `is_ratio`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`UnitOfMeasure`)) {
        if (!(`UnitOfMeasure` %in% c("Currency", "PerShare", "Ratio", "Date", "Text", "Number", "Boolean", "Shares", "Percent"))) {
          stop(paste("Error! \"", `UnitOfMeasure`, "\" cannot be assigned to `UnitOfMeasure`. Must be \"Currency\", \"PerShare\", \"Ratio\", \"Date\", \"Text\", \"Number\", \"Boolean\", \"Shares\", \"Percent\".", sep = ""))
        }
        if (!(is.character(`UnitOfMeasure`) && length(`UnitOfMeasure`) == 1)) {
          stop(paste("Error! Invalid data for `UnitOfMeasure`. Must be a string:", `UnitOfMeasure`))
        }
        self$`UnitOfMeasure` <- `UnitOfMeasure`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return StandardizedMetricDefinition in JSON format
    #' @export
    toJSON = function() {
      StandardizedMetricDefinitionObject <- list()
      if (!is.null(self$`metric`)) {
        StandardizedMetricDefinitionObject[["metric"]] <-
          self$`metric`
      }
      if (!is.null(self$`name`)) {
        StandardizedMetricDefinitionObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`period_type`)) {
        StandardizedMetricDefinitionObject[["period_type"]] <-
          self$`period_type`
      }
      if (!is.null(self$`section`)) {
        StandardizedMetricDefinitionObject[["section"]] <-
          self$`section`
      }
      if (!is.null(self$`class`)) {
        StandardizedMetricDefinitionObject[["class"]] <-
          self$`class`
      }
      if (!is.null(self$`equation`)) {
        StandardizedMetricDefinitionObject[["equation"]] <-
          self$`equation`
      }
      if (!is.null(self$`format_type`)) {
        StandardizedMetricDefinitionObject[["format_type"]] <-
          self$`format_type`
      }
      if (!is.null(self$`is_face`)) {
        StandardizedMetricDefinitionObject[["is_face"]] <-
          self$`is_face`
      }
      if (!is.null(self$`is_footnote`)) {
        StandardizedMetricDefinitionObject[["is_footnote"]] <-
          self$`is_footnote`
      }
      if (!is.null(self$`is_ratio`)) {
        StandardizedMetricDefinitionObject[["is_ratio"]] <-
          self$`is_ratio`
      }
      if (!is.null(self$`description`)) {
        StandardizedMetricDefinitionObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`UnitOfMeasure`)) {
        StandardizedMetricDefinitionObject[["UnitOfMeasure"]] <-
          self$`UnitOfMeasure`
      }
      StandardizedMetricDefinitionObject
    },
    #' Deserialize JSON string into an instance of StandardizedMetricDefinition
    #'
    #' @description
    #' Deserialize JSON string into an instance of StandardizedMetricDefinition
    #'
    #' @param input_json the JSON input
    #' @return the instance of StandardizedMetricDefinition
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`metric`)) {
        self$`metric` <- this_object$`metric`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`period_type`)) {
        self$`period_type` <- this_object$`period_type`
      }
      if (!is.null(this_object$`section`)) {
        self$`section` <- this_object$`section`
      }
      if (!is.null(this_object$`class`)) {
        self$`class` <- this_object$`class`
      }
      if (!is.null(this_object$`equation`)) {
        self$`equation` <- this_object$`equation`
      }
      if (!is.null(this_object$`format_type`)) {
        self$`format_type` <- this_object$`format_type`
      }
      if (!is.null(this_object$`is_face`)) {
        self$`is_face` <- this_object$`is_face`
      }
      if (!is.null(this_object$`is_footnote`)) {
        self$`is_footnote` <- this_object$`is_footnote`
      }
      if (!is.null(this_object$`is_ratio`)) {
        self$`is_ratio` <- this_object$`is_ratio`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`UnitOfMeasure`)) {
        if (!is.null(this_object$`UnitOfMeasure`) && !(this_object$`UnitOfMeasure` %in% c("Currency", "PerShare", "Ratio", "Date", "Text", "Number", "Boolean", "Shares", "Percent"))) {
          stop(paste("Error! \"", this_object$`UnitOfMeasure`, "\" cannot be assigned to `UnitOfMeasure`. Must be \"Currency\", \"PerShare\", \"Ratio\", \"Date\", \"Text\", \"Number\", \"Boolean\", \"Shares\", \"Percent\".", sep = ""))
        }
        self$`UnitOfMeasure` <- this_object$`UnitOfMeasure`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return StandardizedMetricDefinition in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`metric`)) {
          sprintf(
          '"metric":
            "%s"
                    ',
          self$`metric`
          )
        },
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
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
        if (!is.null(self$`section`)) {
          sprintf(
          '"section":
            "%s"
                    ',
          self$`section`
          )
        },
        if (!is.null(self$`class`)) {
          sprintf(
          '"class":
            "%s"
                    ',
          self$`class`
          )
        },
        if (!is.null(self$`equation`)) {
          sprintf(
          '"equation":
            "%s"
                    ',
          self$`equation`
          )
        },
        if (!is.null(self$`format_type`)) {
          sprintf(
          '"format_type":
            "%s"
                    ',
          self$`format_type`
          )
        },
        if (!is.null(self$`is_face`)) {
          sprintf(
          '"is_face":
            %s
                    ',
          tolower(self$`is_face`)
          )
        },
        if (!is.null(self$`is_footnote`)) {
          sprintf(
          '"is_footnote":
            %s
                    ',
          tolower(self$`is_footnote`)
          )
        },
        if (!is.null(self$`is_ratio`)) {
          sprintf(
          '"is_ratio":
            %s
                    ',
          tolower(self$`is_ratio`)
          )
        },
        if (!is.null(self$`description`)) {
          sprintf(
          '"description":
            "%s"
                    ',
          self$`description`
          )
        },
        if (!is.null(self$`UnitOfMeasure`)) {
          sprintf(
          '"UnitOfMeasure":
            "%s"
                    ',
          self$`UnitOfMeasure`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of StandardizedMetricDefinition
    #'
    #' @description
    #' Deserialize JSON string into an instance of StandardizedMetricDefinition
    #'
    #' @param input_json the JSON input
    #' @return the instance of StandardizedMetricDefinition
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`metric` <- this_object$`metric`
      self$`name` <- this_object$`name`
      self$`period_type` <- this_object$`period_type`
      self$`section` <- this_object$`section`
      self$`class` <- this_object$`class`
      self$`equation` <- this_object$`equation`
      self$`format_type` <- this_object$`format_type`
      self$`is_face` <- this_object$`is_face`
      self$`is_footnote` <- this_object$`is_footnote`
      self$`is_ratio` <- this_object$`is_ratio`
      self$`description` <- this_object$`description`
      if (!is.null(this_object$`UnitOfMeasure`) && !(this_object$`UnitOfMeasure` %in% c("Currency", "PerShare", "Ratio", "Date", "Text", "Number", "Boolean", "Shares", "Percent"))) {
        stop(paste("Error! \"", this_object$`UnitOfMeasure`, "\" cannot be assigned to `UnitOfMeasure`. Must be \"Currency\", \"PerShare\", \"Ratio\", \"Date\", \"Text\", \"Number\", \"Boolean\", \"Shares\", \"Percent\".", sep = ""))
      }
      self$`UnitOfMeasure` <- this_object$`UnitOfMeasure`
      self
    },
    #' Validate JSON input with respect to StandardizedMetricDefinition
    #'
    #' @description
    #' Validate JSON input with respect to StandardizedMetricDefinition and throw an exception if invalid
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
    #' @return String representation of StandardizedMetricDefinition
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
# StandardizedMetricDefinition$unlock()
#
## Below is an example to define the print function
# StandardizedMetricDefinition$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# StandardizedMetricDefinition$lock()

