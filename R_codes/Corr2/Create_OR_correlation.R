setwd("data")

OR=read.csv("OR.csv")
OR$State="Oregon"
OR=subset(OR,select=c("County","State","Fatalities.Count"))
OR=aggregate(.~County+State,data=OR,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
OR$County=toupper(OR$County)
dta=merge(OR,data,by=c("County","State"))
write.csv(dta,file="Corr2_OR.csv")