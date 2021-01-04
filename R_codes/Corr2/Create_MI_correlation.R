setwd("data")

MI=read.csv("MI.csv")
MI$State="Michigan"
MI=subset(MI,select=c("County","State","Fatalities.Count"))
MI=aggregate(.~County+State,data=MI,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
MI$County=toupper(MI$County)
dta=merge(MI,data,by=c("County","State"))
write.csv(dta,file="Corr2_MI.csv")