setwd("data")

MS=read.csv("MS.csv")
MS$State="Mississippi"
MS=subset(MS,select=c("County","State","Fatalities.Percent"))
MS=aggregate(.~County+State,data=MS,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
MS$County=toupper(MS$County)
dta=merge(MS,data,by=c("County","State"))
write.csv(dta,file="Corr_MS.csv")