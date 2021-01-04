setwd("data")

WV=read.csv("WV.csv")
WV$State="West Virginia"
WV=subset(WV,select=c("County","State","Fatalities.Percent"))
WV=aggregate(.~County+State,data=WV,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
WV$County=toupper(WV$County)
dta=merge(WV,data,by=c("County","State"))
write.csv(dta,file="Corr_WV.csv")