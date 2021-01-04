require(gdata)

setwd("data")

est03_DE = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_DE = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_DE = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_DE = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_DE = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_DE = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_DE = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_DE = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_DE = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_DE=subset(est03_DE, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_DE=est03_DE[which(est03_DE$Postal == "DE"),]

est03_DE = est03_DE[which(est03_DE$Name != "Delaware"),]

est03_DE=subset(est03_DE,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_DE$Year=2003

est04_DE=subset(est04_DE, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est04_DE=est04_DE[which(est04_DE$Postal == "DE"),]

est04_DE = est04_DE[which(est04_DE$Name != "Delaware"),]

est04_DE=subset(est04_DE,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_DE$Year=2004

est05_DE=subset(est05_DE, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_DE=est05_DE[which(est05_DE$Postal == "DE"),]

est05_DE = est05_DE[which(est05_DE$Name != "Delaware"),]

est05_DE=subset(est05_DE,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_DE$Year=2005

est06_DE=subset(est06_DE, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_DE=est06_DE[which(est06_DE$Postal == "DE"),]

est06_DE = est06_DE[which(est06_DE$Name != "Delaware"),]

est06_DE=subset(est06_DE,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_DE$Year=2006

est07_DE=subset(est07_DE, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_DE=est07_DE[which(est07_DE$Postal == "DE"),]

est07_DE = est07_DE[which(est07_DE$Name != "Delaware"),]

est07_DE=subset(est07_DE,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_DE$Year=2007

est08_DE=subset(est08_DE, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_DE=est08_DE[which(est08_DE$Postal == "DE"),]

est08_DE = est08_DE[which(est08_DE$Name != "Delaware"),]

est08_DE=subset(est08_DE,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_DE$Year=2008

est09_DE=subset(est09_DE, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_DE=est09_DE[which(est09_DE$Postal == "DE"),]

est09_DE = est09_DE[which(est09_DE$Name != "Delaware"),]

est09_DE=subset(est09_DE,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_DE$Year=2009

est10_DE=subset(est10_DE, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_DE=est10_DE[which(est10_DE$Postal == "DE"),]

est10_DE = est10_DE[which(est10_DE$Name != "Delaware"),]

est10_DE=subset(est10_DE,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_DE$Year=2010

est11_DE=subset(est11_DE, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_DE=est11_DE[which(est11_DE$Postal == "DE"),]

est11_DE = est11_DE[which(est11_DE$Name != "Delaware"),]

est11_DE=subset(est11_DE,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_DE$Year=2011



est_DE=rbind(est06_DE,est07_DE,est08_DE,est09_DE, est03_DE,est04_DE,est05_DE,est10_DE,est11_DE)

est_DE = est_DE[order(est_DE$Year),]

est_DE=rename.vars(data=est_DE, from=c("Name"), to=c("County"))

est_DE$County = toupper(est_DE$County)



fata03_DE=read.xls("Fatalities/2003_2004_By_County/delaware.xls", header=TRUE)

fata04_DE=read.xls("Fatalities/2003_2004_By_County/delaware.xls", header=TRUE)

fata05_DE=read.xls("Fatalities/2005_2006_By_County/delaware.xls", header=TRUE)

fata06_DE=read.xls("Fatalities/2005_2006_By_County/delaware.xls", header=TRUE)

fata07_DE=read.xls("Fatalities/2006_2007_By_County/Delaware_06_07.xls", header=TRUE)

fata08_DE=read.xls("Fatalities/2008_2009_By_County/Delaware_08_09.xls", header=TRUE)

fata09_DE=read.xls("Fatalities/2008_2009_By_County/Delaware_08_09.xls", header=TRUE)

fata10_DE=read.xls("Fatalities/2010_2011_By_County/Delaware_10_11.xls", header=TRUE)

fata11_DE=read.xls("Fatalities/2010_2011_By_County/Delaware_10_11.xls", header=TRUE)

fata03_DE=subset(fata03_DE, select=c("County", "X2003"))

fata03_DE=rename.vars(data=fata03_DE, from=c("X2003"), to=c("Fatalities"))

fata03_DE$Year=2003

fata04_DE=subset(fata04_DE, select=c("County", "X2004"))

fata04_DE=rename.vars(data=fata04_DE, from=c("X2004"), to=c("Fatalities"))

fata04_DE$Year=2004

fata05_DE=subset(fata05_DE, select=c("County", "X2005"))

fata05_DE=rename.vars(data=fata05_DE, from=c("X2005"), to=c("Fatalities"))

fata05_DE$Year=2005

fata06_DE=subset(fata06_DE, select=c("County", "X2006"))

fata06_DE=rename.vars(data=fata06_DE, from=c("X2006"), to=c("Fatalities"))

fata06_DE$Year=2006

fata07_DE=subset(fata07_DE, select=c("County", "X2007"))

fata07_DE=rename.vars(data=fata07_DE, from=c("X2007"), to=c("Fatalities"))

fata07_DE$Year=2007

fata08_DE=subset(fata08_DE, select=c("County", "X2008"))

fata08_DE=rename.vars(data=fata08_DE, from=c("X2008"), to=c("Fatalities"))

fata08_DE$Year=2008

fata09_DE=subset(fata09_DE, select=c("County", "X2009"))

fata09_DE=rename.vars(data=fata09_DE, from=c("X2009"), to=c("Fatalities"))

fata09_DE$Year=2009

fata10_DE=subset(fata10_DE, select=c("County", "X2010"))

fata10_DE=rename.vars(data=fata10_DE, from=c("X2010"), to=c("Fatalities"))

fata10_DE$Year=2010

fata11_DE=subset(fata11_DE, select=c("County", "X2011"))

fata11_DE=rename.vars(data=fata11_DE, from=c("X2011"), to=c("Fatalities"))

fata11_DE$Year=2011



fata_DE=rbind(fata03_DE,fata04_DE,fata05_DE,fata06_DE,fata07_DE,fata08_DE,fata09_DE,fata10_DE,fata11_DE)

fata_DE=subset(fata_DE, County!="NOT APPLICABLE (000)")

fata_DE=subset(fata_DE, County!="OTHER (997)")

fata_DE=subset(fata_DE, County!="UNKNOWN (999)")

fata_DE=subset(fata_DE, County!="Total")

fata_DE = subset(fata_DE, County != "Not Reported")



fata_DE$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_DE$County)

fata_DE$County = paste(fata_DE$County, "County")

fata_DE$County = toupper(fata_DE$County)



fata_DE=subset(fata_DE, Fatalities!="NA")

final_DE = merge(est_DE, fata_DE, by = c("County", "Year"))

final_DE = transform(final_DE, Population = (as.numeric(final_DE$Poverty.Estimate.All.Ages)*100)/as.numeric(final_DE$Poverty.Percent.All.Ages))

final_DE = transform(final_DE, Fatalities.Percent = (as.numeric(final_DE$Fatalities)*100)/as.numeric(final_DE$Population))

final_DE=rename.vars (final_DE, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_DE=rename.vars (final_DE, from="Fatalities.Percent", to="Fatalities Percent")

final_DE=rename.vars (final_DE, from="Fatalities", to="Fatalities Count")

final_DE=rename.vars (final_DE, from="Median.Household.Income", to="Median Income")

final_DE=rename.vars (final_DE, from="Poverty.Percent.All.Ages", to="Poverty Percent")



commute_DE=read.csv("Commute time/Commute_Time_Data.csv")

commute_DE=commute_DE[which(commute_DE$State=="DE"),]

commute_DE=rename.vars(data=commute_DE, from=c("State"), to=c("Postal"))

commute_DE$County = paste(commute_DE$County, "County")

commute_DE$County = toupper(commute_DE$County)

final_DE=merge(final_DE,commute_DE, by = c("Postal", "County"))

final_DE=rename.vars (final_DE, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_DE=subset(final_DE, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_DE,file="DE.csv")
