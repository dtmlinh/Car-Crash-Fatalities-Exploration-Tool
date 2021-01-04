setwd("data")

VT=read.csv("VT.csv")
VT$State="Vermont"
VT=subset(VT,select=c("County","State","Fatalities.Percent"))
VT=aggregate(.~County+State,data=VT,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
VT$County=toupper(VT$County)
dta=merge(VT,data,by=c("County","State"))
write.csv(dta,file="Corr_VT.csv")