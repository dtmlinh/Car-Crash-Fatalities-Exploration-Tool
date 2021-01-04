setwd("data")

NE=read.csv("NE.csv")
NE$State="Nebraska"
NE=subset(NE,select=c("County","State","Fatalities.Percent"))
NE=aggregate(.~County+State,data=NE,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
NE$County=toupper(NE$County)
dta=merge(NE,data,by=c("County","State"))
write.csv(dta,file="Corr_NE.csv")