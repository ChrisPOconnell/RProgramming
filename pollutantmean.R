#Not sure what happened to this upload :(
pollutantmean <- function(directory, pollutant, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  #directory <- "C:/Users/ChrisP/Documents/GitHub/specdata"
  directory <-  "C:/Users/chris_000/Documents/GitHub/specdata/"
  
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
  ## NOTE: Do not round the result!
  
    #Debug, what class is id?
  class(pollutantmean[id])
  pollutantmean(id)
  
#Code to set up While loop counters/variables.
  i <- 0            #Set counter position
  x <- length(id)   #Get end position for while loop
 
  while(i < x) {
    i <- i + 1        #Increase index counter
    #printed_id <- print(id[i])   #This code works, prints each ID individually.
    class(id)                  #This is not returning anything.
 #   if(id[i] < 10) {
#      "ID IS LESS THAN 10!"
#    }
    
}
   
}
