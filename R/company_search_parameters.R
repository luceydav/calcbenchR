#' Create a new CompanySearchParameters
#'
#' @description
#' CompanySearchParameters Class
#'
#' @docType class
#' @title CompanySearchParameters
#' @description CompanySearchParameters Class
#' @format An \code{R6Class} generator object
#' @field userAlertCompanies  character [optional]
#' @field SICCodes  list(integer) [optional]
#' @field index  character [optional]
#' @field peerGroup  character [optional]
#' @field universe  character [optional]
#' @field SECOnly  character [optional]
#' @field calcbenchEntityIds  list(integer) [optional]
#' @field nameAndTickerOnly  character [optional]
#' @field includeMostRecentFilingExtras  character [optional]
#' @field companyIdentifiers  list(character) [optional]
#' @field NAICSCodes  list(integer) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CompanySearchParameters <- R6::R6Class(
  "CompanySearchParameters",
  public = list(
    `userAlertCompanies` = NULL,
    `SICCodes` = NULL,
    `index` = NULL,
    `peerGroup` = NULL,
    `universe` = NULL,
    `SECOnly` = NULL,
    `calcbenchEntityIds` = NULL,
    `nameAndTickerOnly` = NULL,
    `includeMostRecentFilingExtras` = NULL,
    `companyIdentifiers` = NULL,
    `NAICSCodes` = NULL,
    #' Initialize a new CompanySearchParameters class.
    #'
    #' @description
    #' Initialize a new CompanySearchParameters class.
    #'
    #' @param userAlertCompanies userAlertCompanies
    #' @param SICCodes SICCodes
    #' @param index index
    #' @param peerGroup peerGroup
    #' @param universe universe
    #' @param SECOnly SECOnly
    #' @param calcbenchEntityIds calcbenchEntityIds
    #' @param nameAndTickerOnly nameAndTickerOnly
    #' @param includeMostRecentFilingExtras includeMostRecentFilingExtras
    #' @param companyIdentifiers companyIdentifiers
    #' @param NAICSCodes NAICSCodes
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`userAlertCompanies` = NULL, `SICCodes` = NULL, `index` = NULL, `peerGroup` = NULL, `universe` = NULL, `SECOnly` = NULL, `calcbenchEntityIds` = NULL, `nameAndTickerOnly` = NULL, `includeMostRecentFilingExtras` = NULL, `companyIdentifiers` = NULL, `NAICSCodes` = NULL, ...) {
      if (!is.null(`userAlertCompanies`)) {
        if (!(is.logical(`userAlertCompanies`) && length(`userAlertCompanies`) == 1)) {
          stop(paste("Error! Invalid data for `userAlertCompanies`. Must be a boolean:", `userAlertCompanies`))
        }
        self$`userAlertCompanies` <- `userAlertCompanies`
      }
      if (!is.null(`SICCodes`)) {
        stopifnot(is.vector(`SICCodes`), length(`SICCodes`) != 0)
        sapply(`SICCodes`, function(x) stopifnot(is.character(x)))
        self$`SICCodes` <- `SICCodes`
      }
      if (!is.null(`index`)) {
        if (!(is.character(`index`) && length(`index`) == 1)) {
          stop(paste("Error! Invalid data for `index`. Must be a string:", `index`))
        }
        self$`index` <- `index`
      }
      if (!is.null(`peerGroup`)) {
        if (!(is.character(`peerGroup`) && length(`peerGroup`) == 1)) {
          stop(paste("Error! Invalid data for `peerGroup`. Must be a string:", `peerGroup`))
        }
        self$`peerGroup` <- `peerGroup`
      }
      if (!is.null(`universe`)) {
        if (!(is.logical(`universe`) && length(`universe`) == 1)) {
          stop(paste("Error! Invalid data for `universe`. Must be a boolean:", `universe`))
        }
        self$`universe` <- `universe`
      }
      if (!is.null(`SECOnly`)) {
        if (!(is.logical(`SECOnly`) && length(`SECOnly`) == 1)) {
          stop(paste("Error! Invalid data for `SECOnly`. Must be a boolean:", `SECOnly`))
        }
        self$`SECOnly` <- `SECOnly`
      }
      if (!is.null(`calcbenchEntityIds`)) {
        stopifnot(is.vector(`calcbenchEntityIds`), length(`calcbenchEntityIds`) != 0)
        sapply(`calcbenchEntityIds`, function(x) stopifnot(is.character(x)))
        self$`calcbenchEntityIds` <- `calcbenchEntityIds`
      }
      if (!is.null(`nameAndTickerOnly`)) {
        if (!(is.logical(`nameAndTickerOnly`) && length(`nameAndTickerOnly`) == 1)) {
          stop(paste("Error! Invalid data for `nameAndTickerOnly`. Must be a boolean:", `nameAndTickerOnly`))
        }
        self$`nameAndTickerOnly` <- `nameAndTickerOnly`
      }
      if (!is.null(`includeMostRecentFilingExtras`)) {
        if (!(is.logical(`includeMostRecentFilingExtras`) && length(`includeMostRecentFilingExtras`) == 1)) {
          stop(paste("Error! Invalid data for `includeMostRecentFilingExtras`. Must be a boolean:", `includeMostRecentFilingExtras`))
        }
        self$`includeMostRecentFilingExtras` <- `includeMostRecentFilingExtras`
      }
      if (!is.null(`companyIdentifiers`)) {
        stopifnot(is.vector(`companyIdentifiers`), length(`companyIdentifiers`) != 0)
        sapply(`companyIdentifiers`, function(x) stopifnot(is.character(x)))
        self$`companyIdentifiers` <- `companyIdentifiers`
      }
      if (!is.null(`NAICSCodes`)) {
        stopifnot(is.vector(`NAICSCodes`), length(`NAICSCodes`) != 0)
        sapply(`NAICSCodes`, function(x) stopifnot(is.character(x)))
        self$`NAICSCodes` <- `NAICSCodes`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CompanySearchParameters in JSON format
    #' @export
    toJSON = function() {
      CompanySearchParametersObject <- list()
      if (!is.null(self$`userAlertCompanies`)) {
        CompanySearchParametersObject[["userAlertCompanies"]] <-
          self$`userAlertCompanies`
      }
      if (!is.null(self$`SICCodes`)) {
        CompanySearchParametersObject[["SICCodes"]] <-
          self$`SICCodes`
      }
      if (!is.null(self$`index`)) {
        CompanySearchParametersObject[["index"]] <-
          self$`index`
      }
      if (!is.null(self$`peerGroup`)) {
        CompanySearchParametersObject[["peerGroup"]] <-
          self$`peerGroup`
      }
      if (!is.null(self$`universe`)) {
        CompanySearchParametersObject[["universe"]] <-
          self$`universe`
      }
      if (!is.null(self$`SECOnly`)) {
        CompanySearchParametersObject[["SECOnly"]] <-
          self$`SECOnly`
      }
      if (!is.null(self$`calcbenchEntityIds`)) {
        CompanySearchParametersObject[["calcbenchEntityIds"]] <-
          self$`calcbenchEntityIds`
      }
      if (!is.null(self$`nameAndTickerOnly`)) {
        CompanySearchParametersObject[["nameAndTickerOnly"]] <-
          self$`nameAndTickerOnly`
      }
      if (!is.null(self$`includeMostRecentFilingExtras`)) {
        CompanySearchParametersObject[["includeMostRecentFilingExtras"]] <-
          self$`includeMostRecentFilingExtras`
      }
      if (!is.null(self$`companyIdentifiers`)) {
        CompanySearchParametersObject[["companyIdentifiers"]] <-
          self$`companyIdentifiers`
      }
      if (!is.null(self$`NAICSCodes`)) {
        CompanySearchParametersObject[["NAICSCodes"]] <-
          self$`NAICSCodes`
      }
      CompanySearchParametersObject
    },
    #' Deserialize JSON string into an instance of CompanySearchParameters
    #'
    #' @description
    #' Deserialize JSON string into an instance of CompanySearchParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of CompanySearchParameters
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`userAlertCompanies`)) {
        self$`userAlertCompanies` <- this_object$`userAlertCompanies`
      }
      if (!is.null(this_object$`SICCodes`)) {
        self$`SICCodes` <- ApiClient$new()$deserializeObj(this_object$`SICCodes`, "array[integer]", loadNamespace("calcbenchR"))
      }
      if (!is.null(this_object$`index`)) {
        self$`index` <- this_object$`index`
      }
      if (!is.null(this_object$`peerGroup`)) {
        self$`peerGroup` <- this_object$`peerGroup`
      }
      if (!is.null(this_object$`universe`)) {
        self$`universe` <- this_object$`universe`
      }
      if (!is.null(this_object$`SECOnly`)) {
        self$`SECOnly` <- this_object$`SECOnly`
      }
      if (!is.null(this_object$`calcbenchEntityIds`)) {
        self$`calcbenchEntityIds` <- ApiClient$new()$deserializeObj(this_object$`calcbenchEntityIds`, "array[integer]", loadNamespace("calcbenchR"))
      }
      if (!is.null(this_object$`nameAndTickerOnly`)) {
        self$`nameAndTickerOnly` <- this_object$`nameAndTickerOnly`
      }
      if (!is.null(this_object$`includeMostRecentFilingExtras`)) {
        self$`includeMostRecentFilingExtras` <- this_object$`includeMostRecentFilingExtras`
      }
      if (!is.null(this_object$`companyIdentifiers`)) {
        self$`companyIdentifiers` <- ApiClient$new()$deserializeObj(this_object$`companyIdentifiers`, "array[character]", loadNamespace("calcbenchR"))
      }
      if (!is.null(this_object$`NAICSCodes`)) {
        self$`NAICSCodes` <- ApiClient$new()$deserializeObj(this_object$`NAICSCodes`, "array[integer]", loadNamespace("calcbenchR"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CompanySearchParameters in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`userAlertCompanies`)) {
          sprintf(
          '"userAlertCompanies":
            %s
                    ',
          tolower(self$`userAlertCompanies`)
          )
        },
        if (!is.null(self$`SICCodes`)) {
          sprintf(
          '"SICCodes":
             [%s]
          ',
          paste(unlist(lapply(self$`SICCodes`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`index`)) {
          sprintf(
          '"index":
            "%s"
                    ',
          self$`index`
          )
        },
        if (!is.null(self$`peerGroup`)) {
          sprintf(
          '"peerGroup":
            "%s"
                    ',
          self$`peerGroup`
          )
        },
        if (!is.null(self$`universe`)) {
          sprintf(
          '"universe":
            %s
                    ',
          tolower(self$`universe`)
          )
        },
        if (!is.null(self$`SECOnly`)) {
          sprintf(
          '"SECOnly":
            %s
                    ',
          tolower(self$`SECOnly`)
          )
        },
        if (!is.null(self$`calcbenchEntityIds`)) {
          sprintf(
          '"calcbenchEntityIds":
             [%s]
          ',
          paste(unlist(lapply(self$`calcbenchEntityIds`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`nameAndTickerOnly`)) {
          sprintf(
          '"nameAndTickerOnly":
            %s
                    ',
          tolower(self$`nameAndTickerOnly`)
          )
        },
        if (!is.null(self$`includeMostRecentFilingExtras`)) {
          sprintf(
          '"includeMostRecentFilingExtras":
            %s
                    ',
          tolower(self$`includeMostRecentFilingExtras`)
          )
        },
        if (!is.null(self$`companyIdentifiers`)) {
          sprintf(
          '"companyIdentifiers":
             [%s]
          ',
          paste(unlist(lapply(self$`companyIdentifiers`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`NAICSCodes`)) {
          sprintf(
          '"NAICSCodes":
             [%s]
          ',
          paste(unlist(lapply(self$`NAICSCodes`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of CompanySearchParameters
    #'
    #' @description
    #' Deserialize JSON string into an instance of CompanySearchParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of CompanySearchParameters
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`userAlertCompanies` <- this_object$`userAlertCompanies`
      self$`SICCodes` <- ApiClient$new()$deserializeObj(this_object$`SICCodes`, "array[integer]", loadNamespace("calcbenchR"))
      self$`index` <- this_object$`index`
      self$`peerGroup` <- this_object$`peerGroup`
      self$`universe` <- this_object$`universe`
      self$`SECOnly` <- this_object$`SECOnly`
      self$`calcbenchEntityIds` <- ApiClient$new()$deserializeObj(this_object$`calcbenchEntityIds`, "array[integer]", loadNamespace("calcbenchR"))
      self$`nameAndTickerOnly` <- this_object$`nameAndTickerOnly`
      self$`includeMostRecentFilingExtras` <- this_object$`includeMostRecentFilingExtras`
      self$`companyIdentifiers` <- ApiClient$new()$deserializeObj(this_object$`companyIdentifiers`, "array[character]", loadNamespace("calcbenchR"))
      self$`NAICSCodes` <- ApiClient$new()$deserializeObj(this_object$`NAICSCodes`, "array[integer]", loadNamespace("calcbenchR"))
      self
    },
    #' Validate JSON input with respect to CompanySearchParameters
    #'
    #' @description
    #' Validate JSON input with respect to CompanySearchParameters and throw an exception if invalid
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
    #' @return String representation of CompanySearchParameters
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
# CompanySearchParameters$unlock()
#
## Below is an example to define the print function
# CompanySearchParameters$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CompanySearchParameters$lock()

