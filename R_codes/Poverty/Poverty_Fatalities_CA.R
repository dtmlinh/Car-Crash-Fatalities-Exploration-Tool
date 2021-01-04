require(gdata)

setwd("data")

est03_CA = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_CA = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_CA = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_CA = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_CA = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_CA = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_CA = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_CA = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_CA = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_CA=subset(est03_CA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_CA=est03_CA[which(est03_CA$Postal == "CA"),]

est03_CA = est03_CA[which(est03_CA$Name != "California"),]

est03_CA=subset(est03_CA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_CA$Year=2003

est04_CA=subset(est04_CA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_CA=est04_CA[which(est04_CA$Postal == "CA"),]

est04_CA = est04_CA[which(est04_CA$Name != "California"),]

est04_CA=subset(est04_CA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_CA$Year=2004

est05_CA=subset(est05_CA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_CA=est05_CA[which(est05_CA$Postal == "CA"),]

est05_CA = est05_CA[which(est05_CA$Name != "California"),]

est05_CA=subset(est05_CA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_CA$Year=2005

est06_CA=subset(est06_CA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_CA=est06_CA[which(est06_CA$Postal == "CA"),]

est06_CA = est06_CA[which(est06_CA$Name != "California"),]

est06_CA=subset(est06_CA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_CA$Year=2006

est07_CA=subset(est07_CA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_CA=est07_CA[which(est07_CA$Postal == "CA"),]

est07_CA = est07_CA[which(est07_CA$Name != "California"),]

est07_CA=subset(est07_CA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_CA$Year=2007

est08_CA=subset(est08_CA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_CA=est08_CA[which(est08_CA$Postal == "CA"),]

est08_CA = est08_CA[which(est08_CA$Name != "California"),]

est08_CA=subset(est08_CA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_CA$Year=2008

est09_CA=subset(est09_CA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_CA=est09_CA[which(est09_CA$Postal == "CA"),]

est09_CA = est09_CA[which(est09_CA$Name != "California"),]

est09_CA=subset(est09_CA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_CA$Year=2009

est10_CA=subset(est10_CA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_CA=est10_CA[which(est10_CA$Postal == "CA"),]

est10_CA = est10_CA[which(est10_CA$Name != "California"),]

est10_CA=subset(est10_CA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_CA$Year=2010

est11_CA=subset(est11_CA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_CA=est11_CA[which(est11_CA$Postal == "CA"),]

est11_CA = est11_CA[which(est11_CA$Name != "California"),]

est11_CA=subset(est11_CA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_CA$Year=2011



est_CA=rbind(est06_CA,est07_CA,est08_CA,est09_CA, est03_CA,est04_CA,est05_CA,est10_CA,est11_CA)

est_CA = est_CA[order(est_CA$Year),]

est_CA=rename.vars(data=est_CA, from=c("Name"), to=c("County"))

est_CA$County = toupper(est_CA$County)



fata03_CA=read.xls("Fatalities/2003_2004_By_County/california.xls", header=TRUE)

fata04_CA=read.xls("Fatalities/2003_2004_By_County/california.xls", header=TRUE)

fata05_CA=read.xls("Fatalities/2005_2006_By_County/california.xls", header=TRUE)

fata06_CA=read.xls("Fatalities/2005_2006_By_County/california.xls", header=TRUE)

fata07_CA=read.xls("Fatalities/2006_2007_By_County/California_06_07.xls", header=TRUE)

fata08_CA=read.xls("Fatalities/2008_2009_By_County/California_08_09.xls", header=TRUE)

fata09_CA=read.xls("Fatalities/2008_2009_By_County/California_08_09.xls", header=TRUE)

fata10_CA=read.xls("Fatalities/2010_2011_By_County/California_10_11.xls", header=TRUE)

fata11_CA=read.xls("Fatalities/2010_2011_By_County/California_10_11.xls", header=TRUE)

fata03_CA=subset(fata03_CA, select=c("County", "X2003"))

fata03_CA=rename.vars(data=fata03_CA, from=c("X2003"), to=c("Fatalities"))

fata03_CA$Year=2003

fata04_CA=subset(fata04_CA, select=c("County", "X2004"))

fata04_CA=rename.vars(data=fata04_CA, from=c("X2004"), to=c("Fatalities"))

fata04_CA$Year=2004

fata05_CA=subset(fata05_CA, select=c("County", "X2005"))

fata05_CA=rename.vars(data=fata05_CA, from=c("X2005"), to=c("Fatalities"))

fata05_CA$Year=2005

fata06_CA=subset(fata06_CA, select=c("County", "X2006"))

fata06_CA=rename.vars(data=fata06_CA, from=c("X2006"), to=c("Fatalities"))

fata06_CA$Year=2006

fata07_CA=subset(fata07_CA, select=c("County", "X2007"))

fata07_CA=rename.vars(data=fata07_CA, from=c("X2007"), to=c("Fatalities"))

fata07_CA$Year=2007

fata08_CA=subset(fata08_CA, select=c("County", "X2008"))

fata08_CA=rename.vars(data=fata08_CA, from=c("X2008"), to=c("Fatalities"))

fata08_CA$Year=2008

fata09_CA=subset(fata09_CA, select=c("County", "X2009"))

fata09_CA=rename.vars(data=fata09_CA, from=c("X2009"), to=c("Fatalities"))

fata09_CA$Year=2009

fata10_CA=subset(fata10_CA, select=c("County", "X2010"))

fata10_CA=rename.vars(data=fata10_CA, from=c("X2010"), to=c("Fatalities"))

fata10_CA$Year=2010

fata11_CA=subset(fata11_CA, select=c("County", "X2011"))

fata11_CA=rename.vars(data=fata11_CA, from=c("X2011"), to=c("Fatalities"))

fata11_CA$Year=2011



fata_CA=rbind(fata03_CA,fata04_CA,fata05_CA,fata06_CA,fata07_CA,fata08_CA,fata09_CA,fata10_CA,fata11_CA)

fata_CA=subset(fata_CA, County!="NOT APPLICABLE (000)")

fata_CA=subset(fata_CA, County!="OTHER (997)")

fata_CA=subset(fata_CA, County!="UNKNOWN (999)")

fata_CA=subset(fata_CA, County!="Total")

fata_CA = subset(fata_CA, County != "Not Reported")



fata_CA$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_CA$County)

fata_CA$County = paste(fata_CA$County, "County")

fata_CA$County = toupper(fata_CA$County)



fata_CA=subset(fata_CA, Fatalities!="NA")

final_CA = merge(est_CA, fata_CA, by = c("County", "Year"))

final_CA = transform(final_CA, Population = (as.numeric(final_CA$Poverty.Estimate.All.Ages)*100)/as.numeric(final_CA$Poverty.Percent.All.Ages))

final_CA = transform(final_CA, Fatalities.Percent = (as.numeric(final_CA$Fatalities)*100)/as.numeric(final_CA$Population))

final_CA=rename.vars (final_CA, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_CA=rename.vars (final_CA, from="Fatalities.Percent", to="Fatalities Percent")

final_CA=rename.vars (final_CA, from="Fatalities", to="Fatalities Count")

final_CA=rename.vars (final_CA, from="Median.Household.Income", to="Median Income")

final_CA=rename.vars (final_CA, from="Poverty.Percent.All.Ages", to="Poverty Percent")



commute_CA=read.csv("Commute time/Commute_Time_Data.csv")

commute_CA=commute_CA[which(commute_CA$State=="CA"),]

commute_CA=rename.vars(data=commute_CA, from=c("State"), to=c("Postal"))

commute_CA$County = paste(commute_CA$County, "County")

commute_CA$County = toupper(commute_CA$County)

final_CA=merge(final_CA,commute_CA, by = c("Postal", "County"))

final_CA=rename.vars (final_CA, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_CA=subset(final_CA, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_CA,file="CA.csv")
