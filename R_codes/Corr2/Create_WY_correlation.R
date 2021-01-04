setwd("data")

WY=read.csv("WY.csv")
WY$State="Wyoming"
WY=subset(WY,select=c("County","State","Fatalities.Count"))
WY=aggregate(.~County+State,data=WY,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
WY$County=toupper(WY$County)
dta=merge(WY,data,by=c("County","State"))
write.csv(dta,file="Corr2_WY.csv")