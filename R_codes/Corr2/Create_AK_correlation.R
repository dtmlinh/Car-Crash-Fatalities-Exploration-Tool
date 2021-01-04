setwd("data")

AK=read.csv("AK.csv")
AK$State="Alaska"
AK=subset(AK,select=c("County","State","Fatalities.Count"))
AK=aggregate(.~County+State,data=AK,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
AK$County=toupper(AK$County)
dta=merge(AK,data,by=c("County","State"))
write.csv(dta,file="Corr2_AK.csv")