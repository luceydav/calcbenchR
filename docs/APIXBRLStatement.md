# openapi::APIXBRLStatement

Income statement, balance sheet, statement of cash flows, etc.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entity_name** | **character** |  | [optional] [readonly] 
**name** | **character** |  | [optional] [readonly] 
**period_type** | **character** |  | [optional] [readonly] [Enum: [none, Q, Y, halfYear, Q3CUM, cumulative, ttm, Q_Y_combined]] 
**id_ifrs** | **character** |  | [optional] [readonly] 
**columns** | [**array[FaceStatementColumn]**](FaceStatementColumn.md) |  | [optional] [readonly] 
**line_items** | **array[object]** |  | [optional] [readonly] 
**unique_id** | **character** |  | [optional] [readonly] 


