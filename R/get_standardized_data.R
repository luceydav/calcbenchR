
#' @title Get Standardized Data
#'
#' @description Function taking companies, metrics and history and returning standardized data
#' 
#' @param metrics list of chr ie: list("revenue")
#' @param companies list of chr ie: list("msft")
#' @param all_history boolean 
#' @param api_client Calcbench api_client object

#' @return data.table
#' 
#' @export
get_standardized_data <-
  function(metrics,
           companies,
           all_history) {
    
    api_client <-
      ApiClient$new(
        email = Sys.getenv("CALCBENCH_USERNAME"),
        password = Sys.getenv("CALCBENCH_PASSWORD")
      )
    
    standardized_parameters <-
      StandardizedQueryParameters$new(metrics = metrics)
    companies_parameters <-
      CompaniesParameters$new(companyIdentifiers = companies)
    mapped_data_search_parameters <-
      MappedDataSearchParameters$new(
        standardized_parameters,
        PeriodParameters$new(allHistory = all_history),
        companies_parameters
      )
    standardized_api = StandardizedDataApi$new(api_client = api_client)
    standardized <-
      standardized_api$StandardizedDataMappedData(
        search_parameters = mapped_data_search_parameters)
    standardized_data <-
      lapply(standardized, function(obj) {
        data <-
          data.table::data.table(
            calcbench_entity_id = obj$calcbench_entity_id,
            calendar_period = obj$calendar_period,
            calendar_year = obj$calendar_year,
            CIK = obj$CIK,
            filing_accession_number = obj$filing_accession_number,
            filing_type = obj$filing_type,
            fiscal_period = obj$fiscal_period,
            fiscal_year = obj$fiscal_year,
            metric = obj$metric,
            preliminary = obj$preliminary,
            revision_number = obj$revision_number,
            standardized_id = obj$standardized_id,
            ticker = obj$ticker,
            trace_facts = obj$trace_facts,
            trace_url = obj$trace_url,
            value = obj$value,
            XBRL = obj$XBRL
          )
      })
    standardized_data <- data.table::rbindlist(standardized_data)
    return(standardized_data)
    
  }
