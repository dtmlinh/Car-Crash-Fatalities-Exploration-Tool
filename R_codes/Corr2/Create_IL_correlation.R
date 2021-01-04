setwd("data")

IL=read.csv("IL.csv")
IL$State="Illinois"
IL=subset(IL,select=c("County","State","Fatalities.Count"))
IL=aggregate(.~County+State,data=IL,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
IL$County=toupper(IL$County)
dta=merge(IL,data,by=c("County","State"))
write.csv(dta,file="Corr2_IL.csv")