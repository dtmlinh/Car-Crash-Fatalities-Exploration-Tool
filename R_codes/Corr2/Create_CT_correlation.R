setwd("data")

CT=read.csv("CT.csv")
CT$State="Connecticut"
CT=subset(CT,select=c("County","State","Fatalities.Count"))
CT=aggregate(.~County+State,data=CT,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
CT$County=toupper(CT$County)
dta=merge(CT,data,by=c("County","State"))
write.csv(dta,file="Corr2_CT.csv")