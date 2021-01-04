setwd("data")

SD=read.csv("SD.csv")
SD$State="South Dakota"
SD=subset(SD,select=c("County","State","Fatalities.Percent"))
SD=aggregate(.~County+State,data=SD,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
SD$County=toupper(SD$County)
dta=merge(SD,data,by=c("County","State"))
write.csv(dta,file="Corr_SD.csv")