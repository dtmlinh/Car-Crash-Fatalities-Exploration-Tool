require(gdata)

setwd("data")

est03_CO = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_CO = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_CO = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_CO = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_CO = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_CO = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_CO = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_CO = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_CO = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_CO=subset(est03_CO, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_CO=est03_CO[which(est03_CO$Postal == "CO"),]

est03_CO = est03_CO[which(est03_CO$Name != "Colorado"),]

est03_CO=subset(est03_CO,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_CO$Year=2003

est04_CO=subset(est04_CO, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_CO=est04_CO[which(est04_CO$Postal == "CO"),]

est04_CO = est04_CO[which(est04_CO$Name != "Colorado"),]

est04_CO=subset(est04_CO,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_CO$Year=2004

est05_CO=subset(est05_CO, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_CO=est05_CO[which(est05_CO$Postal == "CO"),]

est05_CO = est05_CO[which(est05_CO$Name != "Colorado"),]

est05_CO=subset(est05_CO,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_CO$Year=2005

est06_CO=subset(est06_CO, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_CO=est06_CO[which(est06_CO$Postal == "CO"),]

est06_CO = est06_CO[which(est06_CO$Name != "Colorado"),]

est06_CO=subset(est06_CO,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_CO$Year=2006

est07_CO=subset(est07_CO, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_CO=est07_CO[which(est07_CO$Postal == "CO"),]

est07_CO = est07_CO[which(est07_CO$Name != "Colorado"),]

est07_CO=subset(est07_CO,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_CO$Year=2007

est08_CO=subset(est08_CO, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_CO=est08_CO[which(est08_CO$Postal == "CO"),]

est08_CO = est08_CO[which(est08_CO$Name != "Colorado"),]

est08_CO=subset(est08_CO,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_CO$Year=2008

est09_CO=subset(est09_CO, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_CO=est09_CO[which(est09_CO$Postal == "CO"),]

est09_CO = est09_CO[which(est09_CO$Name != "Colorado"),]

est09_CO=subset(est09_CO,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_CO$Year=2009

est10_CO=subset(est10_CO, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_CO=est10_CO[which(est10_CO$Postal == "CO"),]

est10_CO = est10_CO[which(est10_CO$Name != "Colorado"),]

est10_CO=subset(est10_CO,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_CO$Year=2010

est11_CO=subset(est11_CO, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_CO=est11_CO[which(est11_CO$Postal == "CO"),]

est11_CO = est11_CO[which(est11_CO$Name != "Colorado"),]

est11_CO=subset(est11_CO,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_CO$Year=2011



est_CO=rbind(est06_CO,est07_CO,est08_CO,est09_CO, est03_CO,est04_CO,est05_CO,est10_CO,est11_CO)

est_CO = est_CO[order(est_CO$Year),]

est_CO=rename.vars(data=est_CO, from=c("Name"), to=c("County"))

est_CO$County = toupper(est_CO$County)



fata03_CO=read.xls("Fatalities/2003_2004_By_County/colorado.xls", header=TRUE)

fata04_CO=read.xls("Fatalities/2003_2004_By_County/colorado.xls", header=TRUE)

fata05_CO=read.xls("Fatalities/2005_2006_By_County/colorado.xls", header=TRUE)

fata06_CO=read.xls("Fatalities/2005_2006_By_County/colorado.xls", header=TRUE)

fata07_CO=read.xls("Fatalities/2006_2007_By_County/Colorado_06_07.xls", header=TRUE)

fata08_CO=read.xls("Fatalities/2008_2009_By_County/Colorado_08_09.xls", header=TRUE)

fata09_CO=read.xls("Fatalities/2008_2009_By_County/Colorado_08_09.xls", header=TRUE)

fata10_CO=read.xls("Fatalities/2010_2011_By_County/Colorado_10_11.xls", header=TRUE)

fata11_CO=read.xls("Fatalities/2010_2011_By_County/Colorado_10_11.xls", header=TRUE)

fata03_CO=subset(fata03_CO, select=c("County", "X2003"))

fata03_CO=rename.vars(data=fata03_CO, from=c("X2003"), to=c("Fatalities"))

fata03_CO$Year=2003

fata04_CO=subset(fata04_CO, select=c("County", "X2004"))

fata04_CO=rename.vars(data=fata04_CO, from=c("X2004"), to=c("Fatalities"))

fata04_CO$Year=2004

fata05_CO=subset(fata05_CO, select=c("County", "X2005"))

fata05_CO=rename.vars(data=fata05_CO, from=c("X2005"), to=c("Fatalities"))

fata05_CO$Year=2005

fata06_CO=subset(fata06_CO, select=c("County", "X2006"))

fata06_CO=rename.vars(data=fata06_CO, from=c("X2006"), to=c("Fatalities"))

fata06_CO$Year=2006

fata07_CO=subset(fata07_CO, select=c("County", "X2007"))

fata07_CO=rename.vars(data=fata07_CO, from=c("X2007"), to=c("Fatalities"))

fata07_CO$Year=2007

fata08_CO=subset(fata08_CO, select=c("County", "X2008"))

fata08_CO=rename.vars(data=fata08_CO, from=c("X2008"), to=c("Fatalities"))

fata08_CO$Year=2008

fata09_CO=subset(fata09_CO, select=c("County", "X2009"))

fata09_CO=rename.vars(data=fata09_CO, from=c("X2009"), to=c("Fatalities"))

fata09_CO$Year=2009

fata10_CO=subset(fata10_CO, select=c("County", "X2010"))

fata10_CO=rename.vars(data=fata10_CO, from=c("X2010"), to=c("Fatalities"))

fata10_CO$Year=2010

fata11_CO=subset(fata11_CO, select=c("County", "X2011"))

fata11_CO=rename.vars(data=fata11_CO, from=c("X2011"), to=c("Fatalities"))

fata11_CO$Year=2011



fata_CO=rbind(fata03_CO,fata04_CO,fata05_CO,fata06_CO,fata07_CO,fata08_CO,fata09_CO,fata10_CO,fata11_CO)

fata_CO=subset(fata_CO, County!="NOT APPLICABLE (000)")

fata_CO=subset(fata_CO, County!="OTHER (997)")

fata_CO=subset(fata_CO, County!="UNKNOWN (999)")

fata_CO=subset(fata_CO, County!="Total")

fata_CO = subset(fata_CO, County != "Not Reported")



fata_CO$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_CO$County)

fata_CO$County = paste(fata_CO$County, "County")

fata_CO$County = toupper(fata_CO$County)



fata_CO=subset(fata_CO, Fatalities!="NA")

final_CO = merge(est_CO, fata_CO, by = c("County", "Year"))

final_CO = transform(final_CO, Population = (as.numeric(final_CO$Poverty.Estimate.All.Ages)*100)/as.numeric(final_CO$Poverty.Percent.All.Ages))

final_CO = transform(final_CO, Fatalities.Percent = (as.numeric(final_CO$Fatalities)*100)/as.numeric(final_CO$Population))

final_CO=rename.vars (final_CO, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_CO=rename.vars (final_CO, from="Fatalities.Percent", to="Fatalities Percent")

final_CO=rename.vars (final_CO, from="Fatalities", to="Fatalities Count")

final_CO=rename.vars (final_CO, from="Median.Household.Income", to="Median Income")

final_CO=rename.vars (final_CO, from="Poverty.Percent.All.Ages", to="Poverty Percent")



commute_CO=read.csv("Commute time/Commute_Time_Data.csv")

commute_CO=commute_CO[which(commute_CO$State=="CO"),]

commute_CO=rename.vars(data=commute_CO, from=c("State"), to=c("Postal"))

commute_CO$County = paste(commute_CO$County, "County")

commute_CO$County = toupper(commute_CO$County)

final_CO=merge(final_CO,commute_CO, by = c("Postal", "County"))

final_CO=rename.vars (final_CO, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_CO=subset(final_CO, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_CO,file="CO.csv")
