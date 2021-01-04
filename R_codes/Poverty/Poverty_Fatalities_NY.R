require(gdata)

setwd("data")

est03_NY = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_NY = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_NY = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_NY = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_NY = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_NY = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_NY = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_NY = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_NY = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_NY=subset(est03_NY, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_NY=est03_NY[which(est03_NY$Postal == "NY"),]

est03_NY = est03_NY[which(est03_NY$Name != "New York"),]

est03_NY=subset(est03_NY,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_NY$Year=2003

est04_NY=subset(est04_NY, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_NY=est04_NY[which(est04_NY$Postal == "NY"),]

est04_NY = est04_NY[which(est04_NY$Name != "New York"),]

est04_NY=subset(est04_NY,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_NY$Year=2004

est05_NY=subset(est05_NY, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_NY=est05_NY[which(est05_NY$Postal == "NY"),]

est05_NY = est05_NY[which(est05_NY$Name != "New York"),]

est05_NY=subset(est05_NY,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_NY$Year=2005

est06_NY=subset(est06_NY, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_NY=est06_NY[which(est06_NY$Postal == "NY"),]

est06_NY = est06_NY[which(est06_NY$Name != "New York"),]

est06_NY=subset(est06_NY,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_NY$Year=2006

est07_NY=subset(est07_NY, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_NY=est07_NY[which(est07_NY$Postal == "NY"),]

est07_NY = est07_NY[which(est07_NY$Name != "New York"),]

est07_NY=subset(est07_NY,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_NY$Year=2007

est08_NY=subset(est08_NY, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_NY=est08_NY[which(est08_NY$Postal == "NY"),]

est08_NY = est08_NY[which(est08_NY$Name != "New York"),]

est08_NY=subset(est08_NY,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_NY$Year=2008

est09_NY=subset(est09_NY, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_NY=est09_NY[which(est09_NY$Postal == "NY"),]

est09_NY = est09_NY[which(est09_NY$Name != "New York"),]

est09_NY=subset(est09_NY,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_NY$Year=2009

est10_NY=subset(est10_NY, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_NY=est10_NY[which(est10_NY$Postal == "NY"),]

est10_NY = est10_NY[which(est10_NY$Name != "New York"),]

est10_NY=subset(est10_NY,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_NY$Year=2010

est11_NY=subset(est11_NY, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_NY=est11_NY[which(est11_NY$Postal == "NY"),]

est11_NY = est11_NY[which(est11_NY$Name != "New York"),]

est11_NY=subset(est11_NY,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_NY$Year=2011



est_NY=rbind(est06_NY,est07_NY,est08_NY,est09_NY, est03_NY,est04_NY,est05_NY,est10_NY,est11_NY)

est_NY = est_NY[order(est_NY$Year),]

est_NY=rename.vars(data=est_NY, from=c("Name"), to=c("County"))

est_NY$County = toupper(est_NY$County)



fata03_NY=read.xls("Fatalities/2003_2004_By_County/New York.xls", header=TRUE)

fata04_NY=read.xls("Fatalities/2003_2004_By_County/New York.xls", header=TRUE)

fata05_NY=read.xls("Fatalities/2005_2006_By_County/New York.xls", header=TRUE)

fata06_NY=read.xls("Fatalities/2005_2006_By_County/New York.xls", header=TRUE)

fata07_NY=read.xls("Fatalities/2006_2007_By_County/New_York_06_07.xls", header=TRUE)

fata08_NY=read.xls("Fatalities/2008_2009_By_County/New_York_08_09.xls", header=TRUE)

fata09_NY=read.xls("Fatalities/2008_2009_By_County/New_York_08_09.xls", header=TRUE)

fata10_NY=read.xls("Fatalities/2010_2011_By_County/New_York_10_11.xls", header=TRUE)

fata11_NY=read.xls("Fatalities/2010_2011_By_County/New_York_10_11.xls", header=TRUE)

fata03_NY=subset(fata03_NY, select=c("County", "X2003"))

fata03_NY=rename.vars(data=fata03_NY, from=c("X2003"), to=c("Fatalities"))

fata03_NY$Year=2003

fata04_NY=subset(fata04_NY, select=c("County", "X2004"))

fata04_NY=rename.vars(data=fata04_NY, from=c("X2004"), to=c("Fatalities"))

fata04_NY$Year=2004

fata05_NY=subset(fata05_NY, select=c("County", "X2005"))

fata05_NY=rename.vars(data=fata05_NY, from=c("X2005"), to=c("Fatalities"))

fata05_NY$Year=2005

fata06_NY=subset(fata06_NY, select=c("County", "X2006"))

fata06_NY=rename.vars(data=fata06_NY, from=c("X2006"), to=c("Fatalities"))

fata06_NY$Year=2006

fata07_NY=subset(fata07_NY, select=c("County", "X2007"))

fata07_NY=rename.vars(data=fata07_NY, from=c("X2007"), to=c("Fatalities"))

fata07_NY$Year=2007

fata08_NY=subset(fata08_NY, select=c("County", "X2008"))

fata08_NY=rename.vars(data=fata08_NY, from=c("X2008"), to=c("Fatalities"))

fata08_NY$Year=2008

fata09_NY=subset(fata09_NY, select=c("County", "X2009"))

fata09_NY=rename.vars(data=fata09_NY, from=c("X2009"), to=c("Fatalities"))

fata09_NY$Year=2009

fata10_NY=subset(fata10_NY, select=c("County", "X2010"))

fata10_NY=rename.vars(data=fata10_NY, from=c("X2010"), to=c("Fatalities"))

fata10_NY$Year=2010

fata11_NY=subset(fata11_NY, select=c("County", "X2011"))

fata11_NY=rename.vars(data=fata11_NY, from=c("X2011"), to=c("Fatalities"))

fata11_NY$Year=2011





fata_NY=rbind(fata03_NY,fata04_NY,fata05_NY,fata06_NY,fata07_NY,fata08_NY,fata09_NY,fata10_NY,fata11_NY)

fata_NY=subset(fata_NY, County!="NOT APPLICABLE (000)")

fata_NY=subset(fata_NY, County!="OTHER (997)")

fata_NY=subset(fata_NY, County!="UNKNOWN (999)")

fata_NY=subset(fata_NY, County!="Total")

fata_NY = subset(fata_NY, County != "Not Reported")



fata_NY$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_NY$County)

fata_NY$County = paste(fata_NY$County, "County")

fata_NY$County = toupper(fata_NY$County)



fata_NY=subset(fata_NY, Fatalities!="NA")

final_NY = merge(est_NY, fata_NY, by = c("County", "Year"))

final_NY = transform(final_NY, Population = (as.numeric(final_NY$Poverty.Estimate.All.Ages)*100)/as.numeric(final_NY$Poverty.Percent.All.Ages))

final_NY = transform(final_NY, Fatalities.Percent = (as.numeric(final_NY$Fatalities)*100)/as.numeric(final_NY$Population))

final_NY=rename.vars (final_NY, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_NY=rename.vars (final_NY, from="Fatalities.Percent", to="Fatalities Percent")

final_NY=rename.vars (final_NY, from="Fatalities", to="Fatalities Count")

final_NY=rename.vars (final_NY, from="Median.Household.Income", to="Median Income")

final_NY=rename.vars (final_NY, from="Poverty.Percent.All.Ages", to="Poverty Percent")


commute_NY=read.csv("Commute time/Commute_Time_Data.csv")

commute_NY=commute_NY[which(commute_NY$State=="NY"),]

commute_NY=rename.vars(data=commute_NY, from=c("State"), to=c("Postal"))

commute_NY$County = paste(commute_NY$County, "County")

commute_NY$County = toupper(commute_NY$County)

final_NY=merge(final_NY,commute_NY, by = c("Postal", "County"))

final_NY=rename.vars (final_NY, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_NY=subset(final_NY, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_NY,file="NY.csv")
