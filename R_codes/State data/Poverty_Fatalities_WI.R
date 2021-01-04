require(gdata)

setwd("data")

est03_WI = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_WI = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_WI = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_WI = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_WI = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_WI = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_WI = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_WI = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_WI = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_WI=subset(est03_WI, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_WI=est03_WI[which(est03_WI$Postal == "WI"),]

est03_WI = est03_WI[which(est03_WI$Name != "Wisconsin"),]

est03_WI=subset(est03_WI,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_WI$Year=2003

est04_WI=subset(est04_WI, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_WI=est04_WI[which(est04_WI$Postal == "WI"),]

est04_WI = est04_WI[which(est04_WI$Name != "Wisconsin"),]

est04_WI=subset(est04_WI,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_WI$Year=2004

est05_WI=subset(est05_WI, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_WI=est05_WI[which(est05_WI$Postal == "WI"),]

est05_WI = est05_WI[which(est05_WI$Name != "Wisconsin"),]

est05_WI=subset(est05_WI,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_WI$Year=2005

est06_WI=subset(est06_WI, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_WI=est06_WI[which(est06_WI$Postal == "WI"),]

est06_WI = est06_WI[which(est06_WI$Name != "Wisconsin"),]

est06_WI=subset(est06_WI,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_WI$Year=2006

est07_WI=subset(est07_WI, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_WI=est07_WI[which(est07_WI$Postal == "WI"),]

est07_WI = est07_WI[which(est07_WI$Name != "Wisconsin"),]

est07_WI=subset(est07_WI,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_WI$Year=2007

est08_WI=subset(est08_WI, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_WI=est08_WI[which(est08_WI$Postal == "WI"),]

est08_WI = est08_WI[which(est08_WI$Name != "Wisconsin"),]

est08_WI=subset(est08_WI,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_WI$Year=2008

est09_WI=subset(est09_WI, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_WI=est09_WI[which(est09_WI$Postal == "WI"),]

est09_WI = est09_WI[which(est09_WI$Name != "Wisconsin"),]

est09_WI=subset(est09_WI,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_WI$Year=2009

est10_WI=subset(est10_WI, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_WI=est10_WI[which(est10_WI$Postal == "WI"),]

est10_WI = est10_WI[which(est10_WI$Name != "Wisconsin"),]

est10_WI=subset(est10_WI,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_WI$Year=2010

est11_WI=subset(est11_WI, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_WI=est11_WI[which(est11_WI$Postal == "WI"),]

est11_WI = est11_WI[which(est11_WI$Name != "Wisconsin"),]

est11_WI=subset(est11_WI,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_WI$Year=2011



est_WI=rbind(est06_WI,est07_WI,est08_WI,est09_WI, est03_WI,est04_WI,est05_WI,est10_WI,est11_WI)

est_WI = est_WI[order(est_WI$Year),]

est_WI=rename.vars(data=est_WI, from=c("Name"), to=c("County"))

est_WI$County = toupper(est_WI$County)



fata03_WI=read.xls("Fatalities/2003_2004_By_County/Wisconsin.xls", header=TRUE)

fata04_WI=read.xls("Fatalities/2003_2004_By_County/Wisconsin.xls", header=TRUE)

fata05_WI=read.xls("Fatalities/2005_2006_By_County/Wisconsin.xls", header=TRUE)

fata06_WI=read.xls("Fatalities/2005_2006_By_County/Wisconsin.xls", header=TRUE)

fata07_WI=read.xls("Fatalities/2006_2007_By_County/Wisconsin_06_07.xls", header=TRUE)

fata08_WI=read.xls("Fatalities/2008_2009_By_County/Wisconsin_08_09.xls", header=TRUE)

fata09_WI=read.xls("Fatalities/2008_2009_By_County/Wisconsin_08_09.xls", header=TRUE)

fata10_WI=read.xls("Fatalities/2010_2011_By_County/Wisconsin_10_11.xls", header=TRUE)

fata11_WI=read.xls("Fatalities/2010_2011_By_County/Wisconsin_10_11.xls", header=TRUE)

fata03_WI=subset(fata03_WI, select=c("County", "X2003"))

fata03_WI=rename.vars(data=fata03_WI, from=c("X2003"), to=c("Fatalities"))

fata03_WI$Year=2003

fata04_WI=subset(fata04_WI, select=c("County", "X2004"))

fata04_WI=rename.vars(data=fata04_WI, from=c("X2004"), to=c("Fatalities"))

fata04_WI$Year=2004

fata05_WI=subset(fata05_WI, select=c("County", "X2005"))

fata05_WI=rename.vars(data=fata05_WI, from=c("X2005"), to=c("Fatalities"))

fata05_WI$Year=2005

fata06_WI=subset(fata06_WI, select=c("County", "X2006"))

fata06_WI=rename.vars(data=fata06_WI, from=c("X2006"), to=c("Fatalities"))

fata06_WI$Year=2006

fata07_WI=subset(fata07_WI, select=c("County", "X2007"))

fata07_WI=rename.vars(data=fata07_WI, from=c("X2007"), to=c("Fatalities"))

fata07_WI$Year=2007

fata08_WI=subset(fata08_WI, select=c("County", "X2008"))

fata08_WI=rename.vars(data=fata08_WI, from=c("X2008"), to=c("Fatalities"))

fata08_WI$Year=2008

fata09_WI=subset(fata09_WI, select=c("County", "X2009"))

fata09_WI=rename.vars(data=fata09_WI, from=c("X2009"), to=c("Fatalities"))

fata09_WI$Year=2009

fata10_WI=subset(fata10_WI, select=c("County", "X2010"))

fata10_WI=rename.vars(data=fata10_WI, from=c("X2010"), to=c("Fatalities"))

fata10_WI$Year=2010

fata11_WI=subset(fata11_WI, select=c("County", "X2011"))

fata11_WI=rename.vars(data=fata11_WI, from=c("X2011"), to=c("Fatalities"))

fata11_WI$Year=2011





fata_WI=rbind(fata03_WI,fata04_WI,fata05_WI,fata06_WI,fata07_WI,fata08_WI,fata09_WI,fata10_WI,fata11_WI)

fata_WI=subset(fata_WI, County!="NOT APPLICABLE (000)")

fata_WI=subset(fata_WI, County!="OTHER (997)")

fata_WI=subset(fata_WI, County!="UNKNOWN (999)")

fata_WI=subset(fata_WI, County!="Total")

fata_WI = subset(fata_WI, County != "Not Reported")



fata_WI$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_WI$County)

fata_WI$County = paste(fata_WI$County, "County")

fata_WI$County = toupper(fata_WI$County)



fata_WI=subset(fata_WI, Fatalities!="NA")

final_WI = merge(est_WI, fata_WI, by = c("County", "Year"))

final_WI = transform(final_WI, Population = (as.numeric(final_WI$Poverty.Estimate.All.Ages)*100)/as.numeric(final_WI$Poverty.Percent.All.Ages))

final_WI = transform(final_WI, Fatalities.Percent = (as.numeric(final_WI$Fatalities)*100)/as.numeric(final_WI$Population))

final_WI=rename.vars (final_WI, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_WI=rename.vars (final_WI, from="Fatalities.Percent", to="Fatalities Percent")

final_WI=rename.vars (final_WI, from="Fatalities", to="Fatalities Count")

final_WI=rename.vars (final_WI, from="Median.Household.Income", to="Median Income")

final_WI=rename.vars (final_WI, from="Poverty.Percent.All.Ages", to="Poverty Percent")


commute_WI=read.csv("Commute time/Commute_Time_Data.csv")

commute_WI=commute_WI[which(commute_WI$State=="WI"),]

commute_WI=rename.vars(data=commute_WI, from=c("State"), to=c("Postal"))

commute_WI$County = paste(commute_WI$County, "County")

commute_WI$County = toupper(commute_WI$County)

final_WI=merge(final_WI,commute_WI, by = c("Postal", "County"))

final_WI=rename.vars (final_WI, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_WI=subset(final_WI, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_WI,file="WI.csv")
