setwd("data")

NH=read.csv("NH.csv")
NH$State="New Hampshire"
NH=subset(NH,select=c("County","State","Fatalities.Count"))
NH=aggregate(.~County+State,data=NH,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
NH$County=toupper(NH$County)
dta=merge(NH,data,by=c("County","State"))
write.csv(dta,file="Corr2_NH.csv")