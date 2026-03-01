
#' @title Get Available Metrics
#'
#' @description Function to get Calcbench available metrics
#'
#' @return data.table
#' 
#' @export
get_available_metrics <- function() {
  
  api_client <-
    ApiClient$new(
      email = Sys.getenv("CALCBENCH_USERNAME"),
      password = Sys.getenv("CALCBENCH_PASSWORD")
    )
  
  # Get metrics
  metrics_api <- AvailableMetricsApi$new(api_client = api_client)
  metrics <- metrics_api$AvailableMetricsGetValues()
  
  # Parse metrics
  face <- data.table::data.table(
    metric = sapply(metrics$face, `[[`, "metric"),
    name = sapply(metrics$face, `[[`, "name"),
    period_type = sapply(metrics$face, `[[`, "period_type"),
    section = sapply(metrics$face, `[[`, "section"),
    class = sapply(metrics$face, `[[`, "class"),
    format_type = sapply(metrics$face, `[[`, "format_type"),
    is_face = sapply(metrics$face, `[[`, "is_face"),
    is_footnote = sapply(metrics$face, `[[`, "is_footnote"),
    is_ratio = sapply(metrics$face, `[[`, "is_ratio"),
    description = sapply(metrics$face, `[[`, "description"),
    unit_of_mesure = sapply(metrics$face, `[[`, "UnitOfMeasure")
  )
  
  ratio <- 
    data.table::data.table(
      metric = sapply(metrics$ratio, `[[`, "metric"),
      name = sapply(metrics$ratio, `[[`, "name"),
      period_type = sapply(metrics$ratio, `[[`, "period_type"),
      section = sapply(metrics$ratio, `[[`, "section"),
      class = sapply(metrics$ratio, `[[`, "class"),
      format_type = sapply(metrics$ratio, `[[`, "format_type"),
      is_face = sapply(metrics$ratio, `[[`, "is_face"),
      is_footnote = sapply(metrics$ratio, `[[`, "is_footnote"),
      is_ratio = sapply(metrics$ratio, `[[`, "is_ratio"),
      description = sapply(metrics$ratio, `[[`, "description"),
      unit_of_mesure = sapply(metrics$ratio, `[[`, "UnitOfMeasure")
    )
  footnotes <- 
    data.table::data.table(
      metric = sapply(metrics$footnote, `[[`, "metric"),
      name = sapply(metrics$footnote, `[[`, "name"),
      period_type = sapply(metrics$footnote, `[[`, "period_type"),
      section = sapply(metrics$footnote, `[[`, "section"),
      class = sapply(metrics$footnote, `[[`, "class"),
      format_type = sapply(metrics$footnote, `[[`, "format_type"),
      is_face = sapply(metrics$footnote, `[[`, "is_face"),
      is_footnote = sapply(metrics$footnote, `[[`, "is_footnote"),
      is_ratio = sapply(metrics$footnote, `[[`, "is_ratio"),
      description = sapply(metrics$footnote, `[[`, "description"),
      unit_of_mesure = sapply(metrics$footnote, `[[`, "UnitOfMeasure"),
      related_footnotes = sapply(metrics$footnote, `[[`, "related_footnotes")
    )
  
  # Metrics
  metrics <- list(face = face, ratio = ratio, footnotes = footnotes)
  
  return(metrics)
}
