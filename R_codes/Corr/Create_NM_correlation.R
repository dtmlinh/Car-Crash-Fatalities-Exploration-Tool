setwd("data")

NM=read.csv("NM.csv")
NM$State="New Mexico"
NM=subset(NM,select=c("County","State","Fatalities.Percent"))
NM=aggregate(.~County+State,data=NM,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
NM$County=toupper(NM$County)
dta=merge(NM,data,by=c("County","State"))
write.csv(dta,file="Corr_NM.csv")