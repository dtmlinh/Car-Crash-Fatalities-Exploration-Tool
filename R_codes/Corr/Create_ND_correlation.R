setwd("data")

ND=read.csv("ND.csv")
ND$State="North Dakota"
ND=subset(ND,select=c("County","State","Fatalities.Percent"))
ND=aggregate(.~County+State,data=ND,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
ND$County=toupper(ND$County)
dta=merge(ND,data,by=c("County","State"))
write.csv(dta,file="Corr_ND.csv")