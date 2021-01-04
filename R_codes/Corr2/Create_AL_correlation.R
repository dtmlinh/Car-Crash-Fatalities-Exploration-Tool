setwd("data")

AL=read.csv("AL.csv")
AL$State="Alabama"
AL=subset(AL,select=c("County","State","Fatalities.Count"))
AL=aggregate(.~County+State,data=AL,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
AL$County=toupper(AL$County)
dta=merge(AL,data,by=c("County","State"))
write.csv(dta,file="Corr2_AL.csv")