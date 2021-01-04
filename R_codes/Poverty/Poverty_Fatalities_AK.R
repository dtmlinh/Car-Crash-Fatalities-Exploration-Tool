require(gdata)

setwd("data")

est03_AK = read.xls("Poverty rate/est03ALL.xls", header=TRUE)
est04_AK = read.xls("Poverty rate/est04ALL.xls", header=TRUE)
est05_AK = read.xls("Poverty rate/est05ALL.xls", header=TRUE)
est06_AK = read.xls("Poverty rate/est06ALL.xls", header=TRUE)
est07_AK = read.xls("Poverty rate/est07ALL.xls", header=TRUE)
est08_AK = read.xls("Poverty rate/est08ALL.xls", header=TRUE)
est09_AK = read.xls("Poverty rate/est09ALL.xls", header=TRUE)
est10_AK = read.xls("Poverty rate/est10ALL.xls", header=TRUE)
est11_AK = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_AK=subset(est03_AK, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))
est03_AK=est03_AK[which(est03_AK$Postal == "AK"),]
est03_AK = est03_AK[which(est03_AK$Name != "Alaska"),]
est03_AK=subset(est03_AK,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))
est03_AK$Year=2003

est04_AK=subset(est04_AK, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))
est04_AK=est04_AK[which(est04_AK$Postal == "AK"),]
est04_AK = est04_AK[which(est04_AK$Name != "Alaska"),]
est04_AK=subset(est04_AK,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))
est04_AK$Year=2004

est05_AK=subset(est05_AK, select=c("Name", "County.FIPS", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))
est05_AK=est05_AK[which(est05_AK$Postal == "AK"),]
est05_AK = est05_AK[which(est05_AK$Name != "Alaska"),]
est05_AK=subset(est05_AK,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))
est05_AK$Year=2005

est06_AK=subset(est06_AK, select=c("Name", "County.FIPS", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))
est06_AK=est06_AK[which(est06_AK$Postal == "AK"),]
est06_AK = est06_AK[which(est06_AK$Name != "Alaska"),]
est06_AK=subset(est06_AK,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))
est06_AK$Year=2006

est07_AK=subset(est07_AK, select=c("Name", "County.FIPS", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))
est07_AK=est07_AK[which(est07_AK$Postal == "AK"),]
est07_AK = est07_AK[which(est07_AK$Name != "Alaska"),]
est07_AK=subset(est07_AK,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))
est07_AK$Year=2007

est08_AK=subset(est08_AK, select=c("Name", "County.FIPS", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))
est08_AK=est08_AK[which(est08_AK$Postal == "AK"),]
est08_AK = est08_AK[which(est08_AK$Name != "Alaska"),]
est08_AK=subset(est08_AK,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))
est08_AK$Year=2008

est09_AK=subset(est09_AK, select=c("Name", "County.FIPS", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))
est09_AK=est09_AK[which(est09_AK$Postal == "AK"),]
est09_AK = est09_AK[which(est09_AK$Name != "Alaska"),]
est09_AK=subset(est09_AK,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))
est09_AK$Year=2009

est10_AK=subset(est10_AK, select=c("Name", "County.FIPS", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))
est10_AK=est10_AK[which(est10_AK$Postal == "AK"),]
est10_AK = est10_AK[which(est10_AK$Name != "Alaska"),]
est10_AK=subset(est10_AK,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))
est10_AK$Year=2010

est11_AK=subset(est11_AK, select=c("Name", "County.FIPS", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))
est11_AK=est11_AK[which(est11_AK$Postal == "AK"),]
est11_AK = est11_AK[which(est11_AK$Name != "Alaska"),]
est11_AK=subset(est11_AK,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages","Median.Household.Income", "Postal"))
est11_AK$Year=2011

est_AK=rbind(est06_AK,est07_AK,est08_AK,est09_AK,est03_AK,est04_AK,est05_AK,est10_AK,est11_AK)
est_AK = est_AK[order(est_AK$Year),]
est_AK=rename.vars(data=est_AK, from=c("Name"), to=c("County"))
est_AK$County= gsub(" Borough", "", est_AK$County)
est_AK$County= gsub(" Census Area", "", est_AK$County)
est_AK$County = toupper(est_AK$County)

fata03_AK=read.xls("Fatalities/2003_2004_By_County/alaska.xls", header=TRUE)
fata04_AK=read.xls("Fatalities/2003_2004_By_County/alaska.xls", header=TRUE)
fata05_AK=read.xls("Fatalities/2005_2006_By_County/alaska.xls", header=TRUE)
fata06_AK=read.xls("Fatalities/2005_2006_By_County/alaska.xls", header=TRUE)
fata07_AK=read.xls("Fatalities/2006_2007_By_County/Alaska_06_07.xls", header=TRUE)
fata08_AK=read.xls("Fatalities/2008_2009_By_County/Alaska_08_09.xls", header=TRUE)
fata09_AK=read.xls("Fatalities/2008_2009_By_County/Alaska_08_09.xls", header=TRUE)
fata10_AK=read.xls("Fatalities/2010_2011_By_County/Alaska_10_11.xls", header=TRUE)
fata11_AK=read.xls("Fatalities/2010_2011_By_County/Alaska_10_11.xls", header=TRUE)

fata03_AK=subset(fata03_AK, select=c("County", "X2003"))
fata03_AK=rename.vars(data=fata03_AK, from=c("X2003"), to=c("Fatalities"))
fata03_AK$Year=2003

fata04_AK=subset(fata04_AK, select=c("County", "X2004"))
fata04_AK=rename.vars(data=fata04_AK, from=c("X2004"), to=c("Fatalities"))
fata04_AK$Year=2004

fata05_AK=subset(fata05_AK, select=c("County", "X2005"))
fata05_AK=rename.vars(data=fata05_AK, from=c("X2005"), to=c("Fatalities"))
fata05_AK$Year=2005

fata06_AK=subset(fata06_AK, select=c("County", "X2006"))
fata06_AK=rename.vars(data=fata06_AK, from=c("X2006"), to=c("Fatalities"))
fata06_AK$Year=2006

fata07_AK=subset(fata07_AK, select=c("County", "X2007"))
fata07_AK=rename.vars(data=fata07_AK, from=c("X2007"), to=c("Fatalities"))
fata07_AK$Year=2007

fata08_AK=subset(fata08_AK, select=c("County", "X2008"))
fata08_AK=rename.vars(data=fata08_AK, from=c("X2008"), to=c("Fatalities"))
fata08_AK$Year=2008

fata09_AK=subset(fata09_AK, select=c("County", "X2009"))
fata09_AK=rename.vars(data=fata09_AK, from=c("X2009"), to=c("Fatalities"))
fata09_AK$Year=2009

fata10_AK=subset(fata10_AK, select=c("County", "X2010"))
fata10_AK=rename.vars(data=fata10_AK, from=c("X2010"), to=c("Fatalities"))
fata10_AK$Year=2010

fata11_AK=subset(fata11_AK, select=c("County", "X2011"))
fata11_AK=rename.vars(data=fata11_AK, from=c("X2011"), to=c("Fatalities"))
fata11_AK$Year=2011

fata_AK=rbind(fata03_AK,fata04_AK,fata05_AK,fata06_AK,fata07_AK,fata08_AK,fata09_AK,fata10_AK,fata11_AK)
fata_AK=subset(fata_AK, County!="NOT APPLICABLE (000)")
fata_AK=subset(fata_AK, County!="OTHER (997)")
fata_AK=subset(fata_AK, County!="UNKNOWN (999)")
fata_AK=subset(fata_AK, County!="Total")
fata_AK = subset(fata_AK, County != "Not Reported")
fata_AK$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_AK$County)
fata_AK$County = toupper(fata_AK$County)
fata_AK=subset(fata_AK, Fatalities!="NA")

final_AK = merge(est_AK, fata_AK, by = c("County", "Year"))
final_AK = transform(final_AK, Population = (final_AK$Poverty.Estimate.All.Ages*100)/final_AK$Poverty.Percent.All.Ages)
final_AK = transform(final_AK, Fatalities.Percent = (final_AK$Fatalities*100)/final_AK$Population)
final_AK=rename.vars (final_AK, from="Poverty.Estimate.All.Ages", to="Poverty Count")
final_AK=rename.vars (final_AK, from="Fatalities.Percent", to="Fatalities Percent")
final_AK=rename.vars (final_AK, from="Fatalities", to="Fatalities Count")
final_AK=rename.vars (final_AK, from="Median.Household.Income", to="Median Income")
final_AK=rename.vars (final_AK, from="Poverty.Percent.All.Ages", to="Poverty Percent")

commute_AK=read.csv("Commute time/Commute_Time_Data.csv")
commute_AK=commute_AK[which(commute_AK$State=="AK"),]
commute_AK=rename.vars(data=commute_AK, from=c("State"), to=c("Postal"))
commute_AK$County = toupper(commute_AK$County)

final_AK=merge(final_AK,commute_AK, by = c("Postal", "County"))
final_AK=rename.vars (final_AK, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))
final_AK=subset(final_AK, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))
final_AK$County = paste(final_AK$County, "County")

write.csv(final_AK,file="AK.csv")
