setwd("C:\\Users\\it24103633\\Desktop\\Lab 05-IT24103633")

#import the table
data<-read.table("Data.txt",header = TRUE,sep=",")

#go to editor mode
fix(data)

names(data)<-c("X1","X2")

#attach the updated table into R
attach(data)

#hist use for the obtain of.....
hist(X2,main = "Histogram for Number of Shareholders")

histogram<-hist(X2,main="Histogram for Number of Shareholders",breaks=seq(130,270,length=8),right=FALSE)

#class limits
breaks<-round(histogram$breaks)
#like items of a bar
freq<-histogram$counts
#get the mid values  of graphs
mids<-histogram$mids

#create a vector to store values from for loop ..
classes<- c()


for(i in 1:length(breaks)-1){
  classes[i]<-paste0("[",breaks[i],",",breaks[i+1],")")
}

cbind(Classes=classes,Frequency=freq)

#to draw the polygen
lines(mids,freq)

#to get a freq polygen
plot(mids,freq,type='l',main="Frequancy polygen for Shareholders",xlab="Shareholders",ylab = "Frequancy",ylim = c(0,max(freq)))

#freq+prev freq
cum.freq<-cumsum(freq)

new<-c()

for(i in 1:length(breaks)){
  if(i==1){
    new[i]=0
  }else{
  new[i]=cum.freq[i-1]
  }
}

plot(breaks,new,type = 'l',main="Cumalative Freqancy Polygen for Shareholders",xlab="Shareholders",ylab="cumalative frequancy",ylim=c(0,max(cum.freq)))
cbind(Upper=breaks,Cumfreq=new)