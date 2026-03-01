
#' @title Get Available Compa ies
#'
#' @description Function to get Calcbench available companies
#'
#' @return data.table
#' 
#' @export
get_available_companies <- function(index) {
  
  api_client <-
    ApiClient$new(
      email = Sys.getenv("CALCBENCH_USERNAME"),
      password = Sys.getenv("CALCBENCH_PASSWORD")
    )
  
  # Get metrics
  companies_api <- CompaniesApi$new(api_client = api_client)
  companies <- 
    companies_api$CompaniesAvailableCompanies(
      search_parameters_index = index)
  companies_list <-
    lapply(companies, function(obj) {
      data <-
        data.table::data.table(
          assets = obj$assets,
          CIK = obj$cik_code,
          city = obj$city,
          country = obj$country,
          entity_code = obj$entity_code,
          entity_id = obj$entity_id,
          entity_name = obj$entity_name,
          entity_state_country_code = obj$EntityIncorporationStateCountryCode,
          entity_tax_id = obj$EntityTaxIdentificationNumber,
          first_filing = obj$first_filing,
          fy_end_date_change = obj$FYEndDateChange,
          most_recent_complete_cy = obj$most_recent_complete_calendar_year,
          most_recent_filing = obj$most_recent_filing,
          most_recent_filing_cp = obj$most_recent_filing_calendar_period,
          most_recent_filing_cy = obj$most_recent_filing_calendar_year,
          most_recent_fy = obj$most_recent_fiscal_year,
          most_recent_full_ye = obj$most_recent_full_year_end,
          naics = obj$naics,
          naics_code = obj$naics_code,
          naics_minor_group_title = obj$naics_minor_group_title,
          naics2 = obj$naics2,
          revenue = obj$revenue,
          security_exchange = obj$SecurityExchangeName,
          sic_code = obj$sic_code,
          sic_category = obj$SICCategory,
          sic_minor_group_title = obj$SICGroupMinorGroupTitle,
          state = obj$state,
          status = obj$status,
          street_address = obj$street_address,
          street1 = obj$Street1,
          street2 = obj$Street2,
          ticker = obj$ticker,
          zip = obj$zip
        )
    })
  companies_data <- data.table::rbindlist(companies_list, fill=TRUE)
  return(companies_data)
  
}
