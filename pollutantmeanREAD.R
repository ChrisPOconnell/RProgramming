#So this file works great for reading in a single ID.

pollutantmean <- function(directory, pollutant, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  #directory <- "C:/Users/ChrisP/Documents/GitHub/specdata"       #SURFACE PRO 3
#dir <-  "C:/Users/chris_000/Documents/GitHub/specdata/"  #e6430
  
  #This isn't perfect because it needs to read the variable 'directory'.  Can't figure out how to make it do that CO
  #the results of this code block is a list of file names!  Perfect!

  files_full <- list.files(path = directory, full.names=TRUE) 
  
  
  #part specific to reading
  
read.csv(files_full[id], header = TRUE)[,pollutant] #This code works, don't touch it.
#  read.csv(files_full[id], header = TRUE)[,!is.na[pollutant] #Attempt at removing NA!

}