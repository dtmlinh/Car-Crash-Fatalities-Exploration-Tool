setwd("data")

IA=read.csv("IA.csv")
IA$State="Iowa"
IA=subset(IA,select=c("County","State","Fatalities.Count"))
IA=aggregate(.~County+State,data=IA,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
IA$County=toupper(IA$County)
dta=merge(IA,data,by=c("County","State"))
write.csv(dta,file="Corr2_IA.csv")