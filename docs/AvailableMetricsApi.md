# AvailableMetricsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AvailableMetricsGetValues**](AvailableMetricsApi.md#AvailableMetricsGetValues) | **GET** /api/availablemetrics | 


# **AvailableMetricsGetValues**
> MetricGroups AvailableMetricsGetValues()



### Example
```R
library(openapi)


api_instance <- AvailableMetricsApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$AvailableMetricsGetValues(data_file = "result.txt")
result <- api_instance$AvailableMetricsGetValues()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MetricGroups**](MetricGroups.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html, text/csv

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

