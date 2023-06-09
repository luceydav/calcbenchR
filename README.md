# R API client for calcbenchR

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project. By using the [OpenAPI spec](https://openapis.org) from a remote server, you can easily generate an API client.

- API version: v1
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RClientCodegen

## Installation

### Prerequisites

Install the dependencies

```R
install.packages("jsonlite")
install.packages("httr")
install.packages("base64enc")
```

### Build the package

```sh
git clone https://github.com/luceydav/calcbenchR
cd GIT_REPO_ID
R CMD build .
R CMD check calcbenchR_1.0.0.tar.gz --no-manual
R CMD INSTALL --preclean calcbenchR_1.0.0.tar.gz
```

### Install the package

```R
install.packages("calcbenchR")
```

To install directly from Github, use `devtools`:
```R
install.packages("devtools")
library(devtools)
install_github("luceydav/calcbenchR")
```

To install the package from a local file:
```R
install.packages("calcbenchR_1.0.0.tar.gz", repos = NULL, type = "source")
```

### Usage

```R
library(calcbenchR)
```

### Reformat code

To reformat code using [styler](https://styler.r-lib.org/index.html), please run the following in the R console:

```R
install.packages("remotes")
remotes::install_github("r-lib/styler@v1.7.0.9003")
library("styler")
style_dir()
```

## Documentation for API Endpoints

All URIs are relative to *https://calcbench.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AvailableMetricsApi* | [**AvailableMetricsGetValues**](docs/AvailableMetricsApi.md#AvailableMetricsGetValues) | **GET** /api/availablemetrics | 
*BusinessCombinationsApi* | [**BusinessCombinationsBusinessCombinations**](docs/BusinessCombinationsApi.md#BusinessCombinationsBusinessCombinations) | **POST** /api/businessCombinations | The data behind the business combinations page, https://www.calcbench.com/businesscombinations
*CompaniesApi* | [**CompaniesAvailableCompanies**](docs/CompaniesApi.md#CompaniesAvailableCompanies) | **POST** /api/companies | 
*DimensionalDataApi* | [**DimensionalDataDimensionalData**](docs/DimensionalDataApi.md#DimensionalDataDimensionalData) | **POST** /api/dimensionalData | The data behind https://www.calcbench.com/segments
*DisclosureApi* | [**DisclosureFootnoteSearch**](docs/DisclosureApi.md#DisclosureFootnoteSearch) | **POST** /api/footnoteSearch | Document Search
*FaceStatementsApi* | [**FaceStatementsGetStatementExteneral**](docs/FaceStatementsApi.md#FaceStatementsGetStatementExteneral) | **GET** /api/faceStatement | As-reported face statments, income, balance, statement of cash flows, etc...
*FaceStatementsApi* | [**FaceStatementsGetStatements**](docs/FaceStatementsApi.md#FaceStatementsGetStatements) | **GET** /api/faceStatements | Gets the list of statements for one company/period
*FilingsApi* | [**FilingsFilingsV2**](docs/FilingsApi.md#FilingsFilingsV2) | **POST** /api/filingsV2 | 
*RawDataApi* | [**RawDataRaw13FData**](docs/RawDataApi.md#RawDataRaw13FData) | **POST** /api/raw13FData | 13F data
*RawDataApi* | [**RawDataRawNonXBRLData**](docs/RawDataApi.md#RawDataRawNonXBRLData) | **POST** /api/rawNonXBRLData | Non-XBRL Data As-Reported
*RawDataApi* | [**RawDataRawXBRLData**](docs/RawDataApi.md#RawDataRawXBRLData) | **POST** /api/rawXBRLData | XBRL data As-Reported
*RawXBRLApi* | [**RawXBRLXBRLTagValues**](docs/RawXBRLApi.md#RawXBRLXBRLTagValues) | **POST** /api/XBRLTagValuesV2 | Get data for individual tags on the multi-company page.
*StandardizedDataApi* | [**StandardizedDataMappedData**](docs/StandardizedDataApi.md#StandardizedDataMappedData) | **POST** /api/mappedData | 


## Documentation for Models

 - [APIXBRLCompany](docs/APIXBRLCompany.md)
 - [APIXBRLStatement](docs/APIXBRLStatement.md)
 - [BusinessCombinationsParameters](docs/BusinessCombinationsParameters.md)
 - [CompaniesParameters](docs/CompaniesParameters.md)
 - [CompanySearchParameters](docs/CompanySearchParameters.md)
 - [DateRange](docs/DateRange.md)
 - [DimensionalDataPoint](docs/DimensionalDataPoint.md)
 - [DimensionalQueryParameters](docs/DimensionalQueryParameters.md)
 - [DimensionalSearchParameters](docs/DimensionalSearchParameters.md)
 - [DisclosureSubSection](docs/DisclosureSubSection.md)
 - [FaceStatementColumn](docs/FaceStatementColumn.md)
 - [Filing](docs/Filing.md)
 - [FilingsParameters](docs/FilingsParameters.md)
 - [FilingsQueryParameters](docs/FilingsQueryParameters.md)
 - [FootnotePeriodParameters](docs/FootnotePeriodParameters.md)
 - [FootnoteQueryParameters](docs/FootnoteQueryParameters.md)
 - [FootnoteQueryResponse](docs/FootnoteQueryResponse.md)
 - [FootnoteSearchParameters](docs/FootnoteSearchParameters.md)
 - [Form13FQueryPiece](docs/Form13FQueryPiece.md)
 - [IntangibleAssetsCategory](docs/IntangibleAssetsCategory.md)
 - [MappedDataPoint](docs/MappedDataPoint.md)
 - [MappedDataSearchParameters](docs/MappedDataSearchParameters.md)
 - [MetricGroups](docs/MetricGroups.md)
 - [MetricSearchCriteria](docs/MetricSearchCriteria.md)
 - [NONxbrlQueryPiece](docs/NONxbrlQueryPiece.md)
 - [NonXBRLFact](docs/NonXBRLFact.md)
 - [PeriodParameters](docs/PeriodParameters.md)
 - [PurchasePriceAllocation](docs/PurchasePriceAllocation.md)
 - [Raw13FDataSearchParams](docs/Raw13FDataSearchParams.md)
 - [Raw13FQueryParams](docs/Raw13FQueryParams.md)
 - [RawNonXBRLDataSearchParams](docs/RawNonXBRLDataSearchParams.md)
 - [RawNonXBRLQueryParams](docs/RawNonXBRLQueryParams.md)
 - [RawXBRLDataSearchParams](docs/RawXBRLDataSearchParams.md)
 - [RawXBRLFact](docs/RawXBRLFact.md)
 - [RawXBRLQueryParams](docs/RawXBRLQueryParams.md)
 - [StandardizedFootnoteMetricDefinition](docs/StandardizedFootnoteMetricDefinition.md)
 - [StandardizedMetricDefinition](docs/StandardizedMetricDefinition.md)
 - [StandardizedQueryParameters](docs/StandardizedQueryParameters.md)
 - [StatementsMetaData](docs/StatementsMetaData.md)
 - [TextFootnote](docs/TextFootnote.md)
 - [TraceData](docs/TraceData.md)
 - [XBRLDisclosure](docs/XBRLDisclosure.md)
 - [XBRLTagQueryParameters](docs/XBRLTagQueryParameters.md)
 - [XBRLTagSearchParameters](docs/XBRLTagSearchParameters.md)
 - [XBRLcompany](docs/XBRLcompany.md)
 - [XBRLcontext](docs/XBRLcontext.md)
 - [XBRLstatement](docs/XBRLstatement.md)
 - [XbrlQueryPiece](docs/XbrlQueryPiece.md)


## Documentation for Authorization

 All endpoints do not require authorization.


