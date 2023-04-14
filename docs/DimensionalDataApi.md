# DimensionalDataApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DimensionalDataDimensionalData**](DimensionalDataApi.md#DimensionalDataDimensionalData) | **POST** /api/dimensionalData | The data behind https://www.calcbench.com/segments


# **DimensionalDataDimensionalData**
> array[DimensionalDataPoint] DimensionalDataDimensionalData(params)

The data behind https://www.calcbench.com/segments

### Example
```R
library(openapi)

# The data behind https://www.calcbench.com/segments
#
# prepare function argument(s)
var_params <- DimensionalSearchParameters$new(DimensionalQueryParameters$new("searchTerms_example", c("metrics_example"), 123, 123, "queryID_example", "AsOriginallyReported_example", "dimensionName_example", "dataSet_example"), PeriodParameters$new(123, "unset", 123, "unset", "periodType_example", "useFiscalPeriod_example", DateRange$new("startDate_example", "endDate_example"), "allHistory_example", "updateDate_example", "updatedFrom_example", "asOriginallyReported_example", 123, 123), CompaniesParameters$new(c("companyIdentifiers_example"), "entireUniverse_example", c(123))) # DimensionalSearchParameters | 

api_instance <- DimensionalDataApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DimensionalDataDimensionalData(var_paramsdata_file = "result.txt")
result <- api_instance$DimensionalDataDimensionalData(var_params)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **params** | [**DimensionalSearchParameters**](DimensionalSearchParameters.md)|  | 

### Return type

[**array[DimensionalDataPoint]**](DimensionalDataPoint.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, text/html, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, text/html, text/csv

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

