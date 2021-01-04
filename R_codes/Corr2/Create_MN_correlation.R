setwd("data")

MN=read.csv("MN.csv")
MN$State="Minnesota"
MN=subset(MN,select=c("County","State","Fatalities.Count"))
MN=aggregate(.~County+State,data=MN,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
MN$County=toupper(MN$County)
dta=merge(MN,data,by=c("County","State"))
write.csv(dta,file="Corr2_MN.csv")