standev<-function(data){
  diffsq <- vector()
  ave <- sum(data)/length(data)
  for(i in 1:length(data)){
    diffsq[i] <- (data[i]-ave)^2    
    } 
  variance <- sum(diffsq)/(length(data)-1)
  stdev <- variance^(1/2) 
  return(stdev)
}

standev(DataA)

  for(i in 1:length(DataA)){
    diffsq <- (DataA[i]-ave)^2    
    diffsqlist <- append(diffsqlist, diffsq)
    } 
  variance <- sum(diffsqlist)/(length(DataA))
  