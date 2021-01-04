setwd("data")

NC=read.csv("NC.csv")
NC$State="North Carolina"
NC=subset(NC,select=c("County","State","Fatalities.Percent"))
NC=aggregate(.~County+State,data=NC,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
NC$County=toupper(NC$County)
dta=merge(NC,data,by=c("County","State"))
write.csv(dta,file="Corr_NC.csv")