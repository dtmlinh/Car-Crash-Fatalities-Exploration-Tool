setwd("data")

DE=read.csv("DE.csv")
DE$State="Delaware"
DE=subset(DE,select=c("County","State","Fatalities.Count"))
DE=aggregate(.~County+State,data=DE,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
DE$County=toupper(DE$County)
dta=merge(DE,data,by=c("County","State"))
write.csv(dta,file="Corr2_DE.csv")