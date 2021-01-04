setwd("data")

AR=read.csv("AR.csv")
AR$State="Arkansas"
AR=subset(AR,select=c("County","State","Fatalities.Count"))
AR=aggregate(.~County+State,data=AR,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
AR$County=toupper(AR$County)
dta=merge(AR,data,by=c("County","State"))
write.csv(dta,file="Corr2_AR.csv")