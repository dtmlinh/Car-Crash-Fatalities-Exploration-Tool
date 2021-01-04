setwd("data")

RI=read.csv("RI.csv")
RI$State="Rhode Island"
RI=subset(RI,select=c("County","State","Fatalities.Percent"))
RI=aggregate(.~County+State,data=RI,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
RI$County=toupper(RI$County)
dta=merge(RI,data,by=c("County","State"))
write.csv(dta,file="Corr_RI.csv")