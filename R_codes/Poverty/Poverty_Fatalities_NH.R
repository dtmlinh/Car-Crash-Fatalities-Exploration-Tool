require(gdata)

setwd("data")

est03_NH = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_NH = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_NH = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_NH = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_NH = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_NH = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_NH = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_NH = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_NH = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_NH=subset(est03_NH, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_NH=est03_NH[which(est03_NH$Postal == "NH"),]

est03_NH = est03_NH[which(est03_NH$Name != "New Hampshire"),]

est03_NH=subset(est03_NH,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_NH$Year=2003

est04_NH=subset(est04_NH, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_NH=est04_NH[which(est04_NH$Postal == "NH"),]

est04_NH = est04_NH[which(est04_NH$Name != "New Hampshire"),]

est04_NH=subset(est04_NH,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_NH$Year=2004

est05_NH=subset(est05_NH, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_NH=est05_NH[which(est05_NH$Postal == "NH"),]

est05_NH = est05_NH[which(est05_NH$Name != "New Hampshire"),]

est05_NH=subset(est05_NH,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_NH$Year=2005

est06_NH=subset(est06_NH, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_NH=est06_NH[which(est06_NH$Postal == "NH"),]

est06_NH = est06_NH[which(est06_NH$Name != "New Hampshire"),]

est06_NH=subset(est06_NH,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_NH$Year=2006

est07_NH=subset(est07_NH, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_NH=est07_NH[which(est07_NH$Postal == "NH"),]

est07_NH = est07_NH[which(est07_NH$Name != "New Hampshire"),]

est07_NH=subset(est07_NH,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_NH$Year=2007

est08_NH=subset(est08_NH, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_NH=est08_NH[which(est08_NH$Postal == "NH"),]

est08_NH = est08_NH[which(est08_NH$Name != "New Hampshire"),]

est08_NH=subset(est08_NH,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_NH$Year=2008

est09_NH=subset(est09_NH, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_NH=est09_NH[which(est09_NH$Postal == "NH"),]

est09_NH = est09_NH[which(est09_NH$Name != "New Hampshire"),]

est09_NH=subset(est09_NH,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_NH$Year=2009

est10_NH=subset(est10_NH, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_NH=est10_NH[which(est10_NH$Postal == "NH"),]

est10_NH = est10_NH[which(est10_NH$Name != "New Hampshire"),]

est10_NH=subset(est10_NH,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_NH$Year=2010

est11_NH=subset(est11_NH, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_NH=est11_NH[which(est11_NH$Postal == "NH"),]

est11_NH = est11_NH[which(est11_NH$Name != "New Hampshire"),]

est11_NH=subset(est11_NH,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_NH$Year=2011



est_NH=rbind(est06_NH,est07_NH,est08_NH,est09_NH, est03_NH,est04_NH,est05_NH,est10_NH,est11_NH)

est_NH = est_NH[order(est_NH$Year),]

est_NH=rename.vars(data=est_NH, from=c("Name"), to=c("County"))

est_NH$County = toupper(est_NH$County)



fata03_NH=read.xls("Fatalities/2003_2004_By_County/New Hampshire.xls", header=TRUE)

fata04_NH=read.xls("Fatalities/2003_2004_By_County/New Hampshire.xls", header=TRUE)

fata05_NH=read.xls("Fatalities/2005_2006_By_County/New Hampshire.xls", header=TRUE)

fata06_NH=read.xls("Fatalities/2005_2006_By_County/New Hampshire.xls", header=TRUE)

fata07_NH=read.xls("Fatalities/2006_2007_By_County/New_Hampshire_06_07.xls", header=TRUE)

fata08_NH=read.xls("Fatalities/2008_2009_By_County/New_Hampshire_08_09.xls", header=TRUE)

fata09_NH=read.xls("Fatalities/2008_2009_By_County/New_Hampshire_08_09.xls", header=TRUE)

fata10_NH=read.xls("Fatalities/2010_2011_By_County/New_Hampshire_10_11.xls", header=TRUE)

fata11_NH=read.xls("Fatalities/2010_2011_By_County/New_Hampshire_10_11.xls", header=TRUE)

fata03_NH=subset(fata03_NH, select=c("County", "X2003"))

fata03_NH=rename.vars(data=fata03_NH, from=c("X2003"), to=c("Fatalities"))

fata03_NH$Year=2003

fata04_NH=subset(fata04_NH, select=c("County", "X2004"))

fata04_NH=rename.vars(data=fata04_NH, from=c("X2004"), to=c("Fatalities"))

fata04_NH$Year=2004

fata05_NH=subset(fata05_NH, select=c("County", "X2005"))

fata05_NH=rename.vars(data=fata05_NH, from=c("X2005"), to=c("Fatalities"))

fata05_NH$Year=2005

fata06_NH=subset(fata06_NH, select=c("County", "X2006"))

fata06_NH=rename.vars(data=fata06_NH, from=c("X2006"), to=c("Fatalities"))

fata06_NH$Year=2006

fata07_NH=subset(fata07_NH, select=c("County", "X2007"))

fata07_NH=rename.vars(data=fata07_NH, from=c("X2007"), to=c("Fatalities"))

fata07_NH$Year=2007

fata08_NH=subset(fata08_NH, select=c("County", "X2008"))

fata08_NH=rename.vars(data=fata08_NH, from=c("X2008"), to=c("Fatalities"))

fata08_NH$Year=2008

fata09_NH=subset(fata09_NH, select=c("County", "X2009"))

fata09_NH=rename.vars(data=fata09_NH, from=c("X2009"), to=c("Fatalities"))

fata09_NH$Year=2009

fata10_NH=subset(fata10_NH, select=c("County", "X2010"))

fata10_NH=rename.vars(data=fata10_NH, from=c("X2010"), to=c("Fatalities"))

fata10_NH$Year=2010

fata11_NH=subset(fata11_NH, select=c("County", "X2011"))

fata11_NH=rename.vars(data=fata11_NH, from=c("X2011"), to=c("Fatalities"))

fata11_NH$Year=2011





fata_NH=rbind(fata03_NH,fata04_NH,fata05_NH,fata06_NH,fata07_NH,fata08_NH,fata09_NH,fata10_NH,fata11_NH)

fata_NH=subset(fata_NH, County!="NOT APPLICABLE (000)")

fata_NH=subset(fata_NH, County!="OTHER (997)")

fata_NH=subset(fata_NH, County!="UNKNOWN (999)")

fata_NH=subset(fata_NH, County!="Total")

fata_NH = subset(fata_NH, County != "Not Reported")



fata_NH$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_NH$County)

fata_NH$County = paste(fata_NH$County, "County")

fata_NH$County = toupper(fata_NH$County)



fata_NH=subset(fata_NH, Fatalities!="NA")

final_NH = merge(est_NH, fata_NH, by = c("County", "Year"))

final_NH = transform(final_NH, Population = (as.numeric(final_NH$Poverty.Estimate.All.Ages)*100)/as.numeric(final_NH$Poverty.Percent.All.Ages))

final_NH = transform(final_NH, Fatalities.Percent = (as.numeric(final_NH$Fatalities)*100)/as.numeric(final_NH$Population))

final_NH=rename.vars (final_NH, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_NH=rename.vars (final_NH, from="Fatalities.Percent", to="Fatalities Percent")

final_NH=rename.vars (final_NH, from="Fatalities", to="Fatalities Count")

final_NH=rename.vars (final_NH, from="Median.Household.Income", to="Median Income")

final_NH=rename.vars (final_NH, from="Poverty.Percent.All.Ages", to="Poverty Percent")


commute_NH=read.csv("Commute time/Commute_Time_Data.csv")

commute_NH=commute_NH[which(commute_NH$State=="NH"),]

commute_NH=rename.vars(data=commute_NH, from=c("State"), to=c("Postal"))

commute_NH$County = paste(commute_NH$County, "County")

commute_NH$County = toupper(commute_NH$County)

final_NH=merge(final_NH,commute_NH, by = c("Postal", "County"))

final_NH=rename.vars (final_NH, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_NH=subset(final_NH, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_NH,file="NH.csv")
