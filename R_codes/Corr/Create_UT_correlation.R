setwd("data")

UT=read.csv("UT.csv")
UT$State="Utah"
UT=subset(UT,select=c("County","State","Fatalities.Percent"))
UT=aggregate(.~County+State,data=UT,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
UT$County=toupper(UT$County)
dta=merge(UT,data,by=c("County","State"))
write.csv(dta,file="Corr_UT.csv")