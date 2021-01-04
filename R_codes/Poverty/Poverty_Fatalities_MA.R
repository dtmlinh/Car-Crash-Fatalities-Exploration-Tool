require(gdata)

setwd("data")

est03_MA = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_MA = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_MA = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_MA = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_MA = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_MA = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_MA = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_MA = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_MA = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_MA=subset(est03_MA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_MA=est03_MA[which(est03_MA$Postal == "MA"),]

est03_MA = est03_MA[which(est03_MA$Name != "Massachusetts"),]

est03_MA=subset(est03_MA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_MA$Year=2003

est04_MA=subset(est04_MA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_MA=est04_MA[which(est04_MA$Postal == "MA"),]

est04_MA = est04_MA[which(est04_MA$Name != "Massachusetts"),]

est04_MA=subset(est04_MA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_MA$Year=2004

est05_MA=subset(est05_MA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_MA=est05_MA[which(est05_MA$Postal == "MA"),]

est05_MA = est05_MA[which(est05_MA$Name != "Massachusetts"),]

est05_MA=subset(est05_MA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_MA$Year=2005

est06_MA=subset(est06_MA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_MA=est06_MA[which(est06_MA$Postal == "MA"),]

est06_MA = est06_MA[which(est06_MA$Name != "Massachusetts"),]

est06_MA=subset(est06_MA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_MA$Year=2006

est07_MA=subset(est07_MA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_MA=est07_MA[which(est07_MA$Postal == "MA"),]

est07_MA = est07_MA[which(est07_MA$Name != "Massachusetts"),]

est07_MA=subset(est07_MA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_MA$Year=2007

est08_MA=subset(est08_MA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_MA=est08_MA[which(est08_MA$Postal == "MA"),]

est08_MA = est08_MA[which(est08_MA$Name != "Massachusetts"),]

est08_MA=subset(est08_MA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_MA$Year=2008

est09_MA=subset(est09_MA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_MA=est09_MA[which(est09_MA$Postal == "MA"),]

est09_MA = est09_MA[which(est09_MA$Name != "Massachusetts"),]

est09_MA=subset(est09_MA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_MA$Year=2009

est10_MA=subset(est10_MA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_MA=est10_MA[which(est10_MA$Postal == "MA"),]

est10_MA = est10_MA[which(est10_MA$Name != "Massachusetts"),]

est10_MA=subset(est10_MA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_MA$Year=2010

est11_MA=subset(est11_MA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_MA=est11_MA[which(est11_MA$Postal == "MA"),]

est11_MA = est11_MA[which(est11_MA$Name != "Massachusetts"),]

est11_MA=subset(est11_MA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_MA$Year=2011



est_MA=rbind(est06_MA,est07_MA,est08_MA,est09_MA, est03_MA,est04_MA,est05_MA,est10_MA,est11_MA)

est_MA = est_MA[order(est_MA$Year),]

est_MA=rename.vars(data=est_MA, from=c("Name"), to=c("County"))

est_MA$County = toupper(est_MA$County)



fata03_MA=read.xls("Fatalities/2003_2004_By_County/massachusetts.xls", header=TRUE)

fata04_MA=read.xls("Fatalities/2003_2004_By_County/massachusetts.xls", header=TRUE)

fata05_MA=read.xls("Fatalities/2005_2006_By_County/massachusetts.xls", header=TRUE)

fata06_MA=read.xls("Fatalities/2005_2006_By_County/massachusetts.xls", header=TRUE)

fata07_MA=read.xls("Fatalities/2006_2007_By_County/Massachusetts_06_07.xls", header=TRUE)

fata08_MA=read.xls("Fatalities/2008_2009_By_County/Massachusetts_08_09.xls", header=TRUE)

fata09_MA=read.xls("Fatalities/2008_2009_By_County/Massachusetts_08_09.xls", header=TRUE)

fata10_MA=read.xls("Fatalities/2010_2011_By_County/Massachusetts_10_11.xls", header=TRUE)

fata11_MA=read.xls("Fatalities/2010_2011_By_County/Massachusetts_10_11.xls", header=TRUE)

fata03_MA=subset(fata03_MA, select=c("County", "X2003"))

fata03_MA=rename.vars(data=fata03_MA, from=c("X2003"), to=c("Fatalities"))

fata03_MA$Year=2003

fata04_MA=subset(fata04_MA, select=c("County", "X2004"))

fata04_MA=rename.vars(data=fata04_MA, from=c("X2004"), to=c("Fatalities"))

fata04_MA$Year=2004

fata05_MA=subset(fata05_MA, select=c("County", "X2005"))

fata05_MA=rename.vars(data=fata05_MA, from=c("X2005"), to=c("Fatalities"))

fata05_MA$Year=2005

fata06_MA=subset(fata06_MA, select=c("County", "X2006"))

fata06_MA=rename.vars(data=fata06_MA, from=c("X2006"), to=c("Fatalities"))

fata06_MA$Year=2006

fata07_MA=subset(fata07_MA, select=c("County", "X2007"))

fata07_MA=rename.vars(data=fata07_MA, from=c("X2007"), to=c("Fatalities"))

fata07_MA$Year=2007

fata08_MA=subset(fata08_MA, select=c("County", "X2008"))

fata08_MA=rename.vars(data=fata08_MA, from=c("X2008"), to=c("Fatalities"))

fata08_MA$Year=2008

fata09_MA=subset(fata09_MA, select=c("County", "X2009"))

fata09_MA=rename.vars(data=fata09_MA, from=c("X2009"), to=c("Fatalities"))

fata09_MA$Year=2009

fata10_MA=subset(fata10_MA, select=c("County", "X2010"))

fata10_MA=rename.vars(data=fata10_MA, from=c("X2010"), to=c("Fatalities"))

fata10_MA$Year=2010

fata11_MA=subset(fata11_MA, select=c("County", "X2011"))

fata11_MA=rename.vars(data=fata11_MA, from=c("X2011"), to=c("Fatalities"))

fata11_MA$Year=2011





fata_MA=rbind(fata03_MA,fata04_MA,fata05_MA,fata06_MA,fata07_MA,fata08_MA,fata09_MA,fata10_MA,fata11_MA)

fata_MA=subset(fata_MA, County!="NOT APPLICABLE (000)")

fata_MA=subset(fata_MA, County!="OTHER (997)")

fata_MA=subset(fata_MA, County!="UNKNOWN (999)")

fata_MA=subset(fata_MA, County!="Total")

fata_MA = subset(fata_MA, County != "Not Reported")



fata_MA$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_MA$County)

fata_MA$County = paste(fata_MA$County, "County")

fata_MA$County = toupper(fata_MA$County)



fata_MA=subset(fata_MA, Fatalities!="NA")

final_MA = merge(est_MA, fata_MA, by = c("County", "Year"))

final_MA = transform(final_MA, Population = (as.numeric(final_MA$Poverty.Estimate.All.Ages)*100)/as.numeric(final_MA$Poverty.Percent.All.Ages))

final_MA = transform(final_MA, Fatalities.Percent = (as.numeric(final_MA$Fatalities)*100)/as.numeric(final_MA$Population))

final_MA=rename.vars (final_MA, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_MA=rename.vars (final_MA, from="Fatalities.Percent", to="Fatalities Percent")

final_MA=rename.vars (final_MA, from="Fatalities", to="Fatalities Count")

final_MA=rename.vars (final_MA, from="Median.Household.Income", to="Median Income")

final_MA=rename.vars (final_MA, from="Poverty.Percent.All.Ages", to="Poverty Percent")


commute_MA=read.csv("Commute time/Commute_Time_Data.csv")

commute_MA=commute_MA[which(commute_MA$State=="MA"),]

commute_MA=rename.vars(data=commute_MA, from=c("State"), to=c("Postal"))

commute_MA$County = paste(commute_MA$County, "County")

commute_MA$County = toupper(commute_MA$County)

final_MA=merge(final_MA,commute_MA, by = c("Postal", "County"))

final_MA=rename.vars (final_MA, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_MA=subset(final_MA, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_MA,file="MA.csv")
