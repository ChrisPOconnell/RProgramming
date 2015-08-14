if(id<10) {
  file_name <- paste(directory,"00",id,".csv", sep = "")
  #   file_name
} else if (id<100) {
  file_name <- paste(directory,"0",id,".csv", sep = "")
  #  file_name
}
file_name


#Almost there, 9:00PM 8/13
while(i < x){
  print(id[i])
  if(id[[i]]<10) {
    file_name <- paste(directory,"00",id,".csv", sep = "")
    file_name
  } else if (id[i]<100) {
    file_name <- paste(directory,"0",id,".csv", sep = "")
    file_name
  }
  i <-  i + 1
}