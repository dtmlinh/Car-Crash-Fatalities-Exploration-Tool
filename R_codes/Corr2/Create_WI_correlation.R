setwd("data")

WI=read.csv("WI.csv")
WI$State="Wisconsin"
WI=subset(WI,select=c("County","State","Fatalities.Count"))
WI=aggregate(.~County+State,data=WI,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
WI$County=toupper(WI$County)
dta=merge(WI,data,by=c("County","State"))
write.csv(dta,file="Corr2_WI.csv")