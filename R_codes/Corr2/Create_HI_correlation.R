setwd("data")

HI=read.csv("HI.csv")
HI$State="Hawaii"
HI=subset(HI,select=c("County","State","Fatalities.Count"))
HI=aggregate(.~County+State,data=HI,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
HI$County=toupper(HI$County)
dta=merge(HI,data,by=c("County","State"))
write.csv(dta,file="Corr2_HI.csv")