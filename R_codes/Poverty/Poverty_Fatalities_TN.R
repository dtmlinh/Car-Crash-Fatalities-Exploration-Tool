require(gdata)

setwd("data")

est03_TN = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_TN = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_TN = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_TN = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_TN = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_TN = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_TN = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_TN = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_TN = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_TN=subset(est03_TN, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_TN=est03_TN[which(est03_TN$Postal == "TN"),]

est03_TN = est03_TN[which(est03_TN$Name != "Tennessee"),]

est03_TN=subset(est03_TN,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_TN$Year=2003

est04_TN=subset(est04_TN, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_TN=est04_TN[which(est04_TN$Postal == "TN"),]

est04_TN = est04_TN[which(est04_TN$Name != "Tennessee"),]

est04_TN=subset(est04_TN,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_TN$Year=2004

est05_TN=subset(est05_TN, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_TN=est05_TN[which(est05_TN$Postal == "TN"),]

est05_TN = est05_TN[which(est05_TN$Name != "Tennessee"),]

est05_TN=subset(est05_TN,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_TN$Year=2005

est06_TN=subset(est06_TN, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_TN=est06_TN[which(est06_TN$Postal == "TN"),]

est06_TN = est06_TN[which(est06_TN$Name != "Tennessee"),]

est06_TN=subset(est06_TN,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_TN$Year=2006

est07_TN=subset(est07_TN, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_TN=est07_TN[which(est07_TN$Postal == "TN"),]

est07_TN = est07_TN[which(est07_TN$Name != "Tennessee"),]

est07_TN=subset(est07_TN,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_TN$Year=2007

est08_TN=subset(est08_TN, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_TN=est08_TN[which(est08_TN$Postal == "TN"),]

est08_TN = est08_TN[which(est08_TN$Name != "Tennessee"),]

est08_TN=subset(est08_TN,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_TN$Year=2008

est09_TN=subset(est09_TN, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_TN=est09_TN[which(est09_TN$Postal == "TN"),]

est09_TN = est09_TN[which(est09_TN$Name != "Tennessee"),]

est09_TN=subset(est09_TN,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_TN$Year=2009

est10_TN=subset(est10_TN, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_TN=est10_TN[which(est10_TN$Postal == "TN"),]

est10_TN = est10_TN[which(est10_TN$Name != "Tennessee"),]

est10_TN=subset(est10_TN,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_TN$Year=2010

est11_TN=subset(est11_TN, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_TN=est11_TN[which(est11_TN$Postal == "TN"),]

est11_TN = est11_TN[which(est11_TN$Name != "Tennessee"),]

est11_TN=subset(est11_TN,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_TN$Year=2011



est_TN=rbind(est06_TN,est07_TN,est08_TN,est09_TN, est03_TN,est04_TN,est05_TN,est10_TN,est11_TN)

est_TN = est_TN[order(est_TN$Year),]

est_TN=rename.vars(data=est_TN, from=c("Name"), to=c("County"))

est_TN$County = toupper(est_TN$County)



fata03_TN=read.xls("Fatalities/2003_2004_By_County/Tennessee.xls", header=TRUE)

fata04_TN=read.xls("Fatalities/2003_2004_By_County/Tennessee.xls", header=TRUE)

fata05_TN=read.xls("Fatalities/2005_2006_By_County/Tennessee.xls", header=TRUE)

fata06_TN=read.xls("Fatalities/2005_2006_By_County/Tennessee.xls", header=TRUE)

fata07_TN=read.xls("Fatalities/2006_2007_By_County/Tennessee_06_07.xls", header=TRUE)

fata08_TN=read.xls("Fatalities/2008_2009_By_County/Tennessee_08_09.xls", header=TRUE)

fata09_TN=read.xls("Fatalities/2008_2009_By_County/Tennessee_08_09.xls", header=TRUE)

fata10_TN=read.xls("Fatalities/2010_2011_By_County/Tennessee_10_11.xls", header=TRUE)

fata11_TN=read.xls("Fatalities/2010_2011_By_County/Tennessee_10_11.xls", header=TRUE)

fata03_TN=subset(fata03_TN, select=c("County", "X2003"))

fata03_TN=rename.vars(data=fata03_TN, from=c("X2003"), to=c("Fatalities"))

fata03_TN$Year=2003

fata04_TN=subset(fata04_TN, select=c("County", "X2004"))

fata04_TN=rename.vars(data=fata04_TN, from=c("X2004"), to=c("Fatalities"))

fata04_TN$Year=2004

fata05_TN=subset(fata05_TN, select=c("County", "X2005"))

fata05_TN=rename.vars(data=fata05_TN, from=c("X2005"), to=c("Fatalities"))

fata05_TN$Year=2005

fata06_TN=subset(fata06_TN, select=c("County", "X2006"))

fata06_TN=rename.vars(data=fata06_TN, from=c("X2006"), to=c("Fatalities"))

fata06_TN$Year=2006

fata07_TN=subset(fata07_TN, select=c("County", "X2007"))

fata07_TN=rename.vars(data=fata07_TN, from=c("X2007"), to=c("Fatalities"))

fata07_TN$Year=2007

fata08_TN=subset(fata08_TN, select=c("County", "X2008"))

fata08_TN=rename.vars(data=fata08_TN, from=c("X2008"), to=c("Fatalities"))

fata08_TN$Year=2008

fata09_TN=subset(fata09_TN, select=c("County", "X2009"))

fata09_TN=rename.vars(data=fata09_TN, from=c("X2009"), to=c("Fatalities"))

fata09_TN$Year=2009

fata10_TN=subset(fata10_TN, select=c("County", "X2010"))

fata10_TN=rename.vars(data=fata10_TN, from=c("X2010"), to=c("Fatalities"))

fata10_TN$Year=2010

fata11_TN=subset(fata11_TN, select=c("County", "X2011"))

fata11_TN=rename.vars(data=fata11_TN, from=c("X2011"), to=c("Fatalities"))

fata11_TN$Year=2011





fata_TN=rbind(fata03_TN,fata04_TN,fata05_TN,fata06_TN,fata07_TN,fata08_TN,fata09_TN,fata10_TN,fata11_TN)

fata_TN=subset(fata_TN, County!="NOT APPLICABLE (000)")

fata_TN=subset(fata_TN, County!="OTHER (997)")

fata_TN=subset(fata_TN, County!="UNKNOWN (999)")

fata_TN=subset(fata_TN, County!="Total")

fata_TN = subset(fata_TN, County != "Not Reported")



fata_TN$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_TN$County)

fata_TN$County = paste(fata_TN$County, "County")

fata_TN$County = toupper(fata_TN$County)



fata_TN=subset(fata_TN, Fatalities!="NA")

final_TN = merge(est_TN, fata_TN, by = c("County", "Year"))

final_TN = transform(final_TN, Population = (as.numeric(final_TN$Poverty.Estimate.All.Ages)*100)/as.numeric(final_TN$Poverty.Percent.All.Ages))

final_TN = transform(final_TN, Fatalities.Percent = (as.numeric(final_TN$Fatalities)*100)/as.numeric(final_TN$Population))

final_TN=rename.vars (final_TN, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_TN=rename.vars (final_TN, from="Fatalities.Percent", to="Fatalities Percent")

final_TN=rename.vars (final_TN, from="Fatalities", to="Fatalities Count")

final_TN=rename.vars (final_TN, from="Median.Household.Income", to="Median Income")

final_TN=rename.vars (final_TN, from="Poverty.Percent.All.Ages", to="Poverty Percent")


commute_TN=read.csv("Commute time/Commute_Time_Data.csv")

commute_TN=commute_TN[which(commute_TN$State=="TN"),]

commute_TN=rename.vars(data=commute_TN, from=c("State"), to=c("Postal"))

commute_TN$County = paste(commute_TN$County, "County")

commute_TN$County = toupper(commute_TN$County)

final_TN=merge(final_TN,commute_TN, by = c("Postal", "County"))

final_TN=rename.vars (final_TN, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_TN=subset(final_TN, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_TN,file="TN.csv")
