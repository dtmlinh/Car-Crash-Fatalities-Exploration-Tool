setwd("data")

KY=read.csv("KY.csv")
KY$State="Kentucky"
KY=subset(KY,select=c("County","State","Fatalities.Count"))
KY=aggregate(.~County+State,data=KY,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
KY$County=toupper(KY$County)
dta=merge(KY,data,by=c("County","State"))
write.csv(dta,file="Corr2_KY.csv")