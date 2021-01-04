setwd("data")

TN=read.csv("TN.csv")
TN$State="Tennessee"
TN=subset(TN,select=c("County","State","Fatalities.Percent"))
TN=aggregate(.~County+State,data=TN,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
TN$County=toupper(TN$County)
dta=merge(TN,data,by=c("County","State"))
write.csv(dta,file="Corr_TN.csv")