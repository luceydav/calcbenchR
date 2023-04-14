# DisclosureApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DisclosureFootnoteSearch**](DisclosureApi.md#DisclosureFootnoteSearch) | **POST** /api/footnoteSearch | Document Search


# **DisclosureFootnoteSearch**
> FootnoteQueryResponse DisclosureFootnoteSearch(search_parameters)

Document Search

The search behind the <a href=\"/disclosures\">disclosures</a> page.  To get all results keep calling with <code>nextGroupStartOffset</code> from the previous response, until <code>moreResults</code> is false.  Retrieving the document contents varies depending on the type of document returned.

### Example
```R
library(openapi)

# Document Search
#
# prepare function argument(s)
var_search_parameters <- FootnoteSearchParameters$new(FootnoteQueryParameters$new("fullTextQuery_example", c(123), "footnoteTag_example", 123, 123, 123, "allFootnotes_example", "includeRelatedItems_example", "fullTextSearchAllTimePeriods_example", "fullTextSearchRestrictToMetricLabels_example", "normalizedFaceMetric_example", "normalizedFootnoteMetric_example", "normalizedBreakoutMetric_example", "ByDocumentID_example", "XBRLNumericTag_example", 123, "blobID_example", 123, "nonXBRLExtractTag_example", 123, "userSubmittedURL_example", "subDivide_example", "publicDisclosureID_example", 123, "disclosureName_example", c("disclosureNames_example"), 123, "none", 123, "AllTextBlocks_example", "AllMDASections_example", 123), FootnotePeriodParameters$new("unset", 123, 123, "unset", "periodType_example", "useFiscalPeriod_example", DateRange$new("startDate_example", "endDate_example"), "allHistory_example", "updateDate_example", "updatedFrom_example", "asOriginallyReported_example", 123, 123), CompaniesParameters$new(c("companyIdentifiers_example"), "entireUniverse_example", c(123))) # FootnoteSearchParameters | 

api_instance <- DisclosureApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DisclosureFootnoteSearch(var_search_parametersdata_file = "result.txt")
result <- api_instance$DisclosureFootnoteSearch(var_search_parameters)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_parameters** | [**FootnoteSearchParameters**](FootnoteSearchParameters.md)|  | 

### Return type

[**FootnoteQueryResponse**](FootnoteQueryResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, text/html, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, text/html, text/csv

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

