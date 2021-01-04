setwd("data")

TX=read.csv("TX.csv")
TX$State="Texas"
TX=subset(TX,select=c("County","State","Fatalities.Percent"))
TX=aggregate(.~County+State,data=TX,FUN="mean")
data=read.csv("Distance.csv")
data$County=toupper(data$County)
TX$County=toupper(TX$County)
dta=merge(TX,data,by=c("County","State"))
write.csv(dta,file="Corr_TX.csv")