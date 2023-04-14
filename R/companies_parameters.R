#' Create a new CompaniesParameters
#'
#' @description
#' CompaniesParameters Class
#'
#' @docType class
#' @title CompaniesParameters
#' @description CompaniesParameters Class
#' @format An \code{R6Class} generator object
#' @field companyIdentifiers  list(character) [optional]
#' @field entireUniverse  character [optional]
#' @field calcbenchEntityIDs  list(integer) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CompaniesParameters <- R6::R6Class(
  "CompaniesParameters",
  public = list(
    `companyIdentifiers` = NULL,
    `entireUniverse` = NULL,
    `calcbenchEntityIDs` = NULL,
    #' Initialize a new CompaniesParameters class.
    #'
    #' @description
    #' Initialize a new CompaniesParameters class.
    #'
    #' @param companyIdentifiers companyIdentifiers
    #' @param entireUniverse entireUniverse
    #' @param calcbenchEntityIDs calcbenchEntityIDs
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`companyIdentifiers` = NULL, `entireUniverse` = NULL, `calcbenchEntityIDs` = NULL, ...) {
      if (!is.null(`companyIdentifiers`)) {
        stopifnot(is.vector(`companyIdentifiers`), length(`companyIdentifiers`) != 0)
        sapply(`companyIdentifiers`, function(x) stopifnot(is.character(x)))
        self$`companyIdentifiers` <- `companyIdentifiers`
      }
      if (!is.null(`entireUniverse`)) {
        if (!(is.logical(`entireUniverse`) && length(`entireUniverse`) == 1)) {
          stop(paste("Error! Invalid data for `entireUniverse`. Must be a boolean:", `entireUniverse`))
        }
        self$`entireUniverse` <- `entireUniverse`
      }
      if (!is.null(`calcbenchEntityIDs`)) {
        stopifnot(is.vector(`calcbenchEntityIDs`), length(`calcbenchEntityIDs`) != 0)
        sapply(`calcbenchEntityIDs`, function(x) stopifnot(is.character(x)))
        self$`calcbenchEntityIDs` <- `calcbenchEntityIDs`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CompaniesParameters in JSON format
    #' @export
    toJSON = function() {
      CompaniesParametersObject <- list()
      if (!is.null(self$`companyIdentifiers`)) {
        CompaniesParametersObject[["companyIdentifiers"]] <-
          self$`companyIdentifiers`
      }
      if (!is.null(self$`entireUniverse`)) {
        CompaniesParametersObject[["entireUniverse"]] <-
          self$`entireUniverse`
      }
      if (!is.null(self$`calcbenchEntityIDs`)) {
        CompaniesParametersObject[["calcbenchEntityIDs"]] <-
          self$`calcbenchEntityIDs`
      }
      CompaniesParametersObject
    },
    #' Deserialize JSON string into an instance of CompaniesParameters
    #'
    #' @description
    #' Deserialize JSON string into an instance of CompaniesParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of CompaniesParameters
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`companyIdentifiers`)) {
        self$`companyIdentifiers` <- ApiClient$new()$deserializeObj(this_object$`companyIdentifiers`, "array[character]", loadNamespace("calcbenchR"))
      }
      if (!is.null(this_object$`entireUniverse`)) {
        self$`entireUniverse` <- this_object$`entireUniverse`
      }
      if (!is.null(this_object$`calcbenchEntityIDs`)) {
        self$`calcbenchEntityIDs` <- ApiClient$new()$deserializeObj(this_object$`calcbenchEntityIDs`, "array[integer]", loadNamespace("calcbenchR"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CompaniesParameters in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`companyIdentifiers`)) {
          sprintf(
          '"companyIdentifiers":
             [%s]
          ',
          paste(unlist(lapply(self$`companyIdentifiers`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`entireUniverse`)) {
          sprintf(
          '"entireUniverse":
            %s
                    ',
          tolower(self$`entireUniverse`)
          )
        },
        if (!is.null(self$`calcbenchEntityIDs`)) {
          sprintf(
          '"calcbenchEntityIDs":
             [%s]
          ',
          paste(unlist(lapply(self$`calcbenchEntityIDs`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of CompaniesParameters
    #'
    #' @description
    #' Deserialize JSON string into an instance of CompaniesParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of CompaniesParameters
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`companyIdentifiers` <- ApiClient$new()$deserializeObj(this_object$`companyIdentifiers`, "array[character]", loadNamespace("calcbenchR"))
      self$`entireUniverse` <- this_object$`entireUniverse`
      self$`calcbenchEntityIDs` <- ApiClient$new()$deserializeObj(this_object$`calcbenchEntityIDs`, "array[integer]", loadNamespace("calcbenchR"))
      self
    },
    #' Validate JSON input with respect to CompaniesParameters
    #'
    #' @description
    #' Validate JSON input with respect to CompaniesParameters and throw an exception if invalid
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
    #' @return String representation of CompaniesParameters
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
# CompaniesParameters$unlock()
#
## Below is an example to define the print function
# CompaniesParameters$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CompaniesParameters$lock()

