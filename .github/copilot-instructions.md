# calcbenchR Copilot Instructions

## Overview

`calcbenchR` is an R package providing access to the [Calcbench](https://www.calcbench.com) financial data API. Most of the code is **auto-generated** from `calcbench-swagger.json` via [OpenAPI Generator](https://openapi-generator.tech) using the `RClientCodegen` template. A small set of hand-written wrapper functions live alongside the generated code.

## Build, Test, and Lint

```r
# Install dependencies
install.packages(c("jsonlite", "httr", "base64enc", "R6", "data.table", "stringr"))

# Build and check (from shell)
R CMD build .
R CMD check calcbenchR_*.tar.gz --no-manual
R CMD INSTALL --preclean calcbenchR_*.tar.gz

# Run all tests (from R console)
devtools::test()

# Run a single test file
testthat::test_file("tests/testthat/test_standardized_data_api.R")

# Lint
lintr::lint_package()

# Regenerate docs (must be run before committing changes to exported functions)
roxygen2::roxygenize('.', roclets = c('rd', 'collate', 'namespace'))
```

## Architecture

The package has two distinct layers:

1. **Generated layer** (do not edit manually): All files except those listed below. These are regenerated from `calcbench-swagger.json` using OpenAPI Generator. Regenerating overwrites them.
   - API classes: `R/*_api.R` — R6 classes wrapping HTTP endpoints (e.g., `StandardizedDataApi`, `FilingsApi`)
   - Model classes: `R/*.R` (non-api) — R6 classes for request/response parameter objects (e.g., `MappedDataSearchParameters`, `PeriodParameters`, `CompaniesParameters`)
   - `R/api_client.R` — central HTTP client (R6), handles auth, retries, serialization
   - `R/api_response.R` — response wrapper

2. **Hand-written layer** (safe to edit): Higher-level convenience functions that compose the generated classes and return `data.table` objects:
   - `R/get_standardized_data.R`
   - `R/get_filings.R`
   - `R/get_available_companies.R`
   - `R/get_available_metrics.R`

## Key Conventions

**Authentication**: All API calls use HTTP Basic Auth. Credentials are read from environment variables — never hardcoded:
```r
ApiClient$new(
  email = Sys.getenv("CALCBENCH_USERNAME"),
  strng = Sys.getenv("CALCBENCH_PASSWORD")
)
```

**Wrapper function pattern**: Each hand-written function: (1) creates an `ApiClient`, (2) constructs nested parameter objects from the generated model classes, (3) calls the relevant `*Api` method, (4) flattens the list-of-R6-objects result into a `data.table` via `lapply` + `data.table::rbindlist`.

**Return type**: Hand-written functions always return `data.table`, not base R `data.frame`.

**Lintr config** (`.lintr`): Line length limit is 160 chars. `object_name_linter` and `cyclocomp_linter` are disabled.

**Regenerating from swagger**: To regenerate the generated layer, use the OpenAPI Generator CLI against `calcbench-swagger.json`. After regenerating, re-apply any manual edits to `api_client.R` (e.g., `base_path = "https://www.calcbench.com/"`) and re-run `roxygen2::roxygenize()`.

**Code style**: Use `styler::style_dir()` to reformat code (targets styler v1.7.0.9003).
