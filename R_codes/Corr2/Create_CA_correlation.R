setwd("data")

CA=read.csv("CA.csv")
CA$State="California"
CA=subset(CA,select=c("County","State","Fatalities.Count"))
CA=aggregate(.~County+State,data=CA,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
CA$County=toupper(CA$County)
dta=merge(CA,data,by=c("County","State"))
write.csv(dta,file="Corr2_CA.csv")