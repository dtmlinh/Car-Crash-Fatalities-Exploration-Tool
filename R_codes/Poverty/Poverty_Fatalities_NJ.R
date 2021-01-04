require(gdata)

setwd("data")

est03_NJ = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_NJ = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_NJ = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_NJ = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_NJ = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_NJ = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_NJ = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_NJ = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_NJ = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_NJ=subset(est03_NJ, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_NJ=est03_NJ[which(est03_NJ$Postal == "NJ"),]

est03_NJ = est03_NJ[which(est03_NJ$Name != "New Jersey"),]

est03_NJ=subset(est03_NJ,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_NJ$Year=2003

est04_NJ=subset(est04_NJ, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_NJ=est04_NJ[which(est04_NJ$Postal == "NJ"),]

est04_NJ = est04_NJ[which(est04_NJ$Name != "New Jersey"),]

est04_NJ=subset(est04_NJ,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_NJ$Year=2004

est05_NJ=subset(est05_NJ, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_NJ=est05_NJ[which(est05_NJ$Postal == "NJ"),]

est05_NJ = est05_NJ[which(est05_NJ$Name != "New Jersey"),]

est05_NJ=subset(est05_NJ,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_NJ$Year=2005

est06_NJ=subset(est06_NJ, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_NJ=est06_NJ[which(est06_NJ$Postal == "NJ"),]

est06_NJ = est06_NJ[which(est06_NJ$Name != "New Jersey"),]

est06_NJ=subset(est06_NJ,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_NJ$Year=2006

est07_NJ=subset(est07_NJ, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_NJ=est07_NJ[which(est07_NJ$Postal == "NJ"),]

est07_NJ = est07_NJ[which(est07_NJ$Name != "New Jersey"),]

est07_NJ=subset(est07_NJ,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_NJ$Year=2007

est08_NJ=subset(est08_NJ, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_NJ=est08_NJ[which(est08_NJ$Postal == "NJ"),]

est08_NJ = est08_NJ[which(est08_NJ$Name != "New Jersey"),]

est08_NJ=subset(est08_NJ,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_NJ$Year=2008

est09_NJ=subset(est09_NJ, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_NJ=est09_NJ[which(est09_NJ$Postal == "NJ"),]

est09_NJ = est09_NJ[which(est09_NJ$Name != "New Jersey"),]

est09_NJ=subset(est09_NJ,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_NJ$Year=2009

est10_NJ=subset(est10_NJ, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_NJ=est10_NJ[which(est10_NJ$Postal == "NJ"),]

est10_NJ = est10_NJ[which(est10_NJ$Name != "New Jersey"),]

est10_NJ=subset(est10_NJ,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_NJ$Year=2010

est11_NJ=subset(est11_NJ, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_NJ=est11_NJ[which(est11_NJ$Postal == "NJ"),]

est11_NJ = est11_NJ[which(est11_NJ$Name != "New Jersey"),]

est11_NJ=subset(est11_NJ,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_NJ$Year=2011



est_NJ=rbind(est06_NJ,est07_NJ,est08_NJ,est09_NJ, est03_NJ,est04_NJ,est05_NJ,est10_NJ,est11_NJ)

est_NJ = est_NJ[order(est_NJ$Year),]

est_NJ=rename.vars(data=est_NJ, from=c("Name"), to=c("County"))

est_NJ$County = toupper(est_NJ$County)



fata03_NJ=read.xls("Fatalities/2003_2004_By_County/New Jersey.xls", header=TRUE)

fata04_NJ=read.xls("Fatalities/2003_2004_By_County/New Jersey.xls", header=TRUE)

fata05_NJ=read.xls("Fatalities/2005_2006_By_County/New Jersey.xls", header=TRUE)

fata06_NJ=read.xls("Fatalities/2005_2006_By_County/New Jersey.xls", header=TRUE)

fata07_NJ=read.xls("Fatalities/2006_2007_By_County/New_Jersey_06_07.xls", header=TRUE)

fata08_NJ=read.xls("Fatalities/2008_2009_By_County/New_Jersey_08_09.xls", header=TRUE)

fata09_NJ=read.xls("Fatalities/2008_2009_By_County/New_Jersey_08_09.xls", header=TRUE)

fata10_NJ=read.xls("Fatalities/2010_2011_By_County/New_Jersey_10_11.xls", header=TRUE)

fata11_NJ=read.xls("Fatalities/2010_2011_By_County/New_Jersey_10_11.xls", header=TRUE)

fata03_NJ=subset(fata03_NJ, select=c("County", "X2003"))

fata03_NJ=rename.vars(data=fata03_NJ, from=c("X2003"), to=c("Fatalities"))

fata03_NJ$Year=2003

fata04_NJ=subset(fata04_NJ, select=c("County", "X2004"))

fata04_NJ=rename.vars(data=fata04_NJ, from=c("X2004"), to=c("Fatalities"))

fata04_NJ$Year=2004

fata05_NJ=subset(fata05_NJ, select=c("County", "X2005"))

fata05_NJ=rename.vars(data=fata05_NJ, from=c("X2005"), to=c("Fatalities"))

fata05_NJ$Year=2005

fata06_NJ=subset(fata06_NJ, select=c("County", "X2006"))

fata06_NJ=rename.vars(data=fata06_NJ, from=c("X2006"), to=c("Fatalities"))

fata06_NJ$Year=2006

fata07_NJ=subset(fata07_NJ, select=c("County", "X2007"))

fata07_NJ=rename.vars(data=fata07_NJ, from=c("X2007"), to=c("Fatalities"))

fata07_NJ$Year=2007

fata08_NJ=subset(fata08_NJ, select=c("County", "X2008"))

fata08_NJ=rename.vars(data=fata08_NJ, from=c("X2008"), to=c("Fatalities"))

fata08_NJ$Year=2008

fata09_NJ=subset(fata09_NJ, select=c("County", "X2009"))

fata09_NJ=rename.vars(data=fata09_NJ, from=c("X2009"), to=c("Fatalities"))

fata09_NJ$Year=2009

fata10_NJ=subset(fata10_NJ, select=c("County", "X2010"))

fata10_NJ=rename.vars(data=fata10_NJ, from=c("X2010"), to=c("Fatalities"))

fata10_NJ$Year=2010

fata11_NJ=subset(fata11_NJ, select=c("County", "X2011"))

fata11_NJ=rename.vars(data=fata11_NJ, from=c("X2011"), to=c("Fatalities"))

fata11_NJ$Year=2011





fata_NJ=rbind(fata03_NJ,fata04_NJ,fata05_NJ,fata06_NJ,fata07_NJ,fata08_NJ,fata09_NJ,fata10_NJ,fata11_NJ)

fata_NJ=subset(fata_NJ, County!="NOT APPLICABLE (000)")

fata_NJ=subset(fata_NJ, County!="OTHER (997)")

fata_NJ=subset(fata_NJ, County!="UNKNOWN (999)")

fata_NJ=subset(fata_NJ, County!="Total")

fata_NJ = subset(fata_NJ, County != "Not Reported")



fata_NJ$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_NJ$County)

fata_NJ$County = paste(fata_NJ$County, "County")

fata_NJ$County = toupper(fata_NJ$County)



fata_NJ=subset(fata_NJ, Fatalities!="NA")

final_NJ = merge(est_NJ, fata_NJ, by = c("County", "Year"))

final_NJ = transform(final_NJ, Population = (as.numeric(final_NJ$Poverty.Estimate.All.Ages)*100)/as.numeric(final_NJ$Poverty.Percent.All.Ages))

final_NJ = transform(final_NJ, Fatalities.Percent = (as.numeric(final_NJ$Fatalities)*100)/as.numeric(final_NJ$Population))

final_NJ=rename.vars (final_NJ, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_NJ=rename.vars (final_NJ, from="Fatalities.Percent", to="Fatalities Percent")

final_NJ=rename.vars (final_NJ, from="Fatalities", to="Fatalities Count")

final_NJ=rename.vars (final_NJ, from="Median.Household.Income", to="Median Income")

final_NJ=rename.vars (final_NJ, from="Poverty.Percent.All.Ages", to="Poverty Percent")


commute_NJ=read.csv("Commute time/Commute_Time_Data.csv")

commute_NJ=commute_NJ[which(commute_NJ$State=="NJ"),]

commute_NJ=rename.vars(data=commute_NJ, from=c("State"), to=c("Postal"))

commute_NJ$County = paste(commute_NJ$County, "County")

commute_NJ$County = toupper(commute_NJ$County)

final_NJ=merge(final_NJ,commute_NJ, by = c("Postal", "County"))

final_NJ=rename.vars (final_NJ, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_NJ=subset(final_NJ, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_NJ,file="NJ.csv")
