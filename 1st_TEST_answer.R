#(1)答
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

#(2)答
plot(DataA)

#(3)
abline(h=mean(DataA),col="red")
abline(h=median(DataA),col="blue")


#(1)
DataB <- read.csv("trees.csv")
DataB <- na.omit(DataB)
Girth<- DataB$Girth
Height<- DataB$Height
Volume<- DataB$Volume
lr <- lm(Height~Girth+Volume)
summary(lr)
plot(DataB)
