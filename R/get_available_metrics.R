
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
  
  return(metrics)
  
}
