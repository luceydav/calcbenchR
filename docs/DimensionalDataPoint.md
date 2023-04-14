# openapi::DimensionalDataPoint

Returned by calls to the dimensional(segment) API end-point

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**is_subtotal** | **character** |  | [optional] 
**dimensions** | **map(character)** | Keys are the axis names, values are the member names. | [optional] 
**container** | **character** |  | [optional] 
**standardized_id** | **integer** |  | [optional] 
**metric** | **character** |  | [optional] 
**value** | **object** |  | [optional] 
**calendar_year** | **integer** |  | [optional] 
**calendar_period** | **integer** |  | [optional] 
**fiscal_year** | **integer** |  | [optional] 
**fiscal_period** | **integer** |  | [optional] 
**trace_facts** | [**array[TraceData]**](TraceData.md) |  | [optional] 
**ticker** | **character** |  | [optional] 
**CIK** | **character** |  | [optional] 
**calcbench_entity_id** | **integer** |  | [optional] 
**filing_type** | **character** |  | [optional] 
**preliminary** | **character** |  | [optional] 
**filing_accession_number** | **character** |  | [optional] 
**trace_url** | **character** |  | [optional] [readonly] 
**revision_number** | **integer** |  | [optional] 
**XBRL** | **character** |  | [optional] 


