require(gdata)

setwd("data")

est03_UT = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_UT = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_UT = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_UT = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_UT = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_UT = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_UT = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_UT = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_UT = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_UT=subset(est03_UT, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_UT=est03_UT[which(est03_UT$Postal == "UT"),]

est03_UT = est03_UT[which(est03_UT$Name != "Utah"),]

est03_UT=subset(est03_UT,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_UT$Year=2003

est04_UT=subset(est04_UT, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_UT=est04_UT[which(est04_UT$Postal == "UT"),]

est04_UT = est04_UT[which(est04_UT$Name != "Utah"),]

est04_UT=subset(est04_UT,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_UT$Year=2004

est05_UT=subset(est05_UT, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_UT=est05_UT[which(est05_UT$Postal == "UT"),]

est05_UT = est05_UT[which(est05_UT$Name != "Utah"),]

est05_UT=subset(est05_UT,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_UT$Year=2005

est06_UT=subset(est06_UT, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_UT=est06_UT[which(est06_UT$Postal == "UT"),]

est06_UT = est06_UT[which(est06_UT$Name != "Utah"),]

est06_UT=subset(est06_UT,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_UT$Year=2006

est07_UT=subset(est07_UT, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_UT=est07_UT[which(est07_UT$Postal == "UT"),]

est07_UT = est07_UT[which(est07_UT$Name != "Utah"),]

est07_UT=subset(est07_UT,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_UT$Year=2007

est08_UT=subset(est08_UT, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_UT=est08_UT[which(est08_UT$Postal == "UT"),]

est08_UT = est08_UT[which(est08_UT$Name != "Utah"),]

est08_UT=subset(est08_UT,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_UT$Year=2008

est09_UT=subset(est09_UT, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_UT=est09_UT[which(est09_UT$Postal == "UT"),]

est09_UT = est09_UT[which(est09_UT$Name != "Utah"),]

est09_UT=subset(est09_UT,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_UT$Year=2009

est10_UT=subset(est10_UT, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_UT=est10_UT[which(est10_UT$Postal == "UT"),]

est10_UT = est10_UT[which(est10_UT$Name != "Utah"),]

est10_UT=subset(est10_UT,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_UT$Year=2010

est11_UT=subset(est11_UT, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_UT=est11_UT[which(est11_UT$Postal == "UT"),]

est11_UT = est11_UT[which(est11_UT$Name != "Utah"),]

est11_UT=subset(est11_UT,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_UT$Year=2011



est_UT=rbind(est06_UT,est07_UT,est08_UT,est09_UT, est03_UT,est04_UT,est05_UT,est10_UT,est11_UT)

est_UT = est_UT[order(est_UT$Year),]

est_UT=rename.vars(data=est_UT, from=c("Name"), to=c("County"))

est_UT$County = toupper(est_UT$County)



fata03_UT=read.xls("Fatalities/2003_2004_By_County/Utah.xls", header=TRUE)

fata04_UT=read.xls("Fatalities/2003_2004_By_County/Utah.xls", header=TRUE)

fata05_UT=read.xls("Fatalities/2005_2006_By_County/Utah.xls", header=TRUE)

fata06_UT=read.xls("Fatalities/2005_2006_By_County/Utah.xls", header=TRUE)

fata07_UT=read.xls("Fatalities/2006_2007_By_County/Utah_06_07.xls", header=TRUE)

fata08_UT=read.xls("Fatalities/2008_2009_By_County/Utah_08_09.xls", header=TRUE)

fata09_UT=read.xls("Fatalities/2008_2009_By_County/Utah_08_09.xls", header=TRUE)

fata10_UT=read.xls("Fatalities/2010_2011_By_County/Utah_10_11.xls", header=TRUE)

fata11_UT=read.xls("Fatalities/2010_2011_By_County/Utah_10_11.xls", header=TRUE)

fata03_UT=subset(fata03_UT, select=c("County", "X2003"))

fata03_UT=rename.vars(data=fata03_UT, from=c("X2003"), to=c("Fatalities"))

fata03_UT$Year=2003

fata04_UT=subset(fata04_UT, select=c("County", "X2004"))

fata04_UT=rename.vars(data=fata04_UT, from=c("X2004"), to=c("Fatalities"))

fata04_UT$Year=2004

fata05_UT=subset(fata05_UT, select=c("County", "X2005"))

fata05_UT=rename.vars(data=fata05_UT, from=c("X2005"), to=c("Fatalities"))

fata05_UT$Year=2005

fata06_UT=subset(fata06_UT, select=c("County", "X2006"))

fata06_UT=rename.vars(data=fata06_UT, from=c("X2006"), to=c("Fatalities"))

fata06_UT$Year=2006

fata07_UT=subset(fata07_UT, select=c("County", "X2007"))

fata07_UT=rename.vars(data=fata07_UT, from=c("X2007"), to=c("Fatalities"))

fata07_UT$Year=2007

fata08_UT=subset(fata08_UT, select=c("County", "X2008"))

fata08_UT=rename.vars(data=fata08_UT, from=c("X2008"), to=c("Fatalities"))

fata08_UT$Year=2008

fata09_UT=subset(fata09_UT, select=c("County", "X2009"))

fata09_UT=rename.vars(data=fata09_UT, from=c("X2009"), to=c("Fatalities"))

fata09_UT$Year=2009

fata10_UT=subset(fata10_UT, select=c("County", "X2010"))

fata10_UT=rename.vars(data=fata10_UT, from=c("X2010"), to=c("Fatalities"))

fata10_UT$Year=2010

fata11_UT=subset(fata11_UT, select=c("County", "X2011"))

fata11_UT=rename.vars(data=fata11_UT, from=c("X2011"), to=c("Fatalities"))

fata11_UT$Year=2011





fata_UT=rbind(fata03_UT,fata04_UT,fata05_UT,fata06_UT,fata07_UT,fata08_UT,fata09_UT,fata10_UT,fata11_UT)

fata_UT=subset(fata_UT, County!="NOT APPLICABLE (000)")

fata_UT=subset(fata_UT, County!="OTHER (997)")

fata_UT=subset(fata_UT, County!="UNKNOWN (999)")

fata_UT=subset(fata_UT, County!="Total")

fata_UT = subset(fata_UT, County != "Not Reported")



fata_UT$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_UT$County)

fata_UT$County = paste(fata_UT$County, "County")

fata_UT$County = toupper(fata_UT$County)



fata_UT=subset(fata_UT, Fatalities!="NA")

final_UT = merge(est_UT, fata_UT, by = c("County", "Year"))

final_UT = transform(final_UT, Population = (as.numeric(final_UT$Poverty.Estimate.All.Ages)*100)/as.numeric(final_UT$Poverty.Percent.All.Ages))

final_UT = transform(final_UT, Fatalities.Percent = (as.numeric(final_UT$Fatalities)*100)/as.numeric(final_UT$Population))

final_UT=rename.vars (final_UT, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_UT=rename.vars (final_UT, from="Fatalities.Percent", to="Fatalities Percent")

final_UT=rename.vars (final_UT, from="Fatalities", to="Fatalities Count")

final_UT=rename.vars (final_UT, from="Median.Household.Income", to="Median Income")

final_UT=rename.vars (final_UT, from="Poverty.Percent.All.Ages", to="Poverty Percent")


commute_UT=read.csv("Commute time/Commute_Time_Data.csv")

commute_UT=commute_UT[which(commute_UT$State=="UT"),]

commute_UT=rename.vars(data=commute_UT, from=c("State"), to=c("Postal"))

commute_UT$County = paste(commute_UT$County, "County")

commute_UT$County = toupper(commute_UT$County)

final_UT=merge(final_UT,commute_UT, by = c("Postal", "County"))

final_UT=rename.vars (final_UT, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_UT=subset(final_UT, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_UT,file="UT.csv")
