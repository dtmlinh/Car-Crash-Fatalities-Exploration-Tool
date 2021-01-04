require(gdata)

setwd("data")

est03=read.xls("Poverty rate/est03ALL.xls", header=TRUE)
est04=read.xls("Poverty rate/est04ALL.xls", header=TRUE)  
est05=read.xls("Poverty rate/est05ALL.xls", header=TRUE)
est06=read.xls("Poverty rate/est06ALL.xls", header=TRUE)
est07=read.xls("Poverty rate/est07ALL.xls", header=TRUE)
est08=read.xls("Poverty rate/est08ALL.xls", header=TRUE)
est09=read.xls("Poverty rate/est09ALL.xls", header=TRUE)
est10=read.xls("Poverty rate/est10ALL.xls", header=TRUE)
est11=read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03=subset(est03, select=c("Name","County.FIPS", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))
est03=est03[which(est03$County.FIPS=="0"),]
est03=subset(est03,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))
est03$Year=2003

est04=subset(est04, select=c("Name","County.FIPS", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))
est04=est04[which(est04$County.FIPS=="0"),]
est04=subset(est04,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))
est04$Year=2004

est05=subset(est05, select=c("Name","County.FIPS", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))
est05=est05[which(est05$County.FIPS=="0"),]
est05=subset(est05,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))
est05$Year=2005

est06=subset(est06, select=c("Name","County.FIPS", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))
est06=est06[which(est06$County.FIPS=="0"),]
est06=subset(est06,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))
est06$Year=2006

est07=subset(est07, select=c("Name","County.FIPS", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))
est07=est07[which(est07$County.FIPS=="0"),]
est07=subset(est07,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))
est07$Year=2007

est08=subset(est08, select=c("Name","County.FIPS", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))
est08=est08[which(est08$County.FIPS=="0"),]
est08=subset(est08,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))
est08$Year=2008

est09=subset(est09, select=c("Name","County.FIPS", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))
est09=est09[which(est09$County.FIPS=="0"),]
est09=subset(est09,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))
est09$Year=2009

est10=subset(est10, select=c("Name","County.FIPS", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))
est10=est10[which(est10$County.FIPS=="0"),]
est10=subset(est10,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))
est10$Year=2010

est11=subset(est11, select=c("Name","County.FIPS", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))
est11=est11[which(est11$County.FIPS=="0"),]
est11=subset(est11,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))
est11$Year=2011

est=rbind(est03,est04,est05,est06,est07,est08,est09,est10,est11)
est=subset(est, Postal!="United States")
est=rename.vars(data=est,from="Postal", to="State")

fata03=read.xls("Fatalities/2003_2004_By_County/all.xls", header=TRUE)
fata04=read.xls("Fatalities/2003_2004_By_County/all.xls", header=TRUE)  
fata05=read.xls("Fatalities/2005_2006_By_County/all.xls", header=TRUE)
fata06=read.xls("Fatalities/2005_2006_By_County/all.xls", header=TRUE)
fata07=read.xls("Fatalities/2006_2007_By_County/All_06_07.xls", header=TRUE)
fata08=read.xls("Fatalities/2008_2009_By_County/All_08_09.xls", header=TRUE)
fata09=read.xls("Fatalities/2008_2009_By_County/All_08_09.xls", header=TRUE)
fata10=read.xls("Fatalities/2010_2011_By_County/All_10_11.xls", header=TRUE)
fata11=read.xls("Fatalities/2010_2011_By_County/All_10_11.xls", header=TRUE)

fata03=subset(fata03, select=c("State", "X2003"))
fata03=rename.vars(data=fata03, from=c("X2003"), to=c("Fatalities"))
fata03$Year=2003

fata04=subset(fata04, select=c("State", "X2004"))
fata04=rename.vars(data=fata04, from=c("X2004"), to=c("Fatalities"))
fata04$Year=2004

fata05=subset(fata05, select=c("State", "X2005"))
fata05=rename.vars(data=fata05, from=c("X2005"), to=c("Fatalities"))
fata05$Year=2005

fata06=subset(fata06, select=c("State", "X2006"))
fata06=rename.vars(data=fata06, from=c("X2006"), to=c("Fatalities"))
fata06$Year=2006

fata07=subset(fata07, select=c("State", "X2007"))
fata07=rename.vars(data=fata07, from=c("X2007"), to=c("Fatalities"))
fata07$Year=2007

fata08=subset(fata08, select=c("State", "X2008"))
fata08=rename.vars(data=fata08, from=c("X2008"), to=c("Fatalities"))
fata08$Year=2008

fata09=subset(fata09, select=c("State", "X2009"))
fata09=rename.vars(data=fata09, from=c("X2009"), to=c("Fatalities"))
fata09$Year=2009

fata10=subset(fata10, select=c("State", "X2010"))
fata10=rename.vars(data=fata10, from=c("X2010"), to=c("Fatalities"))
fata10$Year=2010

fata11=subset(fata11, select=c("State", "X2011"))
fata11=rename.vars(data=fata11, from=c("X2011"), to=c("Fatalities"))
fata11$Year=2011

fata=rbind(fata03,fata04,fata05,fata06,fata07,fata08,fata09,fata10,fata11)
fata=subset(fata, State!="USA")

final_USA = merge(est, fata, by = c("State", "Year"))
final_USA = transform(final_USA, Population = (as.numeric(final_USA$Poverty.Estimate.All.Ages)*100)/as.numeric(final_USA$Poverty.Percent.All.Ages))
final_USA = transform(final_USA, Fatalities.Percent = (as.numeric(final_USA$Fatalities)*100)/as.numeric(final_USA$Population))
final_USA=rename.vars (final_USA, from="Poverty.Estimate.All.Ages", to="Poverty Count")
final_USA=rename.vars (final_USA, from="Fatalities.Percent", to="Fatalities Percent")
final_USA=rename.vars (final_USA, from="Fatalities", to="Fatalities Count")
final_USA=rename.vars (final_USA, from="Median.Household.Income", to="Median Income")
final_USA=rename.vars (final_USA, from="Poverty.Percent.All.Ages", to="Poverty Percent")

commute=read.csv("Commute time/Commute_Time_Data.csv")
commute=commute[which(commute$County=="State"),]

final_USA=merge(final_USA,commute, by = c("State"))
final_USA=rename.vars (final_USA, from=c("Avg.Commute"), to=c("Commute"))
final_USA=subset(final_USA, select=c("State","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))
final_USA=rename.vars(final_USA, from="State", to="County")
write.csv(final_USA,file="USA.csv")
