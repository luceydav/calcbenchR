# CompaniesApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CompaniesAvailableCompanies**](CompaniesApi.md#CompaniesAvailableCompanies) | **POST** /api/companies | 


# **CompaniesAvailableCompanies**
> array[APIXBRLCompany] CompaniesAvailableCompanies(search_parameters_user_alert_companies = var.search_parameters_user_alert_companies, search_parameters_s_ic_codes = var.search_parameters_s_ic_codes, search_parameters_index = var.search_parameters_index, search_parameters_peer_group = var.search_parameters_peer_group, search_parameters_universe = var.search_parameters_universe, search_parameters_s_ec_only = var.search_parameters_s_ec_only, search_parameters_calcbench_entity_ids = var.search_parameters_calcbench_entity_ids, search_parameters_name_and_ticker_only = var.search_parameters_name_and_ticker_only, search_parameters_include_most_recent_filing_extras = var.search_parameters_include_most_recent_filing_extras, search_parameters_company_identifiers = var.search_parameters_company_identifiers, search_parameters_n_aics_codes = var.search_parameters_n_aics_codes)



### Example
```R
library(openapi)

# prepare function argument(s)
var_search_parameters_user_alert_companies <- "search_parameters_user_alert_companies_example" # character |  (Optional)
var_search_parameters_s_ic_codes <- c(123) # array[integer] |  (Optional)
var_search_parameters_index <- "search_parameters_index_example" # character |  (Optional)
var_search_parameters_peer_group <- "search_parameters_peer_group_example" # character |  (Optional)
var_search_parameters_universe <- "search_parameters_universe_example" # character |  (Optional)
var_search_parameters_s_ec_only <- "search_parameters_s_ec_only_example" # character |  (Optional)
var_search_parameters_calcbench_entity_ids <- c(123) # array[integer] |  (Optional)
var_search_parameters_name_and_ticker_only <- "search_parameters_name_and_ticker_only_example" # character |  (Optional)
var_search_parameters_include_most_recent_filing_extras <- "search_parameters_include_most_recent_filing_extras_example" # character |  (Optional)
var_search_parameters_company_identifiers <- c("inner_example") # array[character] |  (Optional)
var_search_parameters_n_aics_codes <- c(123) # array[integer] |  (Optional)

api_instance <- CompaniesApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CompaniesAvailableCompanies(search_parameters_user_alert_companies = var_search_parameters_user_alert_companies, search_parameters_s_ic_codes = var_search_parameters_s_ic_codes, search_parameters_index = var_search_parameters_index, search_parameters_peer_group = var_search_parameters_peer_group, search_parameters_universe = var_search_parameters_universe, search_parameters_s_ec_only = var_search_parameters_s_ec_only, search_parameters_calcbench_entity_ids = var_search_parameters_calcbench_entity_ids, search_parameters_name_and_ticker_only = var_search_parameters_name_and_ticker_only, search_parameters_include_most_recent_filing_extras = var_search_parameters_include_most_recent_filing_extras, search_parameters_company_identifiers = var_search_parameters_company_identifiers, search_parameters_n_aics_codes = var_search_parameters_n_aics_codesdata_file = "result.txt")
result <- api_instance$CompaniesAvailableCompanies(search_parameters_user_alert_companies = var_search_parameters_user_alert_companies, search_parameters_s_ic_codes = var_search_parameters_s_ic_codes, search_parameters_index = var_search_parameters_index, search_parameters_peer_group = var_search_parameters_peer_group, search_parameters_universe = var_search_parameters_universe, search_parameters_s_ec_only = var_search_parameters_s_ec_only, search_parameters_calcbench_entity_ids = var_search_parameters_calcbench_entity_ids, search_parameters_name_and_ticker_only = var_search_parameters_name_and_ticker_only, search_parameters_include_most_recent_filing_extras = var_search_parameters_include_most_recent_filing_extras, search_parameters_company_identifiers = var_search_parameters_company_identifiers, search_parameters_n_aics_codes = var_search_parameters_n_aics_codes)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_parameters_user_alert_companies** | **character**|  | [optional] 
 **search_parameters_s_ic_codes** | list( **integer** )|  | [optional] 
 **search_parameters_index** | **character**|  | [optional] 
 **search_parameters_peer_group** | **character**|  | [optional] 
 **search_parameters_universe** | **character**|  | [optional] 
 **search_parameters_s_ec_only** | **character**|  | [optional] 
 **search_parameters_calcbench_entity_ids** | list( **integer** )|  | [optional] 
 **search_parameters_name_and_ticker_only** | **character**|  | [optional] 
 **search_parameters_include_most_recent_filing_extras** | **character**|  | [optional] 
 **search_parameters_company_identifiers** | list( **character** )|  | [optional] 
 **search_parameters_n_aics_codes** | list( **integer** )|  | [optional] 

### Return type

[**array[APIXBRLCompany]**](APIXBRLCompany.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html, text/csv

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

