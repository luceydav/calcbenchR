# openapi::MetricSearchCriteria


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**metrics** | **array[character]** |  | [optional] 
**company_identifiers** | **array[character]** |  | [optional] 
**start_year** | **integer** |  | [optional] 
**start_period** | **integer** |  | [optional] 
**end_year** | **integer** |  | [optional] 
**end_period** | **integer** |  | [optional] 
**fiscal_period** | **character** |  | [optional] 
**calendar_year** | **integer** |  | [optional] 
**calendar_period** | **character** |  | [optional] 
**periods_back** | **integer** |  | [optional] 
**include_trace** | **character** |  | [optional] 
**entire_universe** | **character** |  | [optional] 
**AccessionID** | **integer** |  | [optional] 
**use_fiscal_periods** | **character** |  | [optional] 
**as_originally_reported** | **character** |  | [optional] 
**all_history** | **character** |  | [optional] 
**PointInTime** | **character** |  | [optional] 
**updateDate** | **character** |  | [optional] 
**period_type** | **character** |  | [optional] [Enum: [unset, y, q1, q2, q3, q4, h1, Q3Cum, TTM, MRQ, MRQ_fiscal, MRCumulative, year_fiscal, combined, allHistory, MostRecentPeriod, DateRange]] 
**Annual** | **character** |  | [optional] [readonly] 
**Quarterly** | **character** |  | [optional] [readonly] 
**AllowedPeriods** | **array[character]** |  | [optional] [readonly] [Enum: ] 
**metricsDictionary** | **map(character)** |  | [optional] [readonly] 


