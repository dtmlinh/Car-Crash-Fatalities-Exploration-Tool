setwd("data")

VA=read.csv("VA.csv")
VA$State="Virginia"
VA=subset(VA,select=c("County","State","Fatalities.Percent"))
VA=aggregate(.~County+State,data=VA,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
VA$County=toupper(VA$County)
dta=merge(VA,data,by=c("County","State"))
write.csv(dta,file="Corr_VA.csv")