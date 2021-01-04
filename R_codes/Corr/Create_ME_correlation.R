setwd("data")

ME=read.csv("ME.csv")
ME$State="Maine"
ME=subset(ME,select=c("County","State","Fatalities.Percent"))
ME=aggregate(.~County+State,data=ME,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
ME$County=toupper(ME$County)
dta=merge(ME,data,by=c("County","State"))
write.csv(dta,file="Corr_ME.csv")