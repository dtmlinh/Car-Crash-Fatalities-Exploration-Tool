setwd("data")

AZ=read.csv("AZ.csv")
AZ$State="Arizona"
AZ=subset(AZ,select=c("County","State","Fatalities.Count"))
AZ=aggregate(.~County+State,data=AZ,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
AZ$County=toupper(AZ$County)
dta=merge(AZ,data,by=c("County","State"))
write.csv(dta,file="Corr2_AZ.csv")