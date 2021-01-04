setwd("data")

MA=read.csv("MA.csv")
MA$State="Massachusetts"
MA=subset(MA,select=c("County","State","Fatalities.Percent"))
MA=aggregate(.~County+State,data=MA,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
MA$County=toupper(MA$County)
dta=merge(MA,data,by=c("County","State"))
write.csv(dta,file="Corr_MA.csv")