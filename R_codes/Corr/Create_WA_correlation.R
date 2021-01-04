setwd("data")

WA=read.csv("WA.csv")
WA$State="Washington"
WA=subset(WA,select=c("County","State","Fatalities.Percent"))
WA=aggregate(.~County+State,data=WA,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
WA$County=toupper(WA$County)
dta=merge(WA,data,by=c("County","State"))
write.csv(dta,file="Corr_WA.csv")