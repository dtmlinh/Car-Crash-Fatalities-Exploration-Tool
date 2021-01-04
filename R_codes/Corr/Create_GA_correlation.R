setwd("data")

GA=read.csv("GA.csv")
GA$State="Georgia"
GA=subset(GA,select=c("County","State","Fatalities.Percent"))
GA=aggregate(.~County+State,data=GA,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
GA$County=toupper(GA$County)
dta=merge(GA,data,by=c("County","State"))
write.csv(dta,file="Corr_GA.csv")