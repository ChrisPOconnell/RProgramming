complete <- function(directory, id = 1:332) {
  
  #SAMPLE COMMAND
  #complete("C:/Users/chris_000/Documents/GitHub/specdata/",1)
  
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  files_full <- list.files(path = directory, full.names=TRUE)
  file_total <- length(files_full)
  print("total files: " )
  print(file_total)
  
  column_count <- 1:2
    total <- data.frame(id = numeric(0), nobs=numeric(0))
    
    names(total) <- c("id","nobs")
    #total(column_count) <- c("id","nobs")
  
  i <- 0
  
  while(i < file_total) {
    i <-  i + 1
  
    #The following [,pollutant] filter introduced major errors during the RBIND function.
    #I had hoped originally to only import the pollutant column in order to save memory and increase processing speed.
    temp_dat <- read.csv(file = files_full[id[i]])
    complete_nobs <- complete.cases(temp_dat)
    complete_nobs_sum <- sum(complete_nobs)
    #total[i,i] <- c(i,complete_nobs_sum)
    print(i)
    print(complete_nobs_sum)  
   # print(complete_nobs_sum)
    
  }
    #the readings from our observation files.
  #print(readings)
  
  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## where 'id' is the monitor ID number and 'nobs' is the
  ## number of complete cases
}