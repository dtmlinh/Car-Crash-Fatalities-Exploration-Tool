require(gdata)

setwd("data")

est03_ID = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_ID = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_ID = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_ID = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_ID = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_ID = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_ID = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_ID = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_ID = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_ID=subset(est03_ID, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_ID=est03_ID[which(est03_ID$Postal == "ID"),]

est03_ID = est03_ID[which(est03_ID$Name != "Idaho"),]

est03_ID=subset(est03_ID,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_ID$Year=2003

est04_ID=subset(est04_ID, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_ID=est04_ID[which(est04_ID$Postal == "ID"),]

est04_ID = est04_ID[which(est04_ID$Name != "Idaho"),]

est04_ID=subset(est04_ID,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_ID$Year=2004

est05_ID=subset(est05_ID, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_ID=est05_ID[which(est05_ID$Postal == "ID"),]

est05_ID = est05_ID[which(est05_ID$Name != "Idaho"),]

est05_ID=subset(est05_ID,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_ID$Year=2005

est06_ID=subset(est06_ID, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_ID=est06_ID[which(est06_ID$Postal == "ID"),]

est06_ID = est06_ID[which(est06_ID$Name != "Idaho"),]

est06_ID=subset(est06_ID,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_ID$Year=2006

est07_ID=subset(est07_ID, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_ID=est07_ID[which(est07_ID$Postal == "ID"),]

est07_ID = est07_ID[which(est07_ID$Name != "Idaho"),]

est07_ID=subset(est07_ID,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_ID$Year=2007

est08_ID=subset(est08_ID, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_ID=est08_ID[which(est08_ID$Postal == "ID"),]

est08_ID = est08_ID[which(est08_ID$Name != "Idaho"),]

est08_ID=subset(est08_ID,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_ID$Year=2008

est09_ID=subset(est09_ID, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_ID=est09_ID[which(est09_ID$Postal == "ID"),]

est09_ID = est09_ID[which(est09_ID$Name != "Idaho"),]

est09_ID=subset(est09_ID,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_ID$Year=2009

est10_ID=subset(est10_ID, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_ID=est10_ID[which(est10_ID$Postal == "ID"),]

est10_ID = est10_ID[which(est10_ID$Name != "Idaho"),]

est10_ID=subset(est10_ID,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_ID$Year=2010

est11_ID=subset(est11_ID, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_ID=est11_ID[which(est11_ID$Postal == "ID"),]

est11_ID = est11_ID[which(est11_ID$Name != "Idaho"),]

est11_ID=subset(est11_ID,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_ID$Year=2011



est_ID=rbind(est06_ID,est07_ID,est08_ID,est09_ID, est03_ID,est04_ID,est05_ID,est10_ID,est11_ID)

est_ID = est_ID[order(est_ID$Year),]

est_ID=rename.vars(data=est_ID, from=c("Name"), to=c("County"))

est_ID$County = toupper(est_ID$County)



fata03_ID=read.xls("Fatalities/2003_2004_By_County/idaho.xls", header=TRUE)

fata04_ID=read.xls("Fatalities/2003_2004_By_County/idaho.xls", header=TRUE)

fata05_ID=read.xls("Fatalities/2005_2006_By_County/idaho.xls", header=TRUE)

fata06_ID=read.xls("Fatalities/2005_2006_By_County/idaho.xls", header=TRUE)

fata07_ID=read.xls("Fatalities/2006_2007_By_County/Idaho_06_07.xls", header=TRUE)

fata08_ID=read.xls("Fatalities/2008_2009_By_County/Idaho_08_09.xls", header=TRUE)

fata09_ID=read.xls("Fatalities/2008_2009_By_County/Idaho_08_09.xls", header=TRUE)

fata10_ID=read.xls("Fatalities/2010_2011_By_County/Idaho_10_11.xls", header=TRUE)

fata11_ID=read.xls("Fatalities/2010_2011_By_County/Idaho_10_11.xls", header=TRUE)

fata03_ID=subset(fata03_ID, select=c("County", "X2003"))

fata03_ID=rename.vars(data=fata03_ID, from=c("X2003"), to=c("Fatalities"))

fata03_ID$Year=2003

fata04_ID=subset(fata04_ID, select=c("County", "X2004"))

fata04_ID=rename.vars(data=fata04_ID, from=c("X2004"), to=c("Fatalities"))

fata04_ID$Year=2004

fata05_ID=subset(fata05_ID, select=c("County", "X2005"))

fata05_ID=rename.vars(data=fata05_ID, from=c("X2005"), to=c("Fatalities"))

fata05_ID$Year=2005

fata06_ID=subset(fata06_ID, select=c("County", "X2006"))

fata06_ID=rename.vars(data=fata06_ID, from=c("X2006"), to=c("Fatalities"))

fata06_ID$Year=2006

fata07_ID=subset(fata07_ID, select=c("County", "X2007"))

fata07_ID=rename.vars(data=fata07_ID, from=c("X2007"), to=c("Fatalities"))

fata07_ID$Year=2007

fata08_ID=subset(fata08_ID, select=c("County", "X2008"))

fata08_ID=rename.vars(data=fata08_ID, from=c("X2008"), to=c("Fatalities"))

fata08_ID$Year=2008

fata09_ID=subset(fata09_ID, select=c("County", "X2009"))

fata09_ID=rename.vars(data=fata09_ID, from=c("X2009"), to=c("Fatalities"))

fata09_ID$Year=2009

fata10_ID=subset(fata10_ID, select=c("County", "X2010"))

fata10_ID=rename.vars(data=fata10_ID, from=c("X2010"), to=c("Fatalities"))

fata10_ID$Year=2010

fata11_ID=subset(fata11_ID, select=c("County", "X2011"))

fata11_ID=rename.vars(data=fata11_ID, from=c("X2011"), to=c("Fatalities"))

fata11_ID$Year=2011





fata_ID=rbind(fata03_ID,fata04_ID,fata05_ID,fata06_ID,fata07_ID,fata08_ID,fata09_ID,fata10_ID,fata11_ID)

fata_ID=subset(fata_ID, County!="NOT APPLICABLE (000)")

fata_ID=subset(fata_ID, County!="OTHER (997)")

fata_ID=subset(fata_ID, County!="UNKNOWN (999)")

fata_ID=subset(fata_ID, County!="Total")

fata_ID = subset(fata_ID, County != "Not Reported")



fata_ID$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_ID$County)

fata_ID$County = paste(fata_ID$County, "County")

fata_ID$County = toupper(fata_ID$County)



fata_ID=subset(fata_ID, Fatalities!="NA")

final_ID = merge(est_ID, fata_ID, by = c("County", "Year"))

final_ID = transform(final_ID, Population = (as.numeric(final_ID$Poverty.Estimate.All.Ages)*100)/as.numeric(final_ID$Poverty.Percent.All.Ages))

final_ID = transform(final_ID, Fatalities.Percent = (as.numeric(final_ID$Fatalities)*100)/as.numeric(final_ID$Population))

final_ID=rename.vars (final_ID, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_ID=rename.vars (final_ID, from="Fatalities.Percent", to="Fatalities Percent")

final_ID=rename.vars (final_ID, from="Fatalities", to="Fatalities Count")

final_ID=rename.vars (final_ID, from="Median.Household.Income", to="Median Income")

final_ID=rename.vars (final_ID, from="Poverty.Percent.All.Ages", to="Poverty Percent")


commute_ID=read.csv("Commute time/Commute_Time_Data.csv")

commute_ID=commute_ID[which(commute_ID$State=="ID"),]

commute_ID=rename.vars(data=commute_ID, from=c("State"), to=c("Postal"))

commute_ID$County = paste(commute_ID$County, "County")

commute_ID$County = toupper(commute_ID$County)

final_ID=merge(final_ID,commute_ID, by = c("Postal", "County"))

final_ID=rename.vars (final_ID, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_ID=subset(final_ID, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_ID,file="ID.csv")
