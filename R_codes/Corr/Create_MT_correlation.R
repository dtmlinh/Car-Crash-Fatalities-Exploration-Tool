setwd("data")

MT=read.csv("MT.csv")
MT$State="Montana"
MT=subset(MT,select=c("County","State","Fatalities.Percent"))
MT=aggregate(.~County+State,data=MT,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
MT$County=toupper(MT$County)
dta=merge(MT,data,by=c("County","State"))
write.csv(dta,file="Corr_MT.csv")