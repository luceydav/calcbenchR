# RawXBRLApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**RawXBRLXBRLTagValues**](RawXBRLApi.md#RawXBRLXBRLTagValues) | **POST** /api/XBRLTagValuesV2 | Get data for individual tags on the multi-company page.


# **RawXBRLXBRLTagValues**
> array[object] RawXBRLXBRLTagValues(search_parameters)

Get data for individual tags on the multi-company page.

See <a href=\"https://www.calcbench.com/multi?pg_classificationMethod=index&amp;pg_title=Dow%20Jones%20Industrial%20Average&amp;pg_sectorCode=DJIA&amp;mc_metrics=%7B%22metric%22:%22Revenues%22,%22dataSet%22:2,%22format_type%22:%22currency%22%7D\">Example</a>

### Example
```R
library(openapi)

# Get data for individual tags on the multi-company page.
#
# prepare function argument(s)
var_search_parameters <- XBRLTagSearchParameters$new(XBRLTagQueryParameters$new(c("tags_example"), c("metrics_example")), CompaniesParameters$new(c("companyIdentifiers_example"), "entireUniverse_example", c(123)), PeriodParameters$new(123, "unset", 123, "unset", "periodType_example", "useFiscalPeriod_example", DateRange$new("startDate_example", "endDate_example"), "allHistory_example", "updateDate_example", "updatedFrom_example", "asOriginallyReported_example", 123, 123), MetricSearchCriteria$new(c("metrics_example"), c("company_identifiers_example"), 123, 123, 123, 123, "fiscal_period_example", 123, "calendar_period_example", 123, "include_trace_example", "entire_universe_example", 123, "use_fiscal_periods_example", "as_originally_reported_example", "all_history_example", "PointInTime_example", "updateDate_example", "unset", "Annual_example", "Quarterly_example", c("unset"), c(key = "inner_example"))) # XBRLTagSearchParameters | 

api_instance <- RawXBRLApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$RawXBRLXBRLTagValues(var_search_parametersdata_file = "result.txt")
result <- api_instance$RawXBRLXBRLTagValues(var_search_parameters)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_parameters** | [**XBRLTagSearchParameters**](XBRLTagSearchParameters.md)|  | 

### Return type

**array[object]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, text/html, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, text/html, text/csv

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

