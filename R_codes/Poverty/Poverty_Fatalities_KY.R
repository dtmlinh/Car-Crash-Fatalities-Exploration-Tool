require(gdata)

setwd("data")

est03_KY = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_KY = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_KY = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_KY = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_KY = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_KY = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_KY = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_KY = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_KY = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_KY=subset(est03_KY, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_KY=est03_KY[which(est03_KY$Postal == "KY"),]

est03_KY = est03_KY[which(est03_KY$Name != "Kentucky"),]

est03_KY=subset(est03_KY,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_KY$Year=2003

est04_KY=subset(est04_KY, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_KY=est04_KY[which(est04_KY$Postal == "KY"),]

est04_KY = est04_KY[which(est04_KY$Name != "Kentucky"),]

est04_KY=subset(est04_KY,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_KY$Year=2004

est05_KY=subset(est05_KY, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_KY=est05_KY[which(est05_KY$Postal == "KY"),]

est05_KY = est05_KY[which(est05_KY$Name != "Kentucky"),]

est05_KY=subset(est05_KY,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_KY$Year=2005

est06_KY=subset(est06_KY, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_KY=est06_KY[which(est06_KY$Postal == "KY"),]

est06_KY = est06_KY[which(est06_KY$Name != "Kentucky"),]

est06_KY=subset(est06_KY,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_KY$Year=2006

est07_KY=subset(est07_KY, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_KY=est07_KY[which(est07_KY$Postal == "KY"),]

est07_KY = est07_KY[which(est07_KY$Name != "Kentucky"),]

est07_KY=subset(est07_KY,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_KY$Year=2007

est08_KY=subset(est08_KY, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_KY=est08_KY[which(est08_KY$Postal == "KY"),]

est08_KY = est08_KY[which(est08_KY$Name != "Kentucky"),]

est08_KY=subset(est08_KY,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_KY$Year=2008

est09_KY=subset(est09_KY, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_KY=est09_KY[which(est09_KY$Postal == "KY"),]

est09_KY = est09_KY[which(est09_KY$Name != "Kentucky"),]

est09_KY=subset(est09_KY,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_KY$Year=2009

est10_KY=subset(est10_KY, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_KY=est10_KY[which(est10_KY$Postal == "KY"),]

est10_KY = est10_KY[which(est10_KY$Name != "Kentucky"),]

est10_KY=subset(est10_KY,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_KY$Year=2010

est11_KY=subset(est11_KY, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_KY=est11_KY[which(est11_KY$Postal == "KY"),]

est11_KY = est11_KY[which(est11_KY$Name != "Kentucky"),]

est11_KY=subset(est11_KY,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_KY$Year=2011



est_KY=rbind(est06_KY,est07_KY,est08_KY,est09_KY, est03_KY,est04_KY,est05_KY,est10_KY,est11_KY)

est_KY = est_KY[order(est_KY$Year),]

est_KY=rename.vars(data=est_KY, from=c("Name"), to=c("County"))

est_KY$County = toupper(est_KY$County)



fata03_KY=read.xls("Fatalities/2003_2004_By_County/kentucky.xls", header=TRUE)

fata04_KY=read.xls("Fatalities/2003_2004_By_County/kentucky.xls", header=TRUE)

fata05_KY=read.xls("Fatalities/2005_2006_By_County/kentucky.xls", header=TRUE)

fata06_KY=read.xls("Fatalities/2005_2006_By_County/kentucky.xls", header=TRUE)

fata07_KY=read.xls("Fatalities/2006_2007_By_County/Kentucky_06_07.xls", header=TRUE)

fata08_KY=read.xls("Fatalities/2008_2009_By_County/Kentucky_08_09.xls", header=TRUE)

fata09_KY=read.xls("Fatalities/2008_2009_By_County/Kentucky_08_09.xls", header=TRUE)

fata10_KY=read.xls("Fatalities/2010_2011_By_County/Kentucky_10_11.xls", header=TRUE)

fata11_KY=read.xls("Fatalities/2010_2011_By_County/Kentucky_10_11.xls", header=TRUE)

fata03_KY=subset(fata03_KY, select=c("County", "X2003"))

fata03_KY=rename.vars(data=fata03_KY, from=c("X2003"), to=c("Fatalities"))

fata03_KY$Year=2003

fata04_KY=subset(fata04_KY, select=c("County", "X2004"))

fata04_KY=rename.vars(data=fata04_KY, from=c("X2004"), to=c("Fatalities"))

fata04_KY$Year=2004

fata05_KY=subset(fata05_KY, select=c("County", "X2005"))

fata05_KY=rename.vars(data=fata05_KY, from=c("X2005"), to=c("Fatalities"))

fata05_KY$Year=2005

fata06_KY=subset(fata06_KY, select=c("County", "X2006"))

fata06_KY=rename.vars(data=fata06_KY, from=c("X2006"), to=c("Fatalities"))

fata06_KY$Year=2006

fata07_KY=subset(fata07_KY, select=c("County", "X2007"))

fata07_KY=rename.vars(data=fata07_KY, from=c("X2007"), to=c("Fatalities"))

fata07_KY$Year=2007

fata08_KY=subset(fata08_KY, select=c("County", "X2008"))

fata08_KY=rename.vars(data=fata08_KY, from=c("X2008"), to=c("Fatalities"))

fata08_KY$Year=2008

fata09_KY=subset(fata09_KY, select=c("County", "X2009"))

fata09_KY=rename.vars(data=fata09_KY, from=c("X2009"), to=c("Fatalities"))

fata09_KY$Year=2009

fata10_KY=subset(fata10_KY, select=c("County", "X2010"))

fata10_KY=rename.vars(data=fata10_KY, from=c("X2010"), to=c("Fatalities"))

fata10_KY$Year=2010

fata11_KY=subset(fata11_KY, select=c("County", "X2011"))

fata11_KY=rename.vars(data=fata11_KY, from=c("X2011"), to=c("Fatalities"))

fata11_KY$Year=2011





fata_KY=rbind(fata03_KY,fata04_KY,fata05_KY,fata06_KY,fata07_KY,fata08_KY,fata09_KY,fata10_KY,fata11_KY)

fata_KY=subset(fata_KY, County!="NOT APPLICABLE (000)")

fata_KY=subset(fata_KY, County!="OTHER (997)")

fata_KY=subset(fata_KY, County!="UNKNOWN (999)")

fata_KY=subset(fata_KY, County!="Total")

fata_KY = subset(fata_KY, County != "Not Reported")



fata_KY$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_KY$County)

fata_KY$County = paste(fata_KY$County, "County")

fata_KY$County = toupper(fata_KY$County)



fata_KY=subset(fata_KY, Fatalities!="NA")

final_KY = merge(est_KY, fata_KY, by = c("County", "Year"))

final_KY = transform(final_KY, Population = (as.numeric(final_KY$Poverty.Estimate.All.Ages)*100)/as.numeric(final_KY$Poverty.Percent.All.Ages))

final_KY = transform(final_KY, Fatalities.Percent = (as.numeric(final_KY$Fatalities)*100)/as.numeric(final_KY$Population))

final_KY=rename.vars (final_KY, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_KY=rename.vars (final_KY, from="Fatalities.Percent", to="Fatalities Percent")

final_KY=rename.vars (final_KY, from="Fatalities", to="Fatalities Count")

final_KY=rename.vars (final_KY, from="Median.Household.Income", to="Median Income")

final_KY=rename.vars (final_KY, from="Poverty.Percent.All.Ages", to="Poverty Percent")


commute_KY=read.csv("Commute time/Commute_Time_Data.csv")

commute_KY=commute_KY[which(commute_KY$State=="KY"),]

commute_KY=rename.vars(data=commute_KY, from=c("State"), to=c("Postal"))

commute_KY$County = paste(commute_KY$County, "County")

commute_KY$County = toupper(commute_KY$County)

final_KY=merge(final_KY,commute_KY, by = c("Postal", "County"))

final_KY=rename.vars (final_KY, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_KY=subset(final_KY, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_KY,file="KY.csv")
