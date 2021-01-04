require(gdata)

setwd("data")

est03_NM = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_NM = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_NM = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_NM = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_NM = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_NM = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_NM = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_NM = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_NM = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_NM=subset(est03_NM, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_NM=est03_NM[which(est03_NM$Postal == "NM"),]

est03_NM = est03_NM[which(est03_NM$Name != "New Mexico"),]

est03_NM=subset(est03_NM,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_NM$Year=2003

est04_NM=subset(est04_NM, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_NM=est04_NM[which(est04_NM$Postal == "NM"),]

est04_NM = est04_NM[which(est04_NM$Name != "New Mexico"),]

est04_NM=subset(est04_NM,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_NM$Year=2004

est05_NM=subset(est05_NM, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_NM=est05_NM[which(est05_NM$Postal == "NM"),]

est05_NM = est05_NM[which(est05_NM$Name != "New Mexico"),]

est05_NM=subset(est05_NM,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_NM$Year=2005

est06_NM=subset(est06_NM, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_NM=est06_NM[which(est06_NM$Postal == "NM"),]

est06_NM = est06_NM[which(est06_NM$Name != "New Mexico"),]

est06_NM=subset(est06_NM,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_NM$Year=2006

est07_NM=subset(est07_NM, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_NM=est07_NM[which(est07_NM$Postal == "NM"),]

est07_NM = est07_NM[which(est07_NM$Name != "New Mexico"),]

est07_NM=subset(est07_NM,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_NM$Year=2007

est08_NM=subset(est08_NM, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_NM=est08_NM[which(est08_NM$Postal == "NM"),]

est08_NM = est08_NM[which(est08_NM$Name != "New Mexico"),]

est08_NM=subset(est08_NM,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_NM$Year=2008

est09_NM=subset(est09_NM, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_NM=est09_NM[which(est09_NM$Postal == "NM"),]

est09_NM = est09_NM[which(est09_NM$Name != "New Mexico"),]

est09_NM=subset(est09_NM,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_NM$Year=2009

est10_NM=subset(est10_NM, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_NM=est10_NM[which(est10_NM$Postal == "NM"),]

est10_NM = est10_NM[which(est10_NM$Name != "New Mexico"),]

est10_NM=subset(est10_NM,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_NM$Year=2010

est11_NM=subset(est11_NM, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_NM=est11_NM[which(est11_NM$Postal == "NM"),]

est11_NM = est11_NM[which(est11_NM$Name != "New Mexico"),]

est11_NM=subset(est11_NM,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_NM$Year=2011



est_NM=rbind(est06_NM,est07_NM,est08_NM,est09_NM, est03_NM,est04_NM,est05_NM,est10_NM,est11_NM)

est_NM = est_NM[order(est_NM$Year),]

est_NM=rename.vars(data=est_NM, from=c("Name"), to=c("County"))

est_NM$County = toupper(est_NM$County)



fata03_NM=read.xls("Fatalities/2003_2004_By_County/New Mexico.xls", header=TRUE)

fata04_NM=read.xls("Fatalities/2003_2004_By_County/New Mexico.xls", header=TRUE)

fata05_NM=read.xls("Fatalities/2005_2006_By_County/New Mexico.xls", header=TRUE)

fata06_NM=read.xls("Fatalities/2005_2006_By_County/New Mexico.xls", header=TRUE)

fata07_NM=read.xls("Fatalities/2006_2007_By_County/New_Mexico_06_07.xls", header=TRUE)

fata08_NM=read.xls("Fatalities/2008_2009_By_County/New_Mexico_08_09.xls", header=TRUE)

fata09_NM=read.xls("Fatalities/2008_2009_By_County/New_Mexico_08_09.xls", header=TRUE)

fata10_NM=read.xls("Fatalities/2010_2011_By_County/New_Mexico_10_11.xls", header=TRUE)

fata11_NM=read.xls("Fatalities/2010_2011_By_County/New_Mexico_10_11.xls", header=TRUE)

fata03_NM=subset(fata03_NM, select=c("County", "X2003"))

fata03_NM=rename.vars(data=fata03_NM, from=c("X2003"), to=c("Fatalities"))

fata03_NM$Year=2003

fata04_NM=subset(fata04_NM, select=c("County", "X2004"))

fata04_NM=rename.vars(data=fata04_NM, from=c("X2004"), to=c("Fatalities"))

fata04_NM$Year=2004

fata05_NM=subset(fata05_NM, select=c("County", "X2005"))

fata05_NM=rename.vars(data=fata05_NM, from=c("X2005"), to=c("Fatalities"))

fata05_NM$Year=2005

fata06_NM=subset(fata06_NM, select=c("County", "X2006"))

fata06_NM=rename.vars(data=fata06_NM, from=c("X2006"), to=c("Fatalities"))

fata06_NM$Year=2006

fata07_NM=subset(fata07_NM, select=c("County", "X2007"))

fata07_NM=rename.vars(data=fata07_NM, from=c("X2007"), to=c("Fatalities"))

fata07_NM$Year=2007

fata08_NM=subset(fata08_NM, select=c("County", "X2008"))

fata08_NM=rename.vars(data=fata08_NM, from=c("X2008"), to=c("Fatalities"))

fata08_NM$Year=2008

fata09_NM=subset(fata09_NM, select=c("County", "X2009"))

fata09_NM=rename.vars(data=fata09_NM, from=c("X2009"), to=c("Fatalities"))

fata09_NM$Year=2009

fata10_NM=subset(fata10_NM, select=c("County", "X2010"))

fata10_NM=rename.vars(data=fata10_NM, from=c("X2010"), to=c("Fatalities"))

fata10_NM$Year=2010

fata11_NM=subset(fata11_NM, select=c("County", "X2011"))

fata11_NM=rename.vars(data=fata11_NM, from=c("X2011"), to=c("Fatalities"))

fata11_NM$Year=2011





fata_NM=rbind(fata03_NM,fata04_NM,fata05_NM,fata06_NM,fata07_NM,fata08_NM,fata09_NM,fata10_NM,fata11_NM)

fata_NM=subset(fata_NM, County!="NOT APPLICABLE (000)")

fata_NM=subset(fata_NM, County!="OTHER (997)")

fata_NM=subset(fata_NM, County!="UNKNOWN (999)")

fata_NM=subset(fata_NM, County!="Total")

fata_NM = subset(fata_NM, County != "Not Reported")



fata_NM$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_NM$County)

fata_NM$County = paste(fata_NM$County, "County")

fata_NM$County = toupper(fata_NM$County)



fata_NM=subset(fata_NM, Fatalities!="NA")

final_NM = merge(est_NM, fata_NM, by = c("County", "Year"))

final_NM = transform(final_NM, Population = (as.numeric(final_NM$Poverty.Estimate.All.Ages)*100)/as.numeric(final_NM$Poverty.Percent.All.Ages))

final_NM = transform(final_NM, Fatalities.Percent = (as.numeric(final_NM$Fatalities)*100)/as.numeric(final_NM$Population))

final_NM=rename.vars (final_NM, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_NM=rename.vars (final_NM, from="Fatalities.Percent", to="Fatalities Percent")

final_NM=rename.vars (final_NM, from="Fatalities", to="Fatalities Count")

final_NM=rename.vars (final_NM, from="Median.Household.Income", to="Median Income")

final_NM=rename.vars (final_NM, from="Poverty.Percent.All.Ages", to="Poverty Percent")


commute_NM=read.csv("Commute time/Commute_Time_Data.csv")

commute_NM=commute_NM[which(commute_NM$State=="NM"),]

commute_NM=rename.vars(data=commute_NM, from=c("State"), to=c("Postal"))

commute_NM$County = paste(commute_NM$County, "County")

commute_NM$County = toupper(commute_NM$County)

final_NM=merge(final_NM,commute_NM, by = c("Postal", "County"))

final_NM=rename.vars (final_NM, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_NM=subset(final_NM, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_NM,file="NM.csv")
