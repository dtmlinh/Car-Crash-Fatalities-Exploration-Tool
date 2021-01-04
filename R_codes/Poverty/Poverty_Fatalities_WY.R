require(gdata)

setwd("data")

est03_WY = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_WY = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_WY = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_WY = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_WY = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_WY = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_WY = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_WY = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_WY = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_WY=subset(est03_WY, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_WY=est03_WY[which(est03_WY$Postal == "WY"),]

est03_WY = est03_WY[which(est03_WY$Name != "Wyoming"),]

est03_WY=subset(est03_WY,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_WY$Year=2003

est04_WY=subset(est04_WY, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_WY=est04_WY[which(est04_WY$Postal == "WY"),]

est04_WY = est04_WY[which(est04_WY$Name != "Wyoming"),]

est04_WY=subset(est04_WY,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_WY$Year=2004

est05_WY=subset(est05_WY, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_WY=est05_WY[which(est05_WY$Postal == "WY"),]

est05_WY = est05_WY[which(est05_WY$Name != "Wyoming"),]

est05_WY=subset(est05_WY,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_WY$Year=2005

est06_WY=subset(est06_WY, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_WY=est06_WY[which(est06_WY$Postal == "WY"),]

est06_WY = est06_WY[which(est06_WY$Name != "Wyoming"),]

est06_WY=subset(est06_WY,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_WY$Year=2006

est07_WY=subset(est07_WY, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_WY=est07_WY[which(est07_WY$Postal == "WY"),]

est07_WY = est07_WY[which(est07_WY$Name != "Wyoming"),]

est07_WY=subset(est07_WY,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_WY$Year=2007

est08_WY=subset(est08_WY, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_WY=est08_WY[which(est08_WY$Postal == "WY"),]

est08_WY = est08_WY[which(est08_WY$Name != "Wyoming"),]

est08_WY=subset(est08_WY,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_WY$Year=2008

est09_WY=subset(est09_WY, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_WY=est09_WY[which(est09_WY$Postal == "WY"),]

est09_WY = est09_WY[which(est09_WY$Name != "Wyoming"),]

est09_WY=subset(est09_WY,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_WY$Year=2009

est10_WY=subset(est10_WY, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_WY=est10_WY[which(est10_WY$Postal == "WY"),]

est10_WY = est10_WY[which(est10_WY$Name != "Wyoming"),]

est10_WY=subset(est10_WY,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_WY$Year=2010

est11_WY=subset(est11_WY, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_WY=est11_WY[which(est11_WY$Postal == "WY"),]

est11_WY = est11_WY[which(est11_WY$Name != "Wyoming"),]

est11_WY=subset(est11_WY,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_WY$Year=2011



est_WY=rbind(est06_WY,est07_WY,est08_WY,est09_WY, est03_WY,est04_WY,est05_WY,est10_WY,est11_WY)

est_WY = est_WY[order(est_WY$Year),]

est_WY=rename.vars(data=est_WY, from=c("Name"), to=c("County"))

est_WY$County = toupper(est_WY$County)



fata03_WY=read.xls("Fatalities/2003_2004_By_County/Wyoming.xls", header=TRUE)

fata04_WY=read.xls("Fatalities/2003_2004_By_County/Wyoming.xls", header=TRUE)

fata05_WY=read.xls("Fatalities/2005_2006_By_County/Wyoming.xls", header=TRUE)

fata06_WY=read.xls("Fatalities/2005_2006_By_County/Wyoming.xls", header=TRUE)

fata07_WY=read.xls("Fatalities/2006_2007_By_County/Wyoming_06_07.xls", header=TRUE)

fata08_WY=read.xls("Fatalities/2008_2009_By_County/Wyoming_08_09.xls", header=TRUE)

fata09_WY=read.xls("Fatalities/2008_2009_By_County/Wyoming_08_09.xls", header=TRUE)

fata10_WY=read.xls("Fatalities/2010_2011_By_County/Wyoming_10_11.xls", header=TRUE)

fata11_WY=read.xls("Fatalities/2010_2011_By_County/Wyoming_10_11.xls", header=TRUE)

fata03_WY=subset(fata03_WY, select=c("County", "X2003"))

fata03_WY=rename.vars(data=fata03_WY, from=c("X2003"), to=c("Fatalities"))

fata03_WY$Year=2003

fata04_WY=subset(fata04_WY, select=c("County", "X2004"))

fata04_WY=rename.vars(data=fata04_WY, from=c("X2004"), to=c("Fatalities"))

fata04_WY$Year=2004

fata05_WY=subset(fata05_WY, select=c("County", "X2005"))

fata05_WY=rename.vars(data=fata05_WY, from=c("X2005"), to=c("Fatalities"))

fata05_WY$Year=2005

fata06_WY=subset(fata06_WY, select=c("County", "X2006"))

fata06_WY=rename.vars(data=fata06_WY, from=c("X2006"), to=c("Fatalities"))

fata06_WY$Year=2006

fata07_WY=subset(fata07_WY, select=c("County", "X2007"))

fata07_WY=rename.vars(data=fata07_WY, from=c("X2007"), to=c("Fatalities"))

fata07_WY$Year=2007

fata08_WY=subset(fata08_WY, select=c("County", "X2008"))

fata08_WY=rename.vars(data=fata08_WY, from=c("X2008"), to=c("Fatalities"))

fata08_WY$Year=2008

fata09_WY=subset(fata09_WY, select=c("County", "X2009"))

fata09_WY=rename.vars(data=fata09_WY, from=c("X2009"), to=c("Fatalities"))

fata09_WY$Year=2009

fata10_WY=subset(fata10_WY, select=c("County", "X2010"))

fata10_WY=rename.vars(data=fata10_WY, from=c("X2010"), to=c("Fatalities"))

fata10_WY$Year=2010

fata11_WY=subset(fata11_WY, select=c("County", "X2011"))

fata11_WY=rename.vars(data=fata11_WY, from=c("X2011"), to=c("Fatalities"))

fata11_WY$Year=2011





fata_WY=rbind(fata03_WY,fata04_WY,fata05_WY,fata06_WY,fata07_WY,fata08_WY,fata09_WY,fata10_WY,fata11_WY)

fata_WY=subset(fata_WY, County!="NOT APPLICABLE (000)")

fata_WY=subset(fata_WY, County!="OTHER (997)")

fata_WY=subset(fata_WY, County!="UNKNOWN (999)")

fata_WY=subset(fata_WY, County!="Total")

fata_WY = subset(fata_WY, County != "Not Reported")



fata_WY$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_WY$County)

fata_WY$County = paste(fata_WY$County, "County")

fata_WY$County = toupper(fata_WY$County)



fata_WY=subset(fata_WY, Fatalities!="NA")

final_WY = merge(est_WY, fata_WY, by = c("County", "Year"))

final_WY = transform(final_WY, Population = (as.numeric(final_WY$Poverty.Estimate.All.Ages)*100)/as.numeric(final_WY$Poverty.Percent.All.Ages))

final_WY = transform(final_WY, Fatalities.Percent = (as.numeric(final_WY$Fatalities)*100)/as.numeric(final_WY$Population))

final_WY=rename.vars (final_WY, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_WY=rename.vars (final_WY, from="Fatalities.Percent", to="Fatalities Percent")

final_WY=rename.vars (final_WY, from="Fatalities", to="Fatalities Count")

final_WY=rename.vars (final_WY, from="Median.Household.Income", to="Median Income")

final_WY=rename.vars (final_WY, from="Poverty.Percent.All.Ages", to="Poverty Percent")


commute_WY=read.csv("Commute time/Commute_Time_Data.csv")

commute_WY=commute_WY[which(commute_WY$State=="WY"),]

commute_WY=rename.vars(data=commute_WY, from=c("State"), to=c("Postal"))

commute_WY$County = paste(commute_WY$County, "County")

commute_WY$County = toupper(commute_WY$County)

final_WY=merge(final_WY,commute_WY, by = c("Postal", "County"))

final_WY=rename.vars (final_WY, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_WY=subset(final_WY, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_WY,file="WY.csv")
