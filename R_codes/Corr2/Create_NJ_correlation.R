setwd("data")

NJ=read.csv("NJ.csv")
NJ$State="New Jersey"
NJ=subset(NJ,select=c("County","State","Fatalities.Count"))
NJ=aggregate(.~County+State,data=NJ,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
NJ$County=toupper(NJ$County)
dta=merge(NJ,data,by=c("County","State"))
write.csv(dta,file="Corr2_NJ.csv")