require(gdata)

setwd("data")

est03_WA = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_WA = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_WA = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_WA = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_WA = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_WA = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_WA = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_WA = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_WA = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_WA=subset(est03_WA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_WA=est03_WA[which(est03_WA$Postal == "WA"),]

est03_WA = est03_WA[which(est03_WA$Name != "Washington"),]

est03_WA=subset(est03_WA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_WA$Year=2003

est04_WA=subset(est04_WA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_WA=est04_WA[which(est04_WA$Postal == "WA"),]

est04_WA = est04_WA[which(est04_WA$Name != "Washington"),]

est04_WA=subset(est04_WA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_WA$Year=2004

est05_WA=subset(est05_WA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_WA=est05_WA[which(est05_WA$Postal == "WA"),]

est05_WA = est05_WA[which(est05_WA$Name != "Washington"),]

est05_WA=subset(est05_WA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_WA$Year=2005

est06_WA=subset(est06_WA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_WA=est06_WA[which(est06_WA$Postal == "WA"),]

est06_WA = est06_WA[which(est06_WA$Name != "Washington"),]

est06_WA=subset(est06_WA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_WA$Year=2006

est07_WA=subset(est07_WA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_WA=est07_WA[which(est07_WA$Postal == "WA"),]

est07_WA = est07_WA[which(est07_WA$Name != "Washington"),]

est07_WA=subset(est07_WA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_WA$Year=2007

est08_WA=subset(est08_WA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_WA=est08_WA[which(est08_WA$Postal == "WA"),]

est08_WA = est08_WA[which(est08_WA$Name != "Washington"),]

est08_WA=subset(est08_WA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_WA$Year=2008

est09_WA=subset(est09_WA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_WA=est09_WA[which(est09_WA$Postal == "WA"),]

est09_WA = est09_WA[which(est09_WA$Name != "Washington"),]

est09_WA=subset(est09_WA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_WA$Year=2009

est10_WA=subset(est10_WA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_WA=est10_WA[which(est10_WA$Postal == "WA"),]

est10_WA = est10_WA[which(est10_WA$Name != "Washington"),]

est10_WA=subset(est10_WA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_WA$Year=2010

est11_WA=subset(est11_WA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_WA=est11_WA[which(est11_WA$Postal == "WA"),]

est11_WA = est11_WA[which(est11_WA$Name != "Washington"),]

est11_WA=subset(est11_WA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_WA$Year=2011



est_WA=rbind(est06_WA,est07_WA,est08_WA,est09_WA, est03_WA,est04_WA,est05_WA,est10_WA,est11_WA)

est_WA = est_WA[order(est_WA$Year),]

est_WA=rename.vars(data=est_WA, from=c("Name"), to=c("County"))

est_WA$County = toupper(est_WA$County)



fata03_WA=read.xls("Fatalities/2003_2004_By_County/Washington.xls", header=TRUE)

fata04_WA=read.xls("Fatalities/2003_2004_By_County/Washington.xls", header=TRUE)

fata05_WA=read.xls("Fatalities/2005_2006_By_County/Washington.xls", header=TRUE)

fata06_WA=read.xls("Fatalities/2005_2006_By_County/Washington.xls", header=TRUE)

fata07_WA=read.xls("Fatalities/2006_2007_By_County/Washington_06_07.xls", header=TRUE)

fata08_WA=read.xls("Fatalities/2008_2009_By_County/Washington_08_09.xls", header=TRUE)

fata09_WA=read.xls("Fatalities/2008_2009_By_County/Washington_08_09.xls", header=TRUE)

fata10_WA=read.xls("Fatalities/2010_2011_By_County/Washington_10_11.xls", header=TRUE)

fata11_WA=read.xls("Fatalities/2010_2011_By_County/Washington_10_11.xls", header=TRUE)

fata03_WA=subset(fata03_WA, select=c("County", "X2003"))

fata03_WA=rename.vars(data=fata03_WA, from=c("X2003"), to=c("Fatalities"))

fata03_WA$Year=2003

fata04_WA=subset(fata04_WA, select=c("County", "X2004"))

fata04_WA=rename.vars(data=fata04_WA, from=c("X2004"), to=c("Fatalities"))

fata04_WA$Year=2004

fata05_WA=subset(fata05_WA, select=c("County", "X2005"))

fata05_WA=rename.vars(data=fata05_WA, from=c("X2005"), to=c("Fatalities"))

fata05_WA$Year=2005

fata06_WA=subset(fata06_WA, select=c("County", "X2006"))

fata06_WA=rename.vars(data=fata06_WA, from=c("X2006"), to=c("Fatalities"))

fata06_WA$Year=2006

fata07_WA=subset(fata07_WA, select=c("County", "X2007"))

fata07_WA=rename.vars(data=fata07_WA, from=c("X2007"), to=c("Fatalities"))

fata07_WA$Year=2007

fata08_WA=subset(fata08_WA, select=c("County", "X2008"))

fata08_WA=rename.vars(data=fata08_WA, from=c("X2008"), to=c("Fatalities"))

fata08_WA$Year=2008

fata09_WA=subset(fata09_WA, select=c("County", "X2009"))

fata09_WA=rename.vars(data=fata09_WA, from=c("X2009"), to=c("Fatalities"))

fata09_WA$Year=2009

fata10_WA=subset(fata10_WA, select=c("County", "X2010"))

fata10_WA=rename.vars(data=fata10_WA, from=c("X2010"), to=c("Fatalities"))

fata10_WA$Year=2010

fata11_WA=subset(fata11_WA, select=c("County", "X2011"))

fata11_WA=rename.vars(data=fata11_WA, from=c("X2011"), to=c("Fatalities"))

fata11_WA$Year=2011





fata_WA=rbind(fata03_WA,fata04_WA,fata05_WA,fata06_WA,fata07_WA,fata08_WA,fata09_WA,fata10_WA,fata11_WA)

fata_WA=subset(fata_WA, County!="NOT APPLICABLE (000)")

fata_WA=subset(fata_WA, County!="OTHER (997)")

fata_WA=subset(fata_WA, County!="UNKNOWN (999)")

fata_WA=subset(fata_WA, County!="Total")

fata_WA = subset(fata_WA, County != "Not Reported")



fata_WA$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_WA$County)

fata_WA$County = paste(fata_WA$County, "County")

fata_WA$County = toupper(fata_WA$County)



fata_WA=subset(fata_WA, Fatalities!="NA")

final_WA = merge(est_WA, fata_WA, by = c("County", "Year"))

final_WA = transform(final_WA, Population = (as.numeric(final_WA$Poverty.Estimate.All.Ages)*100)/as.numeric(final_WA$Poverty.Percent.All.Ages))

final_WA = transform(final_WA, Fatalities.Percent = (as.numeric(final_WA$Fatalities)*100)/as.numeric(final_WA$Population))

final_WA=rename.vars (final_WA, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_WA=rename.vars (final_WA, from="Fatalities.Percent", to="Fatalities Percent")

final_WA=rename.vars (final_WA, from="Fatalities", to="Fatalities Count")

final_WA=rename.vars (final_WA, from="Median.Household.Income", to="Median Income")

final_WA=rename.vars (final_WA, from="Poverty.Percent.All.Ages", to="Poverty Percent")


commute_WA=read.csv("Commute time/Commute_Time_Data.csv")

commute_WA=commute_WA[which(commute_WA$State=="WA"),]

commute_WA=rename.vars(data=commute_WA, from=c("State"), to=c("Postal"))

commute_WA$County = paste(commute_WA$County, "County")

commute_WA$County = toupper(commute_WA$County)

final_WA=merge(final_WA,commute_WA, by = c("Postal", "County"))

final_WA=rename.vars (final_WA, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_WA=subset(final_WA, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_WA,file="WA.csv")
