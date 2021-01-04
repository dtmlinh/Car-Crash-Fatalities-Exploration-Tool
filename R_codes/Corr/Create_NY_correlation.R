setwd("data")

NY=read.csv("NY.csv")
NY$State="New York"
NY=subset(NY,select=c("County","State","Fatalities.Percent"))
NY=aggregate(.~County+State,data=NY,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
NY$County=toupper(NY$County)
dta=merge(NY,data,by=c("County","State"))
write.csv(dta,file="Corr_NY.csv")