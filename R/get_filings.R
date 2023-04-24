
#' @title Get Standardized Data
#'
#' @description Function taking companies, metrics and history and returning standardized data
#' 
#' @param companies list or chr (list("msft") or "msft")
#' @param entire_universe boolean
#' @param all_history boolean 
#' @param year integer
#' @param end_year integer
#' @param period integer
#' @param end_period integer
#' @param period_type
#' @param use_fiscal_period
#' @param date_range
#' @param update_date
#' @param updated_from
#' @param as_originally_reported
#' @param accession_id integer
#' @param filing_id integer
#' @param include_performance
#' @param include_non_xbrl
#' @param include_press_release_and_proxies
#' @param include_xbrl
#' 
#' @return data.table
#' 
#' @export
get_filings <- function(
    companies,
    entire_universe = FALSE,
    all_history = TRUE,
    year = NULL,
    end_year = NULL,
    period = NULL,
    end_period = NULL,
    period_type = NULL,
    use_fiscal_period = NULL,
    date_range = NULL,
    update_date = NULL,
    updated_from = NULL,
    as_originally_reported = FALSE,
    accession_id = NULL,
    filing_id = NULL,
    include_performance = TRUE,
    include_non_xbrl = TRUE,
    include_press_release_and_proxies = TRUE,
    include_xbrl = TRUE
) {
  
  # Convert to list if chr
  #if(is.character(companies)) companies <- list(eval(companies))
  
  # Set up api
  api_client <-
    ApiClient$new(
      email = Sys.getenv("CALCBENCH_USERNAME"),
      strng = Sys.getenv("CALCBENCH_PASSWORD")
    )
  
  #httr::set_config(config(ssl_verifypeer = 0L))
  # Get filings (don't have parameters working)
  companies_parameters <- 
    CompaniesParameters$new(
      companyIdentifiers = companies,
      entireUniverse = entire_universe)
  
  # Period params
  period_parameters <- 
    PeriodParameters$new(
      allHistory = all_history,
      year = year,
      endYear = end_year,
      period = period,
      endPeriod = end_period,
      periodType = period_type,
      useFiscalPeriod = use_fiscal_period,
      dateRange = date_range,
      updateDate = update_date,
      updatedFrom = updated_from,
      asOriginallyReported = as_originally_reported,
      accessionID = accession_id,
      filingID = filing_id
    )
  
  # Page params
  page_parameters <-
    FilingsQueryParameters$new(
      IncludePerformance = include_performance,
      IncludeNonXBRL = include_non_xbrl,
      IncludePressReleasesAndProxies = include_press_release_and_proxies,
      IncludeXBRL = include_xbrl
    )
  
  # Filing params
  filing_parameters <- 
    FilingsParameters$new(
      companiesParameters = companies_parameters,
      periodParameters = period_parameters,
      pageParameters = page_parameters
      )
  
  # Set up filing params
  filings_api <- FilingsApi$new(api_client = api_client)
  
  # Call FilingsV2
  filing_results <- filings_api$FilingsFilingsV2(
    filings_params = filing_parameters)
}
