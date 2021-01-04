setwd("data")

CO=read.csv("CO.csv")
CO$State="Colorado"
CO=subset(CO,select=c("County","State","Fatalities.Percent"))
CO=aggregate(.~County+State,data=CO,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
CO$County=toupper(CO$County)
dta=merge(CO,data,by=c("County","State"))
write.csv(dta,file="Corr_CO.csv")