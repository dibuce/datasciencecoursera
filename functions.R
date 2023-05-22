## open data file and load into var airquality
airquality <- read.csv("hw1_data.csv")

## function to add two values
add2 <- function(x, y) {
  x + y
}

## enter a vector to get all numbers which are above 10
above10 <- function(x) {
  use <- x > 10
  x[use]
}

## enter a vector and a above parameter, get all numbers higher than the paramter, default is 10
above <- function(x , n = 10) {
  use <- x > n
  x[use]
}

## get mean value for every column, default is to remove NAs
columnmean <- function(y, removeNA = TRUE) {
  nc <- ncol(y)
  means <- numeric(nc)
  for(i in 1:nc) {
      means[i] <- mean(y[, i], na.rm = removeNA)
  }
  means
}