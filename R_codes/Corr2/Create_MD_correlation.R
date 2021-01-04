setwd("data")

MD=read.csv("MD.csv")
MD$State="Maryland"
MD=subset(MD,select=c("County","State","Fatalities.Count"))
MD=aggregate(.~County+State,data=MD,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
MD$County=toupper(MD$County)
dta=merge(MD,data,by=c("County","State"))
write.csv(dta,file="Corr2_MD.csv")