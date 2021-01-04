setwd("data")

FL=read.csv("FL.csv")
FL$State="Florida"
FL=subset(FL,select=c("County","State","Fatalities.Count"))
FL=aggregate(.~County+State,data=FL,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
FL$County=toupper(FL$County)
dta=merge(FL,data,by=c("County","State"))
write.csv(dta,file="Corr2_FL.csv")