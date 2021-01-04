require(gdata)

setwd("data")

est03_CT = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_CT = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_CT = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_CT = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_CT = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_CT = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_CT = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_CT = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_CT = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_CT=subset(est03_CT, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_CT=est03_CT[which(est03_CT$Postal == "CT"),]

est03_CT = est03_CT[which(est03_CT$Name != "Connecticut"),]

est03_CT=subset(est03_CT,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_CT$Year=2003

est04_CT=subset(est04_CT, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est04_CT=est04_CT[which(est04_CT$Postal == "CT"),]

est04_CT = est04_CT[which(est04_CT$Name != "Connecticut"),]

est04_CT=subset(est04_CT,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_CT$Year=2004

est05_CT=subset(est05_CT, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_CT=est05_CT[which(est05_CT$Postal == "CT"),]

est05_CT = est05_CT[which(est05_CT$Name != "Connecticut"),]

est05_CT=subset(est05_CT,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_CT$Year=2005

est06_CT=subset(est06_CT, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_CT=est06_CT[which(est06_CT$Postal == "CT"),]

est06_CT = est06_CT[which(est06_CT$Name != "Connecticut"),]

est06_CT=subset(est06_CT,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_CT$Year=2006

est07_CT=subset(est07_CT, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_CT=est07_CT[which(est07_CT$Postal == "CT"),]

est07_CT = est07_CT[which(est07_CT$Name != "Connecticut"),]

est07_CT=subset(est07_CT,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_CT$Year=2007

est08_CT=subset(est08_CT, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_CT=est08_CT[which(est08_CT$Postal == "CT"),]

est08_CT = est08_CT[which(est08_CT$Name != "Connecticut"),]

est08_CT=subset(est08_CT,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_CT$Year=2008

est09_CT=subset(est09_CT, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_CT=est09_CT[which(est09_CT$Postal == "CT"),]

est09_CT = est09_CT[which(est09_CT$Name != "Connecticut"),]

est09_CT=subset(est09_CT,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_CT$Year=2009

est10_CT=subset(est10_CT, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_CT=est10_CT[which(est10_CT$Postal == "CT"),]

est10_CT = est10_CT[which(est10_CT$Name != "Connecticut"),]

est10_CT=subset(est10_CT,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_CT$Year=2010

est11_CT=subset(est11_CT, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_CT=est11_CT[which(est11_CT$Postal == "CT"),]

est11_CT = est11_CT[which(est11_CT$Name != "Connecticut"),]

est11_CT=subset(est11_CT,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_CT$Year=2011



est_CT=rbind(est06_CT,est07_CT,est08_CT,est09_CT, est03_CT,est04_CT,est05_CT,est10_CT,est11_CT)

est_CT = est_CT[order(est_CT$Year),]

est_CT=rename.vars(data=est_CT, from=c("Name"), to=c("County"))

est_CT$County = toupper(est_CT$County)



fata03_CT=read.xls("Fatalities/2003_2004_By_County/connecticut.xls", header=TRUE)

fata04_CT=read.xls("Fatalities/2003_2004_By_County/connecticut.xls", header=TRUE)

fata05_CT=read.xls("Fatalities/2005_2006_By_County/connecticut.xls", header=TRUE)

fata06_CT=read.xls("Fatalities/2005_2006_By_County/connecticut.xls", header=TRUE)

fata07_CT=read.xls("Fatalities/2006_2007_By_County/Connecticut_06_07.xls", header=TRUE)

fata08_CT=read.xls("Fatalities/2008_2009_By_County/Connecticut_08_09.xls", header=TRUE)

fata09_CT=read.xls("Fatalities/2008_2009_By_County/Connecticut_08_09.xls", header=TRUE)

fata10_CT=read.xls("Fatalities/2010_2011_By_County/Connecticut_10_11.xls", header=TRUE)

fata11_CT=read.xls("Fatalities/2010_2011_By_County/Connecticut_10_11.xls", header=TRUE)

fata03_CT=subset(fata03_CT, select=c("County", "X2003"))

fata03_CT=rename.vars(data=fata03_CT, from=c("X2003"), to=c("Fatalities"))

fata03_CT$Year=2003

fata04_CT=subset(fata04_CT, select=c("County", "X2004"))

fata04_CT=rename.vars(data=fata04_CT, from=c("X2004"), to=c("Fatalities"))

fata04_CT$Year=2004

fata05_CT=subset(fata05_CT, select=c("County", "X2005"))

fata05_CT=rename.vars(data=fata05_CT, from=c("X2005"), to=c("Fatalities"))

fata05_CT$Year=2005

fata06_CT=subset(fata06_CT, select=c("County", "X2006"))

fata06_CT=rename.vars(data=fata06_CT, from=c("X2006"), to=c("Fatalities"))

fata06_CT$Year=2006

fata07_CT=subset(fata07_CT, select=c("County", "X2007"))

fata07_CT=rename.vars(data=fata07_CT, from=c("X2007"), to=c("Fatalities"))

fata07_CT$Year=2007

fata08_CT=subset(fata08_CT, select=c("County", "X2008"))

fata08_CT=rename.vars(data=fata08_CT, from=c("X2008"), to=c("Fatalities"))

fata08_CT$Year=2008

fata09_CT=subset(fata09_CT, select=c("County", "X2009"))

fata09_CT=rename.vars(data=fata09_CT, from=c("X2009"), to=c("Fatalities"))

fata09_CT$Year=2009

fata10_CT=subset(fata10_CT, select=c("County", "X2010"))

fata10_CT=rename.vars(data=fata10_CT, from=c("X2010"), to=c("Fatalities"))

fata10_CT$Year=2010

fata11_CT=subset(fata11_CT, select=c("County", "X2011"))

fata11_CT=rename.vars(data=fata11_CT, from=c("X2011"), to=c("Fatalities"))

fata11_CT$Year=2011



fata_CT=rbind(fata03_CT,fata04_CT,fata05_CT,fata06_CT,fata07_CT,fata08_CT,fata09_CT,fata10_CT,fata11_CT)

fata_CT=subset(fata_CT, County!="NOT APPLICABLE (000)")

fata_CT=subset(fata_CT, County!="OTHER (997)")

fata_CT=subset(fata_CT, County!="UNKNOWN (999)")

fata_CT=subset(fata_CT, County!="Total")

fata_CT = subset(fata_CT, County != "Not Reported")



fata_CT$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_CT$County)

fata_CT$County = paste(fata_CT$County, "County")

fata_CT$County = toupper(fata_CT$County)



fata_CT=subset(fata_CT, Fatalities!="NA")

final_CT = merge(est_CT, fata_CT, by = c("County", "Year"))

final_CT = transform(final_CT, Population = (as.numeric(final_CT$Poverty.Estimate.All.Ages)*100)/as.numeric(final_CT$Poverty.Percent.All.Ages))

final_CT = transform(final_CT, Fatalities.Percent = (as.numeric(final_CT$Fatalities)*100)/as.numeric(final_CT$Population))

final_CT=rename.vars (final_CT, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_CT=rename.vars (final_CT, from="Fatalities.Percent", to="Fatalities Percent")

final_CT=rename.vars (final_CT, from="Fatalities", to="Fatalities Count")

final_CT=rename.vars (final_CT, from="Median.Household.Income", to="Median Income")

final_CT=rename.vars (final_CT, from="Poverty.Percent.All.Ages", to="Poverty Percent")



commute_CT=read.csv("Commute time/Commute_Time_Data.csv")

commute_CT=commute_CT[which(commute_CT$State=="CT"),]

commute_CT=rename.vars(data=commute_CT, from=c("State"), to=c("Postal"))

commute_CT$County = paste(commute_CT$County, "County")

commute_CT$County = toupper(commute_CT$County)

final_CT=merge(final_CT,commute_CT, by = c("Postal", "County"))

final_CT=rename.vars (final_CT, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_CT=subset(final_CT, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_CT,file="CT.csv")
