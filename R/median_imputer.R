#' Impute Missing Values with Median
#'
#' This function replaces missing value in each numeric column with the median of the column.
#'
#' @param data A data frame with numeric columns containing missing values.
#' @return A data frame with missing values imputed.
#' @export
#'
#' @examples
#' my_data <- data.frame(D =c(15, 12, 17, NA),E = c(NA, 21, 31, 52),F = c("A",NA,"D","D"))

median_imputer <- function(my_data){
  if(!is.data.frame(my_data)){
    stop("The data must be in data frame pattern")
  }

  numeric_column <- sapply(my_data, is.numeric)

  for(i in names(numeric_column)[numeric_column]) {
    median_value <- median(my_data[[i]], na.rm = TRUE)
    my_data[[i]][is.na(my_data[[i]])] <- median_value
  }
  return(my_data)
}

median_imputer(my_data)


