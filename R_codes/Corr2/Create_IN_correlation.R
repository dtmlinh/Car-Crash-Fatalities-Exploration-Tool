setwd("data")

IN=read.csv("IN.csv")
IN$State="Indiana"
IN=subset(IN,select=c("County","State","Fatalities.Count"))
IN=aggregate(.~County+State,data=IN,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
IN$County=toupper(IN$County)
dta=merge(IN,data,by=c("County","State"))
write.csv(dta,file="Corr2_IN.csv")