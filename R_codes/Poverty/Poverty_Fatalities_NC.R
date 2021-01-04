require(gdata)

setwd("data")

est03_NC = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_NC = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_NC = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_NC = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_NC = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_NC = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_NC = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_NC = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_NC = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_NC=subset(est03_NC, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_NC=est03_NC[which(est03_NC$Postal == "NC"),]

est03_NC = est03_NC[which(est03_NC$Name != "North Carolina"),]

est03_NC=subset(est03_NC,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_NC$Year=2003

est04_NC=subset(est04_NC, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_NC=est04_NC[which(est04_NC$Postal == "NC"),]

est04_NC = est04_NC[which(est04_NC$Name != "North Carolina"),]

est04_NC=subset(est04_NC,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_NC$Year=2004

est05_NC=subset(est05_NC, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_NC=est05_NC[which(est05_NC$Postal == "NC"),]

est05_NC = est05_NC[which(est05_NC$Name != "North Carolina"),]

est05_NC=subset(est05_NC,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_NC$Year=2005

est06_NC=subset(est06_NC, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_NC=est06_NC[which(est06_NC$Postal == "NC"),]

est06_NC = est06_NC[which(est06_NC$Name != "North Carolina"),]

est06_NC=subset(est06_NC,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_NC$Year=2006

est07_NC=subset(est07_NC, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_NC=est07_NC[which(est07_NC$Postal == "NC"),]

est07_NC = est07_NC[which(est07_NC$Name != "North Carolina"),]

est07_NC=subset(est07_NC,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_NC$Year=2007

est08_NC=subset(est08_NC, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_NC=est08_NC[which(est08_NC$Postal == "NC"),]

est08_NC = est08_NC[which(est08_NC$Name != "North Carolina"),]

est08_NC=subset(est08_NC,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_NC$Year=2008

est09_NC=subset(est09_NC, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_NC=est09_NC[which(est09_NC$Postal == "NC"),]

est09_NC = est09_NC[which(est09_NC$Name != "North Carolina"),]

est09_NC=subset(est09_NC,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_NC$Year=2009

est10_NC=subset(est10_NC, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_NC=est10_NC[which(est10_NC$Postal == "NC"),]

est10_NC = est10_NC[which(est10_NC$Name != "North Carolina"),]

est10_NC=subset(est10_NC,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_NC$Year=2010

est11_NC=subset(est11_NC, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_NC=est11_NC[which(est11_NC$Postal == "NC"),]

est11_NC = est11_NC[which(est11_NC$Name != "North Carolina"),]

est11_NC=subset(est11_NC,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_NC$Year=2011



est_NC=rbind(est06_NC,est07_NC,est08_NC,est09_NC, est03_NC,est04_NC,est05_NC,est10_NC,est11_NC)

est_NC = est_NC[order(est_NC$Year),]

est_NC=rename.vars(data=est_NC, from=c("Name"), to=c("County"))

est_NC$County = toupper(est_NC$County)



fata03_NC=read.xls("Fatalities/2003_2004_By_County/North Carolina.xls", header=TRUE)

fata04_NC=read.xls("Fatalities/2003_2004_By_County/North Carolina.xls", header=TRUE)

fata05_NC=read.xls("Fatalities/2005_2006_By_County/North Carolina.xls", header=TRUE)

fata06_NC=read.xls("Fatalities/2005_2006_By_County/North Carolina.xls", header=TRUE)

fata07_NC=read.xls("Fatalities/2006_2007_By_County/North_Carolina_06_07.xls", header=TRUE)

fata08_NC=read.xls("Fatalities/2008_2009_By_County/North_Carolina_08_09.xls", header=TRUE)

fata09_NC=read.xls("Fatalities/2008_2009_By_County/North_Carolina_08_09.xls", header=TRUE)

fata10_NC=read.xls("Fatalities/2010_2011_By_County/North_Carolina_10_11.xls", header=TRUE)

fata11_NC=read.xls("Fatalities/2010_2011_By_County/North_Carolina_10_11.xls", header=TRUE)

fata03_NC=subset(fata03_NC, select=c("County", "X2003"))

fata03_NC=rename.vars(data=fata03_NC, from=c("X2003"), to=c("Fatalities"))

fata03_NC$Year=2003

fata04_NC=subset(fata04_NC, select=c("County", "X2004"))

fata04_NC=rename.vars(data=fata04_NC, from=c("X2004"), to=c("Fatalities"))

fata04_NC$Year=2004

fata05_NC=subset(fata05_NC, select=c("County", "X2005"))

fata05_NC=rename.vars(data=fata05_NC, from=c("X2005"), to=c("Fatalities"))

fata05_NC$Year=2005

fata06_NC=subset(fata06_NC, select=c("County", "X2006"))

fata06_NC=rename.vars(data=fata06_NC, from=c("X2006"), to=c("Fatalities"))

fata06_NC$Year=2006

fata07_NC=subset(fata07_NC, select=c("County", "X2007"))

fata07_NC=rename.vars(data=fata07_NC, from=c("X2007"), to=c("Fatalities"))

fata07_NC$Year=2007

fata08_NC=subset(fata08_NC, select=c("County", "X2008"))

fata08_NC=rename.vars(data=fata08_NC, from=c("X2008"), to=c("Fatalities"))

fata08_NC$Year=2008

fata09_NC=subset(fata09_NC, select=c("County", "X2009"))

fata09_NC=rename.vars(data=fata09_NC, from=c("X2009"), to=c("Fatalities"))

fata09_NC$Year=2009

fata10_NC=subset(fata10_NC, select=c("County", "X2010"))

fata10_NC=rename.vars(data=fata10_NC, from=c("X2010"), to=c("Fatalities"))

fata10_NC$Year=2010

fata11_NC=subset(fata11_NC, select=c("County", "X2011"))

fata11_NC=rename.vars(data=fata11_NC, from=c("X2011"), to=c("Fatalities"))

fata11_NC$Year=2011





fata_NC=rbind(fata03_NC,fata04_NC,fata05_NC,fata06_NC,fata07_NC,fata08_NC,fata09_NC,fata10_NC,fata11_NC)

fata_NC=subset(fata_NC, County!="NOT APPLICABLE (000)")

fata_NC=subset(fata_NC, County!="OTHER (997)")

fata_NC=subset(fata_NC, County!="UNKNOWN (999)")

fata_NC=subset(fata_NC, County!="Total")

fata_NC = subset(fata_NC, County != "Not Reported")



fata_NC$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_NC$County)

fata_NC$County = paste(fata_NC$County, "County")

fata_NC$County = toupper(fata_NC$County)



fata_NC=subset(fata_NC, Fatalities!="NA")

final_NC = merge(est_NC, fata_NC, by = c("County", "Year"))

final_NC = transform(final_NC, Population = (as.numeric(final_NC$Poverty.Estimate.All.Ages)*100)/as.numeric(final_NC$Poverty.Percent.All.Ages))

final_NC = transform(final_NC, Fatalities.Percent = (as.numeric(final_NC$Fatalities)*100)/as.numeric(final_NC$Population))

final_NC=rename.vars (final_NC, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_NC=rename.vars (final_NC, from="Fatalities.Percent", to="Fatalities Percent")

final_NC=rename.vars (final_NC, from="Fatalities", to="Fatalities Count")

final_NC=rename.vars (final_NC, from="Median.Household.Income", to="Median Income")

final_NC=rename.vars (final_NC, from="Poverty.Percent.All.Ages", to="Poverty Percent")


commute_NC=read.csv("Commute time/Commute_Time_Data.csv")

commute_NC=commute_NC[which(commute_NC$State=="NC"),]

commute_NC=rename.vars(data=commute_NC, from=c("State"), to=c("Postal"))

commute_NC$County = paste(commute_NC$County, "County")

commute_NC$County = toupper(commute_NC$County)

final_NC=merge(final_NC,commute_NC, by = c("Postal", "County"))

final_NC=rename.vars (final_NC, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_NC=subset(final_NC, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_NC,file="NC.csv")
