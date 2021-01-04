setwd("data")

SC=read.csv("SC.csv")
SC$State="South Carolina"
SC=subset(SC,select=c("County","State","Fatalities.Percent"))
SC=aggregate(.~County+State,data=SC,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
SC$County=toupper(SC$County)
dta=merge(SC,data,by=c("County","State"))
write.csv(dta,file="Corr_SC.csv")