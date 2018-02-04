corr <- function(directory, threshold = 0) {
      matrix <- c()
      for (x in 1:332){
        a <- file.path(directory, formatC(x, width = 3, flag = "0"))
        b <- paste(a, "csv", sep = ".")
        data <- read.csv(b)
        len <- sum(complete.cases(data))
        if (len > threshold){
          c <- cor(data[complete.cases(data), "sulfate"], data[complete.cases(data), "nitrate"])
          matrix  <- c(matrix, c)
        }
      }
      matrix
}