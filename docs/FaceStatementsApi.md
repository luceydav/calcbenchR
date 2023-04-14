# FaceStatementsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**FaceStatementsGetStatementExteneral**](FaceStatementsApi.md#FaceStatementsGetStatementExteneral) | **GET** /api/faceStatement | As-reported face statments, income, balance, statement of cash flows, etc...
[**FaceStatementsGetStatements**](FaceStatementsApi.md#FaceStatementsGetStatements) | **GET** /api/faceStatements | Gets the list of statements for one company/period


# **FaceStatementsGetStatementExteneral**
> APIXBRLStatement FaceStatementsGetStatementExteneral(company_identifier, statement_type = var.statement_type, period_type = var.period_type, all_periods = var.all_periods, descending_dates = var.descending_dates, end_date = var.end_date, accession_id = var.accession_id, point_in_time = var.point_in_time, network_id = var.network_id, for_display = var.for_display, currency = var.currency, include_non_xbrl = var.include_non_xbrl)

As-reported face statments, income, balance, statement of cash flows, etc...

This is data behind the calcbench <a href=\"www.calcbench.com/detail\">Company-In-Detail page</a>.  Formerly known as api/asReported

### Example
```R
library(openapi)

# As-reported face statments, income, balance, statement of cash flows, etc...
#
# prepare function argument(s)
var_company_identifier <- "company_identifier_example" # character | Ticker or CIK
var_statement_type <- "statement_type_example" # character | income|balance|cash|change-in-equity|comprehensive-income (Optional)
var_period_type <- "period_type_example" # character | annual|quarterly|combined|cumulative (Optional)
var_all_periods <- "all_periods_example" # character | include all history (Optional)
var_descending_dates <- "descending_dates_example" # character | most recent period first (Optional)
var_end_date <- "end_date_example" # character | Get statement before this date (Optional)
var_accession_id <- 56 # integer | Internal Calcbench (Optional)
var_point_in_time <- "point_in_time_example" # character | As originally reported, without revisions, defaults to false (Optional)
var_network_id <- 56 # integer | Interal Calcbench (Optional)
var_for_display <- "for_display_example" # character |  (Optional)
var_currency <- "currency_example" # character |  (Optional)
var_include_non_xbrl <- "include_non_xbrl_example" # character | Include data from earnings releases (Optional)

api_instance <- FaceStatementsApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$FaceStatementsGetStatementExteneral(var_company_identifier, statement_type = var_statement_type, period_type = var_period_type, all_periods = var_all_periods, descending_dates = var_descending_dates, end_date = var_end_date, accession_id = var_accession_id, point_in_time = var_point_in_time, network_id = var_network_id, for_display = var_for_display, currency = var_currency, include_non_xbrl = var_include_non_xbrldata_file = "result.txt")
result <- api_instance$FaceStatementsGetStatementExteneral(var_company_identifier, statement_type = var_statement_type, period_type = var_period_type, all_periods = var_all_periods, descending_dates = var_descending_dates, end_date = var_end_date, accession_id = var_accession_id, point_in_time = var_point_in_time, network_id = var_network_id, for_display = var_for_display, currency = var_currency, include_non_xbrl = var_include_non_xbrl)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_identifier** | **character**| Ticker or CIK | 
 **statement_type** | **character**| income|balance|cash|change-in-equity|comprehensive-income | [optional] 
 **period_type** | **character**| annual|quarterly|combined|cumulative | [optional] 
 **all_periods** | **character**| include all history | [optional] 
 **descending_dates** | **character**| most recent period first | [optional] 
 **end_date** | **character**| Get statement before this date | [optional] 
 **accession_id** | **integer**| Internal Calcbench | [optional] 
 **point_in_time** | **character**| As originally reported, without revisions, defaults to false | [optional] 
 **network_id** | **integer**| Interal Calcbench | [optional] 
 **for_display** | **character**|  | [optional] 
 **currency** | Enum [USD, AUD, BRL, CAD, CHF, CNY, DKK, EUR, GBP, HKD, INR, JPY, KRW, LKR, MXN, MYR, NOK, NZD, SEK, SGD, THB, TWD, VEF, ZAR] |  | [optional] 
 **include_non_xbrl** | **character**| Include data from earnings releases | [optional] 

### Return type

[**APIXBRLStatement**](APIXBRLStatement.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html, text/csv

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **FaceStatementsGetStatements**
> StatementsMetaData FaceStatementsGetStatements(ticker, period_type = var.period_type, year = var.year, stat = var.stat)

Gets the list of statements for one company/period

### Example
```R
library(openapi)

# Gets the list of statements for one company/period
#
# prepare function argument(s)
var_ticker <- "ticker_example" # character | 
var_period_type <- "period_type_example" # character |  (Optional)
var_year <- 56 # integer |  (Optional)
var_stat <- "stat_example" # character |  (Optional)

api_instance <- FaceStatementsApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$FaceStatementsGetStatements(var_ticker, period_type = var_period_type, year = var_year, stat = var_statdata_file = "result.txt")
result <- api_instance$FaceStatementsGetStatements(var_ticker, period_type = var_period_type, year = var_year, stat = var_stat)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticker** | **character**|  | 
 **period_type** | Enum [none, Q, Y, halfYear, Q3CUM, cumulative, ttm, Q_Y_combined] |  | [optional] 
 **year** | **integer**|  | [optional] 
 **stat** | **character**|  | [optional] 

### Return type

[**StatementsMetaData**](StatementsMetaData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html, text/csv

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

