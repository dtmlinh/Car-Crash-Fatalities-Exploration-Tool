setwd("data")

MO=read.csv("MO.csv")
MO$State="Missouri"
MO=subset(MO,select=c("County","State","Fatalities.Count"))
MO=aggregate(.~County+State,data=MO,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
MO$County=toupper(MO$County)
dta=merge(MO,data,by=c("County","State"))
write.csv(dta,file="Corr2_MO.csv")