require(gdata)

setwd("data")

acc_2003=read.csv("Fatalities/acc_2003.csv",header=T)
acc_2004=read.csv("Fatalities/acc_2004.csv",header=T)
acc_2005=read.csv("Fatalities/acc_2005.csv",header=T)
acc_2006=read.csv("Fatalities/acc_2006.csv",header=T)
acc_2007=read.csv("Fatalities/acc_2007.csv",header=T)
acc_2008=read.csv("Fatalities/acc_2008.csv",header=T)
acc_2009=read.csv("Fatalities/acc_2009.csv",header=T)
acc_2010=read.csv("Fatalities/acc_2010.csv",header=T)
acc_2011=read.csv("Fatalities/acc_2011.csv",header=T)

acc_full=rbind(acc_2003,acc_2004,acc_2005,acc_2006,acc_2007,acc_2008,acc_2009,acc_2010,acc_2011)
acc_full=na.omit(acc_full)
acc_full=acc_full[which(acc_full$LONGITUDE<200),]
acc_full$COUNTY=sprintf("%03d", acc_full$COUNTY)
acc_full$FIPS.C.5=paste(acc_full$STATE,acc_full$COUNTY, sep="")
acc_full$FIPS.C.5=as.numeric(acc_full$FIPS.C.5)

county=read.csv("Distance/county.csv")
county=subset(county, select=c("NAME.C.32","FIPS.C.5","STATE_NAME.C.35"))

acc_full=merge(acc_full, county, by="FIPS.C.5")
acc_full=rename.vars(acc_full, from=c("STATE_NAME.C.35","NAME.C.32"), to=c("State","County"))
acc_full$County = paste(acc_full$County, "County")
acc_full$County = as.factor(acc_full$County)

write.csv(acc_full,file="acc_full.csv")  
  