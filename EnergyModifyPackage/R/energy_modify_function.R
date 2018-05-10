#' Energy Modify Function
#'
#' This function allows you to preprocess easily.
#' @param 
#' @keywords preprocessing energy data
#' @export
#' @examples
#' energy_modify_function()


energy_modify_function <- function(energy_data){
  
  
  
  energy_data$date <- ymd_hms(energy_data$date)
  
  
  energy_subset_year <- energy_data %>% 
    dplyr::mutate(usage_year = year(date),
                  usage_month = month(date),
                  usage_day = day(date),
                  usage_wday = wday(date),
                  usage_hour = hour(date),
                  usage_minute = minute(date)) %>% 
    dplyr::filter(usage_year == 2016) %>% 
    dplyr::arrange(id,date)
  
  energy_subset_year
  
}