# StandardizedDataApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**StandardizedDataMappedData**](StandardizedDataApi.md#StandardizedDataMappedData) | **POST** /api/mappedData | 


# **StandardizedDataMappedData**
> array[MappedDataPoint] StandardizedDataMappedData(search_parameters)



### Example
```R
library(openapi)

# prepare function argument(s)
var_search_parameters <- MappedDataSearchParameters$new(StandardizedQueryParameters$new("pointInTime_example", "pointInTimeV2_example", "allFootnotes_example", "allFace_example", "includeXBRL_example", "includePreliminary_example", "allNonGAAP_example", "allMetrics_example", "excludeUnconfirmedPreliminary_example", c("metrics_example"), "includeTrace_example", "excludeErrors_example"), PeriodParameters$new(123, "unset", 123, "unset", "periodType_example", "useFiscalPeriod_example", DateRange$new("startDate_example", "endDate_example"), "allHistory_example", "updateDate_example", "updatedFrom_example", "asOriginallyReported_example", 123, 123), CompaniesParameters$new(c("companyIdentifiers_example"), "entireUniverse_example", c(123))) # MappedDataSearchParameters | 

api_instance <- StandardizedDataApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$StandardizedDataMappedData(var_search_parametersdata_file = "result.txt")
result <- api_instance$StandardizedDataMappedData(var_search_parameters)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_parameters** | [**MappedDataSearchParameters**](MappedDataSearchParameters.md)|  | 

### Return type

[**array[MappedDataPoint]**](MappedDataPoint.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, text/html, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, text/html, text/csv

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

