setwd("data")

NV=read.csv("NV.csv")
NV$State="Nevada"
NV=subset(NV,select=c("County","State","Fatalities.Percent"))
NV=aggregate(.~County+State,data=NV,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
NV$County=toupper(NV$County)
dta=merge(NV,data,by=c("County","State"))
write.csv(dta,file="Corr_NV.csv")