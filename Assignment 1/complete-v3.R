#Combination of Chris and David's functions, shows the comparison.
complete <- function(directory, id = 1:332) {
  
  #SAMPLE COMMAND
  #complete("C:/Users/chris_000/Documents/GitHub/specdata/",22:26)
  #id nobs
  #1 21 426
  #2 22 135
  #3 23 492
  #4 24 885
  #5 25 463
  #6 26 586
  
  
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
  
  #column_count <- 1:2
  #total <- data.frame(id = numeric(0), nobs=numeric(0))
  total <- data.frame(id=numeric(0),nobs=numeric(0))
  final <- data.frame() #David's data frame.
  
  ### DEBUG ###
  #print(summary(total))
  
  i <- 0
  
  while(i < total_observations) {
    i <-  i + 1
    
    #This matches david's template function:
    temp_dat <- read.csv(file = files_full[id[i]])
    temp_complete <- temp_dat[complete.cases(temp_dat),] #a little confused by this.  Last comma needed?
    semi_final <- data.frame(table(temp_complete$ID)) #not following this either... just ID number?
    final <- rbind(final,semi_final)
    
    
    complete_nobs <- complete.cases(temp_dat)
    complete_nobs_sum <- sum(complete_nobs)
    #complete_list <- list(complete_list,complete_nobs_sum))
    
    id_list <- c(id_list,id[i])
    nobs_list <- (c(nobs_list,complete_nobs_sum))
    
    total <- cbind(id = id_list,nobs = nobs_list)
    
    ### DEBUG ###
    #print(id[i])
    #print(complete_nobs_sum)  
    
  }
  print(total)
  final  #print(id_list)
  #print(nobs_list)
  ### DEBUG ###
  #print(id_list)
  #print(complete_nobs_sum)
}