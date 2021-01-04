require(gdata)

setwd("data")

est03_MN = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_MN = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_MN = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_MN = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_MN = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_MN = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_MN = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_MN = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_MN = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_MN=subset(est03_MN, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_MN=est03_MN[which(est03_MN$Postal == "MN"),]

est03_MN = est03_MN[which(est03_MN$Name != "Minnesota"),]

est03_MN=subset(est03_MN,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_MN$Year=2003

est04_MN=subset(est04_MN, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_MN=est04_MN[which(est04_MN$Postal == "MN"),]

est04_MN = est04_MN[which(est04_MN$Name != "Minnesota"),]

est04_MN=subset(est04_MN,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_MN$Year=2004

est05_MN=subset(est05_MN, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_MN=est05_MN[which(est05_MN$Postal == "MN"),]

est05_MN = est05_MN[which(est05_MN$Name != "Minnesota"),]

est05_MN=subset(est05_MN,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_MN$Year=2005

est06_MN=subset(est06_MN, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_MN=est06_MN[which(est06_MN$Postal == "MN"),]

est06_MN = est06_MN[which(est06_MN$Name != "Minnesota"),]

est06_MN=subset(est06_MN,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_MN$Year=2006

est07_MN=subset(est07_MN, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_MN=est07_MN[which(est07_MN$Postal == "MN"),]

est07_MN = est07_MN[which(est07_MN$Name != "Minnesota"),]

est07_MN=subset(est07_MN,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_MN$Year=2007

est08_MN=subset(est08_MN, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_MN=est08_MN[which(est08_MN$Postal == "MN"),]

est08_MN = est08_MN[which(est08_MN$Name != "Minnesota"),]

est08_MN=subset(est08_MN,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_MN$Year=2008

est09_MN=subset(est09_MN, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_MN=est09_MN[which(est09_MN$Postal == "MN"),]

est09_MN = est09_MN[which(est09_MN$Name != "Minnesota"),]

est09_MN=subset(est09_MN,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_MN$Year=2009

est10_MN=subset(est10_MN, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_MN=est10_MN[which(est10_MN$Postal == "MN"),]

est10_MN = est10_MN[which(est10_MN$Name != "Minnesota"),]

est10_MN=subset(est10_MN,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_MN$Year=2010

est11_MN=subset(est11_MN, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_MN=est11_MN[which(est11_MN$Postal == "MN"),]

est11_MN = est11_MN[which(est11_MN$Name != "Minnesota"),]

est11_MN=subset(est11_MN,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_MN$Year=2011



est_MN=rbind(est06_MN,est07_MN,est08_MN,est09_MN, est03_MN,est04_MN,est05_MN,est10_MN,est11_MN)

est_MN = est_MN[order(est_MN$Year),]

est_MN=rename.vars(data=est_MN, from=c("Name"), to=c("County"))

est_MN$County = toupper(est_MN$County)



fata03_MN=read.xls("Fatalities/2003_2004_By_County/minnesota.xls", header=TRUE)

fata04_MN=read.xls("Fatalities/2003_2004_By_County/minnesota.xls", header=TRUE)

fata05_MN=read.xls("Fatalities/2005_2006_By_County/minnesota.xls", header=TRUE)

fata06_MN=read.xls("Fatalities/2005_2006_By_County/minnesota.xls", header=TRUE)

fata07_MN=read.xls("Fatalities/2006_2007_By_County/Minnesota_06_07.xls", header=TRUE)

fata08_MN=read.xls("Fatalities/2008_2009_By_County/Minnesota_08_09.xls", header=TRUE)

fata09_MN=read.xls("Fatalities/2008_2009_By_County/Minnesota_08_09.xls", header=TRUE)

fata10_MN=read.xls("Fatalities/2010_2011_By_County/Minnesota_10_11.xls", header=TRUE)

fata11_MN=read.xls("Fatalities/2010_2011_By_County/Minnesota_10_11.xls", header=TRUE)

fata03_MN=subset(fata03_MN, select=c("County", "X2003"))

fata03_MN=rename.vars(data=fata03_MN, from=c("X2003"), to=c("Fatalities"))

fata03_MN$Year=2003

fata04_MN=subset(fata04_MN, select=c("County", "X2004"))

fata04_MN=rename.vars(data=fata04_MN, from=c("X2004"), to=c("Fatalities"))

fata04_MN$Year=2004

fata05_MN=subset(fata05_MN, select=c("County", "X2005"))

fata05_MN=rename.vars(data=fata05_MN, from=c("X2005"), to=c("Fatalities"))

fata05_MN$Year=2005

fata06_MN=subset(fata06_MN, select=c("County", "X2006"))

fata06_MN=rename.vars(data=fata06_MN, from=c("X2006"), to=c("Fatalities"))

fata06_MN$Year=2006

fata07_MN=subset(fata07_MN, select=c("County", "X2007"))

fata07_MN=rename.vars(data=fata07_MN, from=c("X2007"), to=c("Fatalities"))

fata07_MN$Year=2007

fata08_MN=subset(fata08_MN, select=c("County", "X2008"))

fata08_MN=rename.vars(data=fata08_MN, from=c("X2008"), to=c("Fatalities"))

fata08_MN$Year=2008

fata09_MN=subset(fata09_MN, select=c("County", "X2009"))

fata09_MN=rename.vars(data=fata09_MN, from=c("X2009"), to=c("Fatalities"))

fata09_MN$Year=2009

fata10_MN=subset(fata10_MN, select=c("County", "X2010"))

fata10_MN=rename.vars(data=fata10_MN, from=c("X2010"), to=c("Fatalities"))

fata10_MN$Year=2010

fata11_MN=subset(fata11_MN, select=c("County", "X2011"))

fata11_MN=rename.vars(data=fata11_MN, from=c("X2011"), to=c("Fatalities"))

fata11_MN$Year=2011





fata_MN=rbind(fata03_MN,fata04_MN,fata05_MN,fata06_MN,fata07_MN,fata08_MN,fata09_MN,fata10_MN,fata11_MN)

fata_MN=subset(fata_MN, County!="NOT APPLICABLE (000)")

fata_MN=subset(fata_MN, County!="OTHER (997)")

fata_MN=subset(fata_MN, County!="UNKNOWN (999)")

fata_MN=subset(fata_MN, County!="Total")

fata_MN = subset(fata_MN, County != "Not Reported")



fata_MN$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_MN$County)

fata_MN$County = paste(fata_MN$County, "County")

fata_MN$County = toupper(fata_MN$County)



fata_MN=subset(fata_MN, Fatalities!="NA")

final_MN = merge(est_MN, fata_MN, by = c("County", "Year"))

final_MN = transform(final_MN, Population = (as.numeric(final_MN$Poverty.Estimate.All.Ages)*100)/as.numeric(final_MN$Poverty.Percent.All.Ages))

final_MN = transform(final_MN, Fatalities.Percent = (as.numeric(final_MN$Fatalities)*100)/as.numeric(final_MN$Population))

final_MN=rename.vars (final_MN, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_MN=rename.vars (final_MN, from="Fatalities.Percent", to="Fatalities Percent")

final_MN=rename.vars (final_MN, from="Fatalities", to="Fatalities Count")

final_MN=rename.vars (final_MN, from="Median.Household.Income", to="Median Income")

final_MN=rename.vars (final_MN, from="Poverty.Percent.All.Ages", to="Poverty Percent")


commute_MN=read.csv("Commute time/Commute_Time_Data.csv")

commute_MN=commute_MN[which(commute_MN$State=="MN"),]

commute_MN=rename.vars(data=commute_MN, from=c("State"), to=c("Postal"))

commute_MN$County = paste(commute_MN$County, "County")

commute_MN$County = toupper(commute_MN$County)

final_MN=merge(final_MN,commute_MN, by = c("Postal", "County"))

final_MN=rename.vars (final_MN, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_MN=subset(final_MN, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_MN,file="MN.csv")
