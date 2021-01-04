require(gdata)

setwd("data")

est03_MT = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_MT = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_MT = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_MT = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_MT = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_MT = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_MT = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_MT = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_MT = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_MT=subset(est03_MT, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_MT=est03_MT[which(est03_MT$Postal == "MT"),]

est03_MT = est03_MT[which(est03_MT$Name != "Montana"),]

est03_MT=subset(est03_MT,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_MT$Year=2003

est04_MT=subset(est04_MT, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_MT=est04_MT[which(est04_MT$Postal == "MT"),]

est04_MT = est04_MT[which(est04_MT$Name != "Montana"),]

est04_MT=subset(est04_MT,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_MT$Year=2004

est05_MT=subset(est05_MT, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_MT=est05_MT[which(est05_MT$Postal == "MT"),]

est05_MT = est05_MT[which(est05_MT$Name != "Montana"),]

est05_MT=subset(est05_MT,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_MT$Year=2005

est06_MT=subset(est06_MT, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_MT=est06_MT[which(est06_MT$Postal == "MT"),]

est06_MT = est06_MT[which(est06_MT$Name != "Montana"),]

est06_MT=subset(est06_MT,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_MT$Year=2006

est07_MT=subset(est07_MT, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_MT=est07_MT[which(est07_MT$Postal == "MT"),]

est07_MT = est07_MT[which(est07_MT$Name != "Montana"),]

est07_MT=subset(est07_MT,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_MT$Year=2007

est08_MT=subset(est08_MT, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_MT=est08_MT[which(est08_MT$Postal == "MT"),]

est08_MT = est08_MT[which(est08_MT$Name != "Montana"),]

est08_MT=subset(est08_MT,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_MT$Year=2008

est09_MT=subset(est09_MT, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_MT=est09_MT[which(est09_MT$Postal == "MT"),]

est09_MT = est09_MT[which(est09_MT$Name != "Montana"),]

est09_MT=subset(est09_MT,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_MT$Year=2009

est10_MT=subset(est10_MT, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_MT=est10_MT[which(est10_MT$Postal == "MT"),]

est10_MT = est10_MT[which(est10_MT$Name != "Montana"),]

est10_MT=subset(est10_MT,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_MT$Year=2010

est11_MT=subset(est11_MT, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_MT=est11_MT[which(est11_MT$Postal == "MT"),]

est11_MT = est11_MT[which(est11_MT$Name != "Montana"),]

est11_MT=subset(est11_MT,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_MT$Year=2011



est_MT=rbind(est06_MT,est07_MT,est08_MT,est09_MT, est03_MT,est04_MT,est05_MT,est10_MT,est11_MT)

est_MT = est_MT[order(est_MT$Year),]

est_MT=rename.vars(data=est_MT, from=c("Name"), to=c("County"))

est_MT$County = toupper(est_MT$County)


fata03_MT=read.xls("Fatalities/2003_2004_By_County/montana.xls", header=TRUE)

fata04_MT=read.xls("Fatalities/2003_2004_By_County/montana.xls", header=TRUE)

fata05_MT=read.xls("Fatalities/2005_2006_By_County/montana.xls", header=TRUE)

fata06_MT=read.xls("Fatalities/2005_2006_By_County/montana.xls", header=TRUE)

fata07_MT=read.xls("Fatalities/2006_2007_By_County/Montana_06_07.xls", header=TRUE)

fata08_MT=read.xls("Fatalities/2008_2009_By_County/Montana_08_09.xls", header=TRUE)

fata09_MT=read.xls("Fatalities/2008_2009_By_County/Montana_08_09.xls", header=TRUE)

fata10_MT=read.xls("Fatalities/2010_2011_By_County/Montana_10_11.xls", header=TRUE)

fata11_MT=read.xls("Fatalities/2010_2011_By_County/Montana_10_11.xls", header=TRUE)

fata03_MT=subset(fata03_MT, select=c("County", "X2003"))

fata03_MT=rename.vars(data=fata03_MT, from=c("X2003"), to=c("Fatalities"))

fata03_MT$Year=2003

fata04_MT=subset(fata04_MT, select=c("County", "X2004"))

fata04_MT=rename.vars(data=fata04_MT, from=c("X2004"), to=c("Fatalities"))

fata04_MT$Year=2004

fata05_MT=subset(fata05_MT, select=c("County", "X2005"))

fata05_MT=rename.vars(data=fata05_MT, from=c("X2005"), to=c("Fatalities"))

fata05_MT$Year=2005

fata06_MT=subset(fata06_MT, select=c("County", "X2006"))

fata06_MT=rename.vars(data=fata06_MT, from=c("X2006"), to=c("Fatalities"))

fata06_MT$Year=2006

fata07_MT=subset(fata07_MT, select=c("County", "X2007"))

fata07_MT=rename.vars(data=fata07_MT, from=c("X2007"), to=c("Fatalities"))

fata07_MT$Year=2007

fata08_MT=subset(fata08_MT, select=c("County", "X2008"))

fata08_MT=rename.vars(data=fata08_MT, from=c("X2008"), to=c("Fatalities"))

fata08_MT$Year=2008

fata09_MT=subset(fata09_MT, select=c("County", "X2009"))

fata09_MT=rename.vars(data=fata09_MT, from=c("X2009"), to=c("Fatalities"))

fata09_MT$Year=2009

fata10_MT=subset(fata10_MT, select=c("County", "X2010"))

fata10_MT=rename.vars(data=fata10_MT, from=c("X2010"), to=c("Fatalities"))

fata10_MT$Year=2010

fata11_MT=subset(fata11_MT, select=c("County", "X2011"))

fata11_MT=rename.vars(data=fata11_MT, from=c("X2011"), to=c("Fatalities"))

fata11_MT$Year=2011





fata_MT=rbind(fata03_MT,fata04_MT,fata05_MT,fata06_MT,fata07_MT,fata08_MT,fata09_MT,fata10_MT,fata11_MT)

fata_MT=subset(fata_MT, County!="NOT APPLICABLE (000)")

fata_MT=subset(fata_MT, County!="OTHER (997)")

fata_MT=subset(fata_MT, County!="UNKNOWN (999)")

fata_MT=subset(fata_MT, County!="Total")

fata_MT = subset(fata_MT, County != "Not Reported")



fata_MT$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_MT$County)

fata_MT$County = paste(fata_MT$County, "County")

fata_MT$County = toupper(fata_MT$County)



fata_MT=subset(fata_MT, Fatalities!="NA")

final_MT = merge(est_MT, fata_MT, by = c("County", "Year"))

final_MT = transform(final_MT, Population = (as.numeric(final_MT$Poverty.Estimate.All.Ages)*100)/as.numeric(final_MT$Poverty.Percent.All.Ages))

final_MT = transform(final_MT, Fatalities.Percent = (as.numeric(final_MT$Fatalities)*100)/as.numeric(final_MT$Population))

final_MT=rename.vars (final_MT, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_MT=rename.vars (final_MT, from="Fatalities.Percent", to="Fatalities Percent")

final_MT=rename.vars (final_MT, from="Fatalities", to="Fatalities Count")

final_MT=rename.vars (final_MT, from="Median.Household.Income", to="Median Income")

final_MT=rename.vars (final_MT, from="Poverty.Percent.All.Ages", to="Poverty Percent")


commute_MT=read.csv("Commute time/Commute_Time_Data.csv")

commute_MT=commute_MT[which(commute_MT$State=="MT"),]

commute_MT=rename.vars(data=commute_MT, from=c("State"), to=c("Postal"))

commute_MT$County = paste(commute_MT$County, "County")

commute_MT$County = toupper(commute_MT$County)

final_MT=merge(final_MT,commute_MT, by = c("Postal", "County"))

final_MT=rename.vars (final_MT, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_MT=subset(final_MT, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_MT,file="MT.csv")
