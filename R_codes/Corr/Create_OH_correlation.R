setwd("data")

OH=read.csv("OH.csv")
OH$State="Ohio"
OH=subset(OH,select=c("County","State","Fatalities.Percent"))
OH=aggregate(.~County+State,data=OH,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
OH$County=toupper(OH$County)
dta=merge(OH,data,by=c("County","State"))
write.csv(dta,file="Corr_OH.csv")