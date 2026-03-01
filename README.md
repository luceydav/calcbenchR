# calcbenchR

An R client for the [Calcbench](https://www.calcbench.com) financial data API, providing access to standardized and as-reported SEC filing data.

## Overview

Calcbench normalizes XBRL data from SEC filings across thousands of public companies. This package wraps the Calcbench REST API so you can pull financial data directly into R as tidy `data.table`s.

A Calcbench account is required. Some endpoints (standardized financial data, dimensional/segment data) require a **premium subscription**. See [calcbench.com/home/plans](https://www.calcbench.com/home/plans).

## Installation

```r
# install.packages("devtools")
devtools::install_github("luceydav/calcbenchR")
```

## Setup

All functions authenticate using environment variables. Add these to your `~/.Renviron` (run `usethis::edit_r_environ()`) for persistence:

```
CALCBENCH_USERNAME=your_email@example.com
CALCBENCH_PASSWORD=your_password
```

Or set them per session:

```r
Sys.setenv(
  CALCBENCH_USERNAME = "your_email@example.com",
  CALCBENCH_PASSWORD = "your_password"
)
```

## Usage

```r
library(calcbenchR)

# Browse available financial metrics
metrics <- get_available_metrics()
metrics$face[grepl("revenue", name, ignore.case = TRUE), .(metric, name, section)]

# Search the company universe (SP500, DJIA, Russell3000, or NULL for all)
companies <- get_available_companies(index = "SP500")
companies[ticker == "AAPL"]

# Get SEC filing metadata
aapl_filings <- get_filings(companies = list("AAPL"))
aapl_filings[filing_type == "annualQuarterlyReport", .(filing_date, fiscal_year, sec_html_url)]

# As-reported income statement
income <- get_face_statement("AAPL", statement_type = "income")

# Footnote / disclosure search
disclosures <- get_disclosures(
  companies        = list("AAPL"),
  year             = 2023,
  disclosure_names = list("RiskFactors")
)

# Raw XBRL facts
raw <- get_raw_xbrl(companies = list("AAPL"))

# M&A purchase price allocations
ma <- get_business_combinations(companies = list("MSFT"))

# Standardized financial data (premium subscription required)
ebit <- get_standardized_data(
  metrics     = list("EBIT", "Revenue"),
  companies   = list("AAPL", "MSFT"),
  all_history = TRUE
)
```

For a full walkthrough, see the vignette:

```r
vignette("calcbenchR")
```

## Functions

| Function | Description | Requires Premium |
|---|---|---|
| `get_available_metrics()` | Full metric taxonomy (face, ratio, footnote tables) | No |
| `get_available_companies()` | Company universe with metadata | No |
| `get_filings()` | SEC filing metadata | No |
| `get_standardized_data()` | Normalized financial metrics | **Yes** |
| `get_dimensional_data()` | Segment / dimensional data | **Yes** |
| `get_disclosures()` | Footnotes, MD&A, and text block search | No |
| `get_face_statement()` | As-reported financial statements | No |
| `get_business_combinations()` | M&A purchase price allocations | No |
| `get_raw_xbrl()` | Raw as-reported XBRL data points | No |
| `get_non_xbrl_data()` | Non-XBRL numeric data from press releases | No |
| `get_xbrl_tag_values()` | Multi-company XBRL tag / metric values | No |
| `get_13f_data()` | Form 13F institutional holdings data | No |

## Error Handling

A **401 error** means either wrong credentials or insufficient subscription tier. Check that your environment variables are set and that your account has access to the endpoint. The error message will include a link to subscription options.

## Architecture

The package has two layers:

- **Generated layer** (`R/*_api.R`, `R/*.R` model classes) — auto-generated from the Calcbench Swagger spec via OpenAPI Generator
- **Wrapper layer** (`R/get_*.R`) — hand-written convenience functions that handle auth, build request objects, call the API, and return `data.table` results

## License

MIT
