setwd("data")

PA=read.csv("PA.csv")
PA$State="Pennsylvania"
PA=subset(PA,select=c("County","State","Fatalities.Percent"))
PA=aggregate(.~County+State,data=PA,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
PA$County=toupper(PA$County)
dta=merge(PA,data,by=c("County","State"))
write.csv(dta,file="Corr_PA.csv")