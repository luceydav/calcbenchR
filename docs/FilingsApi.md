# FilingsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**FilingsFilingsV2**](FilingsApi.md#FilingsFilingsV2) | **POST** /api/filingsV2 | 


# **FilingsFilingsV2**
> array[Filing] FilingsFilingsV2(filings_params)



### Example
```R
library(openapi)

# prepare function argument(s)
var_filings_params <- FilingsParameters$new(CompaniesParameters$new(c("companyIdentifiers_example"), "entireUniverse_example", c(123)), FilingsQueryParameters$new("IncludePerformance_example", "IncludePressReleasesAndProxies_example", "IncludeNonXBRL_example", c("BusinessWirePR_filedAfterAn8K"), 123, c("metrics_example"), "IncludeXBRL_example"), PeriodParameters$new(123, "unset", 123, "unset", "periodType_example", "useFiscalPeriod_example", DateRange$new("startDate_example", "endDate_example"), "allHistory_example", "updateDate_example", "updatedFrom_example", "asOriginallyReported_example", 123, 123)) # FilingsParameters | 

api_instance <- FilingsApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$FilingsFilingsV2(var_filings_paramsdata_file = "result.txt")
result <- api_instance$FilingsFilingsV2(var_filings_params)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filings_params** | [**FilingsParameters**](FilingsParameters.md)|  | 

### Return type

[**array[Filing]**](Filing.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, text/html, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, text/html, text/csv

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

