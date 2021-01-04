setwd("data")

ID=read.csv("ID.csv")
ID$State="Idaho"
ID=subset(ID,select=c("County","State","Fatalities.Count"))
ID=aggregate(.~County+State,data=ID,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
ID$County=toupper(ID$County)
dta=merge(ID,data,by=c("County","State"))
write.csv(dta,file="Corr2_ID.csv")