require(gdata)

setwd("data")

est03_IA = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_IA = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_IA = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_IA = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_IA = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_IA = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_IA = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_IA = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_IA = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_IA=subset(est03_IA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_IA=est03_IA[which(est03_IA$Postal == "IA"),]

est03_IA = est03_IA[which(est03_IA$Name != "Iowa"),]

est03_IA=subset(est03_IA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_IA$Year=2003

est04_IA=subset(est04_IA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_IA=est04_IA[which(est04_IA$Postal == "IA"),]

est04_IA = est04_IA[which(est04_IA$Name != "Iowa"),]

est04_IA=subset(est04_IA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_IA$Year=2004

est05_IA=subset(est05_IA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_IA=est05_IA[which(est05_IA$Postal == "IA"),]

est05_IA = est05_IA[which(est05_IA$Name != "Iowa"),]

est05_IA=subset(est05_IA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_IA$Year=2005

est06_IA=subset(est06_IA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_IA=est06_IA[which(est06_IA$Postal == "IA"),]

est06_IA = est06_IA[which(est06_IA$Name != "Iowa"),]

est06_IA=subset(est06_IA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_IA$Year=2006

est07_IA=subset(est07_IA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_IA=est07_IA[which(est07_IA$Postal == "IA"),]

est07_IA = est07_IA[which(est07_IA$Name != "Iowa"),]

est07_IA=subset(est07_IA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_IA$Year=2007

est08_IA=subset(est08_IA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_IA=est08_IA[which(est08_IA$Postal == "IA"),]

est08_IA = est08_IA[which(est08_IA$Name != "Iowa"),]

est08_IA=subset(est08_IA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_IA$Year=2008

est09_IA=subset(est09_IA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_IA=est09_IA[which(est09_IA$Postal == "IA"),]

est09_IA = est09_IA[which(est09_IA$Name != "Iowa"),]

est09_IA=subset(est09_IA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_IA$Year=2009

est10_IA=subset(est10_IA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_IA=est10_IA[which(est10_IA$Postal == "IA"),]

est10_IA = est10_IA[which(est10_IA$Name != "Iowa"),]

est10_IA=subset(est10_IA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_IA$Year=2010

est11_IA=subset(est11_IA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_IA=est11_IA[which(est11_IA$Postal == "IA"),]

est11_IA = est11_IA[which(est11_IA$Name != "Iowa"),]

est11_IA=subset(est11_IA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_IA$Year=2011



est_IA=rbind(est06_IA,est07_IA,est08_IA,est09_IA, est03_IA,est04_IA,est05_IA,est10_IA,est11_IA)

est_IA = est_IA[order(est_IA$Year),]

est_IA=rename.vars(data=est_IA, from=c("Name"), to=c("County"))

est_IA$County = toupper(est_IA$County)



fata03_IA=read.xls("Fatalities/2003_2004_By_County/iowa.xls", header=TRUE)

fata04_IA=read.xls("Fatalities/2003_2004_By_County/iowa.xls", header=TRUE)

fata05_IA=read.xls("Fatalities/2005_2006_By_County/iowa.xls", header=TRUE)

fata06_IA=read.xls("Fatalities/2005_2006_By_County/iowa.xls", header=TRUE)

fata07_IA=read.xls("Fatalities/2006_2007_By_County/Iowa_06_07.xls", header=TRUE)

fata08_IA=read.xls("Fatalities/2008_2009_By_County/Iowa_08_09.xls", header=TRUE)

fata09_IA=read.xls("Fatalities/2008_2009_By_County/Iowa_08_09.xls", header=TRUE)

fata10_IA=read.xls("Fatalities/2010_2011_By_County/Iowa_10_11.xls", header=TRUE)

fata11_IA=read.xls("Fatalities/2010_2011_By_County/Iowa_10_11.xls", header=TRUE)

fata03_IA=subset(fata03_IA, select=c("County", "X2003"))

fata03_IA=rename.vars(data=fata03_IA, from=c("X2003"), to=c("Fatalities"))

fata03_IA$Year=2003

fata04_IA=subset(fata04_IA, select=c("County", "X2004"))

fata04_IA=rename.vars(data=fata04_IA, from=c("X2004"), to=c("Fatalities"))

fata04_IA$Year=2004

fata05_IA=subset(fata05_IA, select=c("County", "X2005"))

fata05_IA=rename.vars(data=fata05_IA, from=c("X2005"), to=c("Fatalities"))

fata05_IA$Year=2005

fata06_IA=subset(fata06_IA, select=c("County", "X2006"))

fata06_IA=rename.vars(data=fata06_IA, from=c("X2006"), to=c("Fatalities"))

fata06_IA$Year=2006

fata07_IA=subset(fata07_IA, select=c("County", "X2007"))

fata07_IA=rename.vars(data=fata07_IA, from=c("X2007"), to=c("Fatalities"))

fata07_IA$Year=2007

fata08_IA=subset(fata08_IA, select=c("County", "X2008"))

fata08_IA=rename.vars(data=fata08_IA, from=c("X2008"), to=c("Fatalities"))

fata08_IA$Year=2008

fata09_IA=subset(fata09_IA, select=c("County", "X2009"))

fata09_IA=rename.vars(data=fata09_IA, from=c("X2009"), to=c("Fatalities"))

fata09_IA$Year=2009

fata10_IA=subset(fata10_IA, select=c("County", "X2010"))

fata10_IA=rename.vars(data=fata10_IA, from=c("X2010"), to=c("Fatalities"))

fata10_IA$Year=2010

fata11_IA=subset(fata11_IA, select=c("County", "X2011"))

fata11_IA=rename.vars(data=fata11_IA, from=c("X2011"), to=c("Fatalities"))

fata11_IA$Year=2011





fata_IA=rbind(fata03_IA,fata04_IA,fata05_IA,fata06_IA,fata07_IA,fata08_IA,fata09_IA,fata10_IA,fata11_IA)

fata_IA=subset(fata_IA, County!="NOT APPLICABLE (000)")

fata_IA=subset(fata_IA, County!="OTHER (997)")

fata_IA=subset(fata_IA, County!="UNKNOWN (999)")

fata_IA=subset(fata_IA, County!="Total")

fata_IA = subset(fata_IA, County != "Not Reported")



fata_IA$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_IA$County)

fata_IA$County = paste(fata_IA$County, "County")

fata_IA$County = toupper(fata_IA$County)



fata_IA=subset(fata_IA, Fatalities!="NA")

final_IA = merge(est_IA, fata_IA, by = c("County", "Year"))

final_IA = transform(final_IA, Population = (as.numeric(final_IA$Poverty.Estimate.All.Ages)*100)/as.numeric(final_IA$Poverty.Percent.All.Ages))

final_IA = transform(final_IA, Fatalities.Percent = (as.numeric(final_IA$Fatalities)*100)/as.numeric(final_IA$Population))

final_IA=rename.vars (final_IA, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_IA=rename.vars (final_IA, from="Fatalities.Percent", to="Fatalities Percent")

final_IA=rename.vars (final_IA, from="Fatalities", to="Fatalities Count")

final_IA=rename.vars (final_IA, from="Median.Household.Income", to="Median Income")

final_IA=rename.vars (final_IA, from="Poverty.Percent.All.Ages", to="Poverty Percent")


commute_IA=read.csv("Commute time/Commute_Time_Data.csv")

commute_IA=commute_IA[which(commute_IA$State=="IA"),]

commute_IA=rename.vars(data=commute_IA, from=c("State"), to=c("Postal"))

commute_IA$County = paste(commute_IA$County, "County")

commute_IA$County = toupper(commute_IA$County)

final_IA=merge(final_IA,commute_IA, by = c("Postal", "County"))

final_IA=rename.vars (final_IA, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_IA=subset(final_IA, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_IA,file="IA.csv")
