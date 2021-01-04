require(gdata)

setwd("data")

est03_AZ = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_AZ = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_AZ = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_AZ = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_AZ = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_AZ = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_AZ = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_AZ = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_AZ = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_AZ=subset(est03_AZ, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_AZ=est03_AZ[which(est03_AZ$Postal == "AZ"),]

est03_AZ = est03_AZ[which(est03_AZ$Name != "Arizona"),]

est03_AZ=subset(est03_AZ,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_AZ$Year=2003

est04_AZ=subset(est04_AZ, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_AZ=est04_AZ[which(est04_AZ$Postal == "AZ"),]

est04_AZ = est04_AZ[which(est04_AZ$Name != "Arizona"),]

est04_AZ=subset(est04_AZ,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_AZ$Year=2004

est05_AZ=subset(est05_AZ, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_AZ=est05_AZ[which(est05_AZ$Postal == "AZ"),]

est05_AZ = est05_AZ[which(est05_AZ$Name != "Arizona"),]

est05_AZ=subset(est05_AZ,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_AZ$Year=2005

est06_AZ=subset(est06_AZ, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_AZ=est06_AZ[which(est06_AZ$Postal == "AZ"),]

est06_AZ = est06_AZ[which(est06_AZ$Name != "Arizona"),]

est06_AZ=subset(est06_AZ,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_AZ$Year=2006

est07_AZ=subset(est07_AZ, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_AZ=est07_AZ[which(est07_AZ$Postal == "AZ"),]

est07_AZ = est07_AZ[which(est07_AZ$Name != "Arizona"),]

est07_AZ=subset(est07_AZ,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_AZ$Year=2007

est08_AZ=subset(est08_AZ, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_AZ=est08_AZ[which(est08_AZ$Postal == "AZ"),]

est08_AZ = est08_AZ[which(est08_AZ$Name != "Arizona"),]

est08_AZ=subset(est08_AZ,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_AZ$Year=2008

est09_AZ=subset(est09_AZ, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_AZ=est09_AZ[which(est09_AZ$Postal == "AZ"),]

est09_AZ = est09_AZ[which(est09_AZ$Name != "Arizona"),]

est09_AZ=subset(est09_AZ,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_AZ$Year=2009

est10_AZ=subset(est10_AZ, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_AZ=est10_AZ[which(est10_AZ$Postal == "AZ"),]

est10_AZ = est10_AZ[which(est10_AZ$Name != "Arizona"),]

est10_AZ=subset(est10_AZ,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_AZ$Year=2010

est11_AZ=subset(est11_AZ, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_AZ=est11_AZ[which(est11_AZ$Postal == "AZ"),]

est11_AZ = est11_AZ[which(est11_AZ$Name != "Arizona"),]

est11_AZ=subset(est11_AZ,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_AZ$Year=2011



est_AZ=rbind(est06_AZ,est07_AZ,est08_AZ,est09_AZ, est03_AZ,est04_AZ,est05_AZ,est10_AZ,est11_AZ)

est_AZ = est_AZ[order(est_AZ$Year),]

est_AZ=rename.vars(data=est_AZ, from=c("Name"), to=c("County"))

est_AZ$County = toupper(est_AZ$County)



fata03_AZ=read.xls("Fatalities/2003_2004_By_County/arizona.xls", header=TRUE)

fata04_AZ=read.xls("Fatalities/2003_2004_By_County/arizona.xls", header=TRUE)

fata05_AZ=read.xls("Fatalities/2005_2006_By_County/arizona.xls", header=TRUE)

fata06_AZ=read.xls("Fatalities/2005_2006_By_County/arizona.xls", header=TRUE)

fata07_AZ=read.xls("Fatalities/2006_2007_By_County/Arizona_06_07.xls", header=TRUE)

fata08_AZ=read.xls("Fatalities/2008_2009_By_County/Arizona_08_09.xls", header=TRUE)

fata09_AZ=read.xls("Fatalities/2008_2009_By_County/Arizona_08_09.xls", header=TRUE)

fata10_AZ=read.xls("Fatalities/2010_2011_By_County/Arizona_10_11.xls", header=TRUE)

fata11_AZ=read.xls("Fatalities/2010_2011_By_County/Arizona_10_11.xls", header=TRUE)

fata03_AZ=subset(fata03_AZ, select=c("County", "X2003"))

fata03_AZ=rename.vars(data=fata03_AZ, from=c("X2003"), to=c("Fatalities"))

fata03_AZ$Year=2003

fata04_AZ=subset(fata04_AZ, select=c("County", "X2004"))

fata04_AZ=rename.vars(data=fata04_AZ, from=c("X2004"), to=c("Fatalities"))

fata04_AZ$Year=2004

fata05_AZ=subset(fata05_AZ, select=c("County", "X2005"))

fata05_AZ=rename.vars(data=fata05_AZ, from=c("X2005"), to=c("Fatalities"))

fata05_AZ$Year=2005

fata06_AZ=subset(fata06_AZ, select=c("County", "X2006"))

fata06_AZ=rename.vars(data=fata06_AZ, from=c("X2006"), to=c("Fatalities"))

fata06_AZ$Year=2006

fata07_AZ=subset(fata07_AZ, select=c("County", "X2007"))

fata07_AZ=rename.vars(data=fata07_AZ, from=c("X2007"), to=c("Fatalities"))

fata07_AZ$Year=2007

fata08_AZ=subset(fata08_AZ, select=c("County", "X2008"))

fata08_AZ=rename.vars(data=fata08_AZ, from=c("X2008"), to=c("Fatalities"))

fata08_AZ$Year=2008

fata09_AZ=subset(fata09_AZ, select=c("County", "X2009"))

fata09_AZ=rename.vars(data=fata09_AZ, from=c("X2009"), to=c("Fatalities"))

fata09_AZ$Year=2009

fata10_AZ=subset(fata10_AZ, select=c("County", "X2010"))

fata10_AZ=rename.vars(data=fata10_AZ, from=c("X2010"), to=c("Fatalities"))

fata10_AZ$Year=2010

fata11_AZ=subset(fata11_AZ, select=c("County", "X2011"))

fata11_AZ=rename.vars(data=fata11_AZ, from=c("X2011"), to=c("Fatalities"))

fata11_AZ$Year=2011



fata_AZ=rbind(fata03_AZ,fata04_AZ,fata05_AZ,fata06_AZ,fata07_AZ,fata08_AZ,fata09_AZ,fata10_AZ,fata11_AZ)

fata_AZ=subset(fata_AZ, County!="NOT APPLICABLE (000)")

fata_AZ=subset(fata_AZ, County!="OTHER (997)")

fata_AZ=subset(fata_AZ, County!="UNKNOWN (999)")

fata_AZ=subset(fata_AZ, County!="Total")

fata_AZ = subset(fata_AZ, County != "Not Reported")



fata_AZ$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_AZ$County)

fata_AZ$County = paste(fata_AZ$County, "County")

fata_AZ$County = toupper(fata_AZ$County)



fata_AZ=subset(fata_AZ, Fatalities!="NA")

final_AZ = merge(est_AZ, fata_AZ, by = c("County", "Year"))

final_AZ = transform(final_AZ, Population = (as.numeric(final_AZ$Poverty.Estimate.All.Ages)*100)/as.numeric(final_AZ$Poverty.Percent.All.Ages))

final_AZ = transform(final_AZ, Fatalities.Percent = (as.numeric(final_AZ$Fatalities)*100)/as.numeric(final_AZ$Population))

final_AZ=rename.vars (final_AZ, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_AZ=rename.vars (final_AZ, from="Fatalities.Percent", to="Fatalities Percent")

final_AZ=rename.vars (final_AZ, from="Fatalities", to="Fatalities Count")

final_AZ=rename.vars (final_AZ, from="Median.Household.Income", to="Median Income")

final_AZ=rename.vars (final_AZ, from="Poverty.Percent.All.Ages", to="Poverty Percent")



commute_AZ=read.csv("Commute time/Commute_Time_Data.csv")

commute_AZ=commute_AZ[which(commute_AZ$State=="AZ"),]

commute_AZ=rename.vars(data=commute_AZ, from=c("State"), to=c("Postal"))

commute_AZ$County = paste(commute_AZ$County, "County")

commute_AZ$County = toupper(commute_AZ$County)

final_AZ=merge(final_AZ,commute_AZ, by = c("Postal", "County"))

final_AZ=rename.vars (final_AZ, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_AZ=subset(final_AZ, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_AZ,file="AZ.csv")
