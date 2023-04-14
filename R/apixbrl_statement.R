#' Create a new APIXBRLStatement
#'
#' @description
#' Income statement, balance sheet, statement of cash flows, etc.
#'
#' @docType class
#' @title APIXBRLStatement
#' @description APIXBRLStatement Class
#' @format An \code{R6Class} generator object
#' @field entity_name  character [optional]
#' @field name  character [optional]
#' @field period_type  character [optional]
#' @field id_ifrs  character [optional]
#' @field columns  list(\link{FaceStatementColumn}) [optional]
#' @field line_items  list(object) [optional]
#' @field unique_id  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
APIXBRLStatement <- R6::R6Class(
  "APIXBRLStatement",
  public = list(
    `entity_name` = NULL,
    `name` = NULL,
    `period_type` = NULL,
    `id_ifrs` = NULL,
    `columns` = NULL,
    `line_items` = NULL,
    `unique_id` = NULL,
    #' Initialize a new APIXBRLStatement class.
    #'
    #' @description
    #' Initialize a new APIXBRLStatement class.
    #'
    #' @param entity_name entity_name
    #' @param name name
    #' @param period_type period_type
    #' @param id_ifrs id_ifrs
    #' @param columns columns
    #' @param line_items line_items
    #' @param unique_id unique_id
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entity_name` = NULL, `name` = NULL, `period_type` = NULL, `id_ifrs` = NULL, `columns` = NULL, `line_items` = NULL, `unique_id` = NULL, ...) {
      if (!is.null(`entity_name`)) {
        if (!(is.character(`entity_name`) && length(`entity_name`) == 1)) {
          stop(paste("Error! Invalid data for `entity_name`. Must be a string:", `entity_name`))
        }
        self$`entity_name` <- `entity_name`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`period_type`)) {
        if (!(`period_type` %in% c("none", "Q", "Y", "halfYear", "Q3CUM", "cumulative", "ttm", "Q_Y_combined"))) {
          stop(paste("Error! \"", `period_type`, "\" cannot be assigned to `period_type`. Must be \"none\", \"Q\", \"Y\", \"halfYear\", \"Q3CUM\", \"cumulative\", \"ttm\", \"Q_Y_combined\".", sep = ""))
        }
        if (!(is.character(`period_type`) && length(`period_type`) == 1)) {
          stop(paste("Error! Invalid data for `period_type`. Must be a string:", `period_type`))
        }
        self$`period_type` <- `period_type`
      }
      if (!is.null(`id_ifrs`)) {
        if (!(is.logical(`id_ifrs`) && length(`id_ifrs`) == 1)) {
          stop(paste("Error! Invalid data for `id_ifrs`. Must be a boolean:", `id_ifrs`))
        }
        self$`id_ifrs` <- `id_ifrs`
      }
      if (!is.null(`columns`)) {
        stopifnot(is.vector(`columns`), length(`columns`) != 0)
        sapply(`columns`, function(x) stopifnot(R6::is.R6(x)))
        self$`columns` <- `columns`
      }
      if (!is.null(`line_items`)) {
        stopifnot(is.vector(`line_items`), length(`line_items`) != 0)
        sapply(`line_items`, function(x) stopifnot(is.character(x)))
        self$`line_items` <- `line_items`
      }
      if (!is.null(`unique_id`)) {
        if (!(is.character(`unique_id`) && length(`unique_id`) == 1)) {
          stop(paste("Error! Invalid data for `unique_id`. Must be a string:", `unique_id`))
        }
        self$`unique_id` <- `unique_id`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return APIXBRLStatement in JSON format
    #' @export
    toJSON = function() {
      APIXBRLStatementObject <- list()
      if (!is.null(self$`entity_name`)) {
        APIXBRLStatementObject[["entity_name"]] <-
          self$`entity_name`
      }
      if (!is.null(self$`name`)) {
        APIXBRLStatementObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`period_type`)) {
        APIXBRLStatementObject[["period_type"]] <-
          self$`period_type`
      }
      if (!is.null(self$`id_ifrs`)) {
        APIXBRLStatementObject[["id_ifrs"]] <-
          self$`id_ifrs`
      }
      if (!is.null(self$`columns`)) {
        APIXBRLStatementObject[["columns"]] <-
          lapply(self$`columns`, function(x) x$toJSON())
      }
      if (!is.null(self$`line_items`)) {
        APIXBRLStatementObject[["line_items"]] <-
          self$`line_items`
      }
      if (!is.null(self$`unique_id`)) {
        APIXBRLStatementObject[["unique_id"]] <-
          self$`unique_id`
      }
      APIXBRLStatementObject
    },
    #' Deserialize JSON string into an instance of APIXBRLStatement
    #'
    #' @description
    #' Deserialize JSON string into an instance of APIXBRLStatement
    #'
    #' @param input_json the JSON input
    #' @return the instance of APIXBRLStatement
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`entity_name`)) {
        self$`entity_name` <- this_object$`entity_name`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`period_type`)) {
        if (!is.null(this_object$`period_type`) && !(this_object$`period_type` %in% c("none", "Q", "Y", "halfYear", "Q3CUM", "cumulative", "ttm", "Q_Y_combined"))) {
          stop(paste("Error! \"", this_object$`period_type`, "\" cannot be assigned to `period_type`. Must be \"none\", \"Q\", \"Y\", \"halfYear\", \"Q3CUM\", \"cumulative\", \"ttm\", \"Q_Y_combined\".", sep = ""))
        }
        self$`period_type` <- this_object$`period_type`
      }
      if (!is.null(this_object$`id_ifrs`)) {
        self$`id_ifrs` <- this_object$`id_ifrs`
      }
      if (!is.null(this_object$`columns`)) {
        self$`columns` <- ApiClient$new()$deserializeObj(this_object$`columns`, "array[FaceStatementColumn]", loadNamespace("calcbenchR"))
      }
      if (!is.null(this_object$`line_items`)) {
        self$`line_items` <- ApiClient$new()$deserializeObj(this_object$`line_items`, "array[object]", loadNamespace("calcbenchR"))
      }
      if (!is.null(this_object$`unique_id`)) {
        self$`unique_id` <- this_object$`unique_id`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return APIXBRLStatement in JSON format
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
        if (!is.null(self$`id_ifrs`)) {
          sprintf(
          '"id_ifrs":
            %s
                    ',
          tolower(self$`id_ifrs`)
          )
        },
        if (!is.null(self$`columns`)) {
          sprintf(
          '"columns":
          [%s]
',
          paste(sapply(self$`columns`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`line_items`)) {
          sprintf(
          '"line_items":
             [%s]
          ',
          paste(unlist(lapply(self$`line_items`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`unique_id`)) {
          sprintf(
          '"unique_id":
            "%s"
                    ',
          self$`unique_id`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of APIXBRLStatement
    #'
    #' @description
    #' Deserialize JSON string into an instance of APIXBRLStatement
    #'
    #' @param input_json the JSON input
    #' @return the instance of APIXBRLStatement
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entity_name` <- this_object$`entity_name`
      self$`name` <- this_object$`name`
      if (!is.null(this_object$`period_type`) && !(this_object$`period_type` %in% c("none", "Q", "Y", "halfYear", "Q3CUM", "cumulative", "ttm", "Q_Y_combined"))) {
        stop(paste("Error! \"", this_object$`period_type`, "\" cannot be assigned to `period_type`. Must be \"none\", \"Q\", \"Y\", \"halfYear\", \"Q3CUM\", \"cumulative\", \"ttm\", \"Q_Y_combined\".", sep = ""))
      }
      self$`period_type` <- this_object$`period_type`
      self$`id_ifrs` <- this_object$`id_ifrs`
      self$`columns` <- ApiClient$new()$deserializeObj(this_object$`columns`, "array[FaceStatementColumn]", loadNamespace("calcbenchR"))
      self$`line_items` <- ApiClient$new()$deserializeObj(this_object$`line_items`, "array[object]", loadNamespace("calcbenchR"))
      self$`unique_id` <- this_object$`unique_id`
      self
    },
    #' Validate JSON input with respect to APIXBRLStatement
    #'
    #' @description
    #' Validate JSON input with respect to APIXBRLStatement and throw an exception if invalid
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
    #' @return String representation of APIXBRLStatement
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
# APIXBRLStatement$unlock()
#
## Below is an example to define the print function
# APIXBRLStatement$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# APIXBRLStatement$lock()

