pollutantmean <- function(directory, pollutant, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  #directory <- "C:/Users/ChrisP/Documents/GitHub/specdata"       #SURFACE PRO 3
  directory <-  "C:/Users/chris_000/Documents/GitHub/specdata/"  #e6430
  
  #This isn't perfect because it needs to read the variable 'directory'.  Can't figure out how to make it do that CO
  #the results of this code block is a list of file names!  Perfect!
  files_full <- list.files(path = "C:/Users/chris_000/Documents/GitHub/specdata/", full.names=TRUE) 
  
  #Code to set up While loop counters/variables.
  i <- 0            #Set counter position
  x <- length(id)   #Get end position for while loop
  
  #Debug, print files id
  #files_full[id]
  
  while(i < x){
    i <-  i + 1
    #print(files_full[[i]]) #this works nicely, except I will always be the first position.  We want to specify the value of ID[i]
    print(files_full[id[i]])
  }
  
  
}