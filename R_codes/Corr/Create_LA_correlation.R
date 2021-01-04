setwd("data")

LA=read.csv("LA.csv")
LA$State="Louisiana"
LA=subset(LA,select=c("County","State","Fatalities.Percent"))
LA=aggregate(.~County+State,data=LA,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
LA$County=toupper(LA$County)
dta=merge(LA,data,by=c("County","State"))
write.csv(dta,file="Corr_LA.csv")