setwd("data")

UT=read.csv("UT.csv")
UT$State="Utah"
UT=subset(UT,select=c("County","State","Fatalities.Count"))
UT=aggregate(.~County+State,data=UT,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
UT$County=toupper(UT$County)
dta=merge(UT,data,by=c("County","State"))
write.csv(dta,file="Corr2_UT.csv")