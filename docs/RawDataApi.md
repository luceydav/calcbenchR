# RawDataApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**RawDataRaw13FData**](RawDataApi.md#RawDataRaw13FData) | **POST** /api/raw13FData | 13F data
[**RawDataRawNonXBRLData**](RawDataApi.md#RawDataRawNonXBRLData) | **POST** /api/rawNonXBRLData | Non-XBRL Data As-Reported
[**RawDataRawXBRLData**](RawDataApi.md#RawDataRawXBRLData) | **POST** /api/rawXBRLData | XBRL data As-Reported


# **RawDataRaw13FData**
> object RawDataRaw13FData(params)

13F data

The data behind the <a href=\"/xbrl\">13F data page.</a>

### Example
```R
library(openapi)

# 13F data
#
# prepare function argument(s)
var_params <- Raw13FDataSearchParams$new(CompaniesParameters$new(c("companyIdentifiers_example"), "entireUniverse_example", c(123)), Raw13FQueryParams$new(c(Form13FQueryPiece$new("fiscalYear", 123, "value_example")), "QueryID_example")) # Raw13FDataSearchParams | 

api_instance <- RawDataApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$RawDataRaw13FData(var_paramsdata_file = "result.txt")
result <- api_instance$RawDataRaw13FData(var_params)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **params** | [**Raw13FDataSearchParams**](Raw13FDataSearchParams.md)|  | 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, text/html, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, text/html, text/csv

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **RawDataRawNonXBRLData**
> array[NonXBRLFact] RawDataRawNonXBRLData(params)

Non-XBRL Data As-Reported

The data behind the <a href=\"/nonXBRLRawData\">non-XBRL raw data</a> page.

### Example
```R
library(openapi)

# Non-XBRL Data As-Reported
#
# prepare function argument(s)
var_params <- RawNonXBRLDataSearchParams$new(CompaniesParameters$new(c("companyIdentifiers_example"), "entireUniverse_example", c(123)), RawNonXBRLQueryParams$new(c(NONxbrlQueryPiece$new("numericalValue", "equals", "value_example")), "QueryID_example")) # RawNonXBRLDataSearchParams | 

api_instance <- RawDataApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$RawDataRawNonXBRLData(var_paramsdata_file = "result.txt")
result <- api_instance$RawDataRawNonXBRLData(var_params)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **params** | [**RawNonXBRLDataSearchParams**](RawNonXBRLDataSearchParams.md)|  | 

### Return type

[**array[NonXBRLFact]**](NonXBRLFact.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, text/html, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, text/html, text/csv

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **RawDataRawXBRLData**
> array[RawXBRLFact] RawDataRawXBRLData(params)

XBRL data As-Reported

The data behind the <a href=\"/xbrl\">raw data page.</a>

### Example
```R
library(openapi)

# XBRL data As-Reported
#
# prepare function argument(s)
var_params <- RawXBRLDataSearchParams$new(RawXBRLQueryParams$new(c(XbrlQueryPiece$new("numericalValue", "equals", "value_example")), "QueryID_example"), CompaniesParameters$new(c("companyIdentifiers_example"), "entireUniverse_example", c(123))) # RawXBRLDataSearchParams | 

api_instance <- RawDataApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$RawDataRawXBRLData(var_paramsdata_file = "result.txt")
result <- api_instance$RawDataRawXBRLData(var_params)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **params** | [**RawXBRLDataSearchParams**](RawXBRLDataSearchParams.md)|  | 

### Return type

[**array[RawXBRLFact]**](RawXBRLFact.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, text/html, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, text/html, text/csv

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

