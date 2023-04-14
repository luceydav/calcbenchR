# openapi::PurchasePriceAllocation

Standardized M and A data

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**acquisition_date** | **character** |  | [optional] 
**date_reported** | **character** |  | [optional] 
**date_originally_reported** | **character** |  | [optional] 
**target** | **character** | The company being acquired | [optional] 
**enterprise_value** | **numeric** | Purchase price + Debt - Cash | [optional] [readonly] 
**parent_company** | **character** | The acquiring company | [optional] 
**parent_company_ticker** | **character** |  | [optional] 
**parent_company_cik** | **character** |  | [optional] 
**parent_company_state** | **character** |  | [optional] 
**parent_company_SIC_code** | **integer** |  | [optional] 
**purchase_price** | [**DimensionalDataPoint**](DimensionalDataPoint.md) |  | [optional] 
**trace_link** | **character** |  | [optional] 
**intangible_categories** | [**map(IntangibleAssetsCategory)**](IntangibleAssetsCategory.md) | Defined by a Calcbench client | [optional] [readonly] 
**standardized_PPA_points** | [**map(MappedDataPoint)**](MappedDataPoint.md) | All of the BusinessCombinations... points | [optional] 


