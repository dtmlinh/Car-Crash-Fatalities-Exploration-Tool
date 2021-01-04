setwd("data")

KS=read.csv("KS.csv")
KS$State="Kansas"
KS=subset(KS,select=c("County","State","Fatalities.Count"))
KS=aggregate(.~County+State,data=KS,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
KS$County=toupper(KS$County)
dta=merge(KS,data,by=c("County","State"))
write.csv(dta,file="Corr2_KS.csv")