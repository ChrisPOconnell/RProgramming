pollutantmean <- function(directory, pollutant, id = 1:332) {
#SAMPLE COMMAND
#pollutantmean("C:/Users/chris_000/Documents/GitHub/specdata/","nitrate",70:72)

    
  #directory <- "C:/Users/ChrisP/Documents/GitHub/specdata"       #SURFACE PRO 3
  #directory <-  "C:/Users/chris_000/Documents/GitHub/specdata/"  #e6430
  
#Pulls a list of files into files_full.  Will later be referenced by counter i in while loop.
  
files_full <- list.files(path = directory, full.names=TRUE) #by the way, this is sloppy code
                                                            #Only because the files are in sequential order does this work.
                                                            #what would happen if someone removed file 002?  
                                                            #reference pointers to files_ful[id[2]] would actually equal file 003.
                                                            #String manipulation with if/else would be better.
  
#Code to set up While loop counters/variables.
  i <- 0            #Set counter position
  #x <- length(id)  #Originally this was goin to be used in while loop, while(i < x).  Found out
                    #length(id) would work, so no need for an additional variable.
  
  readings <- data.frame()  #the readings from our observation files.
  print(readings)
  while(i < length(id)) {
    i <-  i + 1
    
    #The following [,pollutant] filter introduced major errors during the RBIND function.
    #I had hoped originally to only import the pollutant column in order to save memory and increase processing speed.
    temp_dat <- read.csv(file = files_full[id[i]], header = TRUE)#[,pollutant]
    readings <- rbind(readings,temp_dat)
  }
  sub_readings <- readings[,pollutant]    #This line subsets the data based on polutant type...  
                                          #Less processing and memory would be required if this filter 
                                          #could be applied during read.csv.
  
  mean(sub_readings,na.rm = TRUE)         #I'm not super pleased with the way this turned out either.  I would like 
                                          #to find another way to get these na values out.
}