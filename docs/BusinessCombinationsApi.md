# BusinessCombinationsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**BusinessCombinationsBusinessCombinations**](BusinessCombinationsApi.md#BusinessCombinationsBusinessCombinations) | **POST** /api/businessCombinations | The data behind the business combinations page, https://www.calcbench.com/businesscombinations


# **BusinessCombinationsBusinessCombinations**
> array[PurchasePriceAllocation] BusinessCombinationsBusinessCombinations(search_parameters)

The data behind the business combinations page, https://www.calcbench.com/businesscombinations

### Example
```R
library(openapi)

# The data behind the business combinations page, https://www.calcbench.com/businesscombinations
#
# prepare function argument(s)
var_search_parameters <- BusinessCombinationsParameters$new(123, PeriodParameters$new(123, "unset", 123, "unset", "periodType_example", "useFiscalPeriod_example", DateRange$new("startDate_example", "endDate_example"), "allHistory_example", "updateDate_example", "updatedFrom_example", "asOriginallyReported_example", 123, 123), CompaniesParameters$new(c("companyIdentifiers_example"), "entireUniverse_example", c(123))) # BusinessCombinationsParameters | 

api_instance <- BusinessCombinationsApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$BusinessCombinationsBusinessCombinations(var_search_parametersdata_file = "result.txt")
result <- api_instance$BusinessCombinationsBusinessCombinations(var_search_parameters)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_parameters** | [**BusinessCombinationsParameters**](BusinessCombinationsParameters.md)|  | 

### Return type

[**array[PurchasePriceAllocation]**](PurchasePriceAllocation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, text/html, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, text/html, text/csv

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

