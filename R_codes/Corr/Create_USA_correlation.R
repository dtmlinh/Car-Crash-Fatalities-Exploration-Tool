setwd("data")

USA=read.csv("USA.csv")
USA=subset(USA,select=c("County","Fatalities.Percent"))
USA=aggregate(.~County,data=USA,FUN="mean")
data=read.csv("USA_dist.csv")
dta=merge(USA,data,by=c("County"))
write.csv(dta,file="Corr_USA.csv")
