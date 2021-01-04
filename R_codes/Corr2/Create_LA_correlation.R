setwd("data")

LA=read.csv("LA.csv")
LA$State="Louisiana"
LA=subset(LA,select=c("County","State","Fatalities.Count"))
LA=aggregate(.~County+State,data=LA,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
LA$County=toupper(LA$County)
dta=merge(LA,data,by=c("County","State"))
write.csv(dta,file="Corr2_LA.csv")