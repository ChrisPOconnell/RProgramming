#WORKING AS OF 08/14/2015.  HOWEVER, SOMETHING WEIRD WITH THE ROW NAME OUTPUT


complete <- function(directory, id = 1:332) {
  ### SAMPLE CODE TO VALIDATE RESULTS
  ### https://d396qusza40orc.cloudfront.net/rprog%2Fdoc%2Fcomplete-demo.html
  
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  files_full <- list.files(path = directory, full.names=TRUE) #List of full files from directory
  total_observations <- length(id)                            #Number of files in directory
  id_list <- list()                                           #List to dump IDs into before cbind
  nobs_list <- list()                                         #List to dump nobs into before cbind
  
  ### DEBUG ###
  #print("total files: " )
  #print(total_observations)
  
  total <- data.frame(id=numeric(0),nobs=numeric(0))
  
  ### DEBUG ###
  #print(summary(total))
  
  i <- 0  #DIM i as While counter.
  
  while(i < total_observations) {
    i <-  i + 1
    temp_dat <- read.csv(file = files_full[id[i]])
    complete_nobs <- complete.cases(temp_dat)
    complete_nobs_sum <- sum(complete_nobs)
    #complete_list <- list(complete_list,complete_nobs_sum))
    
    id_list <- c(id_list,id[i])                     #Populate list with ID numbers based on value of id[i]
    nobs_list <- (c(nobs_list,complete_nobs_sum))   #Populate nobs_list based on value of sum(complete_nobs)

    total <- cbind(id = id_list,nobs = nobs_list)
    
    ### DEBUG ###
    #print(id[i])
    #print(complete_nobs_sum)  

  }

rownames(total) = 1:nrow(total)
print(total)

#print(id_list)
#print(nobs_list)
### DEBUG ###
#print(id_list)
#print(complete_nobs_sum)
}