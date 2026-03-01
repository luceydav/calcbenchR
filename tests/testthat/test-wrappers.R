context("Test wrapper functions")

has_creds <- nchar(Sys.getenv("CALCBENCH_USERNAME")) > 0 &&
  nchar(Sys.getenv("CALCBENCH_PASSWORD")) > 0

# ---------------------------------------------------------------------------
# get_available_metrics
# ---------------------------------------------------------------------------
test_that("get_available_metrics returns named list of data.tables", {
  skip_if_not(has_creds, "Calcbench credentials not set")
  result <- get_available_metrics()
  expect_type(result, "list")
  expect_true(data.table::is.data.table(result$face))
  expect_true(data.table::is.data.table(result$ratio))
  expect_true(data.table::is.data.table(result$footnote))
  expect_true(nrow(result$face) > 0)
})

# ---------------------------------------------------------------------------
# get_available_companies
# ---------------------------------------------------------------------------
test_that("get_available_companies returns a data.table", {
  skip_if_not(has_creds, "Calcbench credentials not set")
  result <- get_available_companies(index = "SP500")
  expect_true(data.table::is.data.table(result))
  expect_true(nrow(result) > 0)
  expect_true("ticker" %in% names(result))
  expect_true("entity_name" %in% names(result))
})

# ---------------------------------------------------------------------------
# get_filings
# ---------------------------------------------------------------------------
test_that("get_filings returns a data.table with expected columns", {
  skip_if_not(has_creds, "Calcbench credentials not set")
  result <- get_filings(companies = list("AAPL"))
  expect_true(data.table::is.data.table(result))
  expect_true(nrow(result) > 0)
  expect_true(all(c("ticker", "filing_type", "filing_date") %in% names(result)))
})

# ---------------------------------------------------------------------------
# get_standardized_data (premium; test 401 message)
# ---------------------------------------------------------------------------
test_that("get_standardized_data gives a clear 401 error for non-premium accounts", {
  skip_if_not(has_creds, "Calcbench credentials not set")
  tryCatch({
    result <- get_standardized_data(
      metrics     = list("Revenue"),
      companies   = list("AAPL"),
      all_history = FALSE
    )
    # If it succeeds (premium account), check structure
    expect_true(data.table::is.data.table(result))
  }, error = function(e) {
    # Should be a descriptive error, not a NULL comparison error
    msg <- conditionMessage(e)
    expect_true(grepl("401|subscription|premium|Authorization", msg,
                      ignore.case = TRUE))
  })
})

# ---------------------------------------------------------------------------
# get_dimensional_data (premium; test error message)
# ---------------------------------------------------------------------------
test_that("get_dimensional_data returns data.table or clear 401 error", {
  skip_if_not(has_creds, "Calcbench credentials not set")
  tryCatch({
    result <- get_dimensional_data(
      metrics   = list("OperatingSegmentRevenue"),
      companies = list("AAPL"),
      all_history = FALSE
    )
    expect_true(data.table::is.data.table(result))
  }, error = function(e) {
    msg <- conditionMessage(e)
    expect_true(grepl("401|subscription|premium|Authorization", msg,
                      ignore.case = TRUE))
  })
})

# ---------------------------------------------------------------------------
# get_disclosures
# ---------------------------------------------------------------------------
test_that("get_disclosures returns a data.table or clear error", {
  skip_if_not(has_creds, "Calcbench credentials not set")
  tryCatch({
    result <- get_disclosures(
      companies   = list("AAPL"),
      all_history = FALSE,
      year        = 2023
    )
    expect_true(data.table::is.data.table(result))
    if (nrow(result) > 0) {
      expect_true("ticker" %in% names(result))
      expect_true("disclosure_type_name" %in% names(result))
    }
  }, error = function(e) {
    msg <- conditionMessage(e)
    expect_true(nchar(msg) > 0)
  })
})

# ---------------------------------------------------------------------------
# get_face_statement
# ---------------------------------------------------------------------------
test_that("get_face_statement returns a non-null result", {
  skip_if_not(has_creds, "Calcbench credentials not set")
  tryCatch({
    result <- get_face_statement(
      company        = "AAPL",
      statement_type = "income",
      period_type    = "annual",
      all_history    = FALSE
    )
    expect_false(is.null(result))
  }, error = function(e) {
    msg <- conditionMessage(e)
    expect_true(nchar(msg) > 0)
  })
})

# ---------------------------------------------------------------------------
# get_business_combinations
# ---------------------------------------------------------------------------
test_that("get_business_combinations returns a data.table or clear error", {
  skip_if_not(has_creds, "Calcbench credentials not set")
  tryCatch({
    result <- get_business_combinations(companies = list("MSFT"))
    expect_true(data.table::is.data.table(result))
    if (nrow(result) > 0) {
      expect_true("parent_company_ticker" %in% names(result))
      expect_true("target" %in% names(result))
    }
  }, error = function(e) {
    msg <- conditionMessage(e)
    expect_true(nchar(msg) > 0)
  })
})

# ---------------------------------------------------------------------------
# get_raw_xbrl
# ---------------------------------------------------------------------------
test_that("get_raw_xbrl returns a data.table or clear error", {
  skip_if_not(has_creds, "Calcbench credentials not set")
  tryCatch({
    result <- get_raw_xbrl(companies = list("AAPL"))
    expect_true(data.table::is.data.table(result))
    if (nrow(result) > 0) {
      expect_true("ticker" %in% names(result))
      expect_true("XBRLtag" %in% names(result))
    }
  }, error = function(e) {
    msg <- conditionMessage(e)
    expect_true(nchar(msg) > 0)
  })
})

# ---------------------------------------------------------------------------
# get_non_xbrl_data
# ---------------------------------------------------------------------------
test_that("get_non_xbrl_data returns a data.table or clear error", {
  skip_if_not(has_creds, "Calcbench credentials not set")
  tryCatch({
    result <- get_non_xbrl_data(companies = list("AAPL"))
    expect_true(data.table::is.data.table(result))
    if (nrow(result) > 0) {
      expect_true("ticker" %in% names(result))
    }
  }, error = function(e) {
    msg <- conditionMessage(e)
    expect_true(nchar(msg) > 0)
  })
})

# ---------------------------------------------------------------------------
# get_xbrl_tag_values
# ---------------------------------------------------------------------------
test_that("get_xbrl_tag_values errors if no tags or metrics provided", {
  expect_error(
    get_xbrl_tag_values(companies = list("AAPL")),
    "tags.*metrics|metrics.*tags"
  )
})

test_that("get_xbrl_tag_values returns a data.table or clear error", {
  skip_if_not(has_creds, "Calcbench credentials not set")
  tryCatch({
    result <- get_xbrl_tag_values(
      companies = list("AAPL"),
      metrics   = list("Revenue"),
      all_history = FALSE
    )
    expect_true(data.table::is.data.table(result))
    if (nrow(result) > 0) {
      expect_true("ticker" %in% names(result))
      expect_true("value" %in% names(result))
    }
  }, error = function(e) {
    msg <- conditionMessage(e)
    expect_true(nchar(msg) > 0)
  })
})

# ---------------------------------------------------------------------------
# get_13f_data
# ---------------------------------------------------------------------------
test_that("get_13f_data returns a result or clear error", {
  skip_if_not(has_creds, "Calcbench credentials not set")
  tryCatch({
    result <- get_13f_data(companies = list("BRK-B"))
    expect_false(is.null(result))
  }, error = function(e) {
    msg <- conditionMessage(e)
    expect_true(nchar(msg) > 0)
  })
})
