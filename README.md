# MedianImputer
MedianImputer is an R pakacges that provides a function to impute missing values in numeric column of a data frame using the median of each column.

 # Installation
You can install the package directly from Github:

```R
# install the package first if you have not installed this package yet
install.packages("devtools")
library(devtools)

devtools::install_github("Erina013/MedianImputer")

library(MedianImputer)

# Example of data in data frame

my_data <- data.frame(D =c(15, 12, 17, NA),E = c(NA, 21, 31, 52),F = c("A",NA,"D","D"))
imputed_data <- median_imputer(my_data)
print(imputed_data)
```

# Documentation
Use the function belom to see a full description

```R
?median_imputer
```










