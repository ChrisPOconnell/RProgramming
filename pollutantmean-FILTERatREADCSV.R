pollutantmean <- function(directory, pollutant, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  #directory <- "C:/Users/ChrisP/Documents/GitHub/specdata"       #SURFACE PRO 3
  #directory <-  "C:/Users/chris_000/Documents/GitHub/specdata/"  #e6430
  
  #This isn't perfect because it needs to read the variable 'directory'.  Can't figure out how to make it do that CO
  #the results of this code block is a list of file names!  Perfect!
  #files_full <- list.files(path = "C:/Users/chris_000/Documents/GitHub/specdata/", full.names=TRUE) 
  
  files_full <- list.files(path = directory, full.names=TRUE) 
  #Experimenting
  #dat <- data.frame()
  
  #Code to set up While loop counters/variables.
  i <- 0            #Set counter position
  #x <- length(id)   #Get end position for while loop
  readings <- data.frame()
  sub_readings <- data.frame()
  temp_data <- data.frame()
  
  while(i < length(id)) {
    i <-  i + 1
    #The following line introduced major errors during the RBIND function if the [,pollutant] was not commented out.
    #I had hoped originally to only import the pollutant column in order to save memory and increase processing speed.
    #temp_dat <- read.csv(file = files_full[id[i]], header = TRUE)[,pollutant]
    readings <- rbind(read.csv(file = files_full[id[i]], header = TRUE)[,pollutant],readings)
    #print(temp_dat)
    #readings <- rbind(readings,temp_dat)
    dim(readings)
    print(readings)
  }
  sub_readings <- readings#[,pollutant]    #This line subsets the data based on polutant type...  
}