setwd("data")

OK=read.csv("OK.csv")
OK$State="Oklahoma"
OK=subset(OK,select=c("County","State","Fatalities.Count"))
OK=aggregate(.~County+State,data=OK,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
OK$County=toupper(OK$County)
dta=merge(OK,data,by=c("County","State"))
write.csv(dta,file="Corr2_OK.csv")