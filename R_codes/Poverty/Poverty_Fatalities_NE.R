require(gdata)

setwd("data")

est03_NE = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_NE = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_NE = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_NE = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_NE = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_NE = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_NE = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_NE = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_NE = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_NE=subset(est03_NE, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_NE=est03_NE[which(est03_NE$Postal == "NE"),]

est03_NE = est03_NE[which(est03_NE$Name != "Nebraska"),]

est03_NE=subset(est03_NE,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_NE$Year=2003

est04_NE=subset(est04_NE, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_NE=est04_NE[which(est04_NE$Postal == "NE"),]

est04_NE = est04_NE[which(est04_NE$Name != "Nebraska"),]

est04_NE=subset(est04_NE,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_NE$Year=2004

est05_NE=subset(est05_NE, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_NE=est05_NE[which(est05_NE$Postal == "NE"),]

est05_NE = est05_NE[which(est05_NE$Name != "Nebraska"),]

est05_NE=subset(est05_NE,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_NE$Year=2005

est06_NE=subset(est06_NE, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_NE=est06_NE[which(est06_NE$Postal == "NE"),]

est06_NE = est06_NE[which(est06_NE$Name != "Nebraska"),]

est06_NE=subset(est06_NE,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_NE$Year=2006

est07_NE=subset(est07_NE, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_NE=est07_NE[which(est07_NE$Postal == "NE"),]

est07_NE = est07_NE[which(est07_NE$Name != "Nebraska"),]

est07_NE=subset(est07_NE,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_NE$Year=2007

est08_NE=subset(est08_NE, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_NE=est08_NE[which(est08_NE$Postal == "NE"),]

est08_NE = est08_NE[which(est08_NE$Name != "Nebraska"),]

est08_NE=subset(est08_NE,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_NE$Year=2008

est09_NE=subset(est09_NE, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_NE=est09_NE[which(est09_NE$Postal == "NE"),]

est09_NE = est09_NE[which(est09_NE$Name != "Nebraska"),]

est09_NE=subset(est09_NE,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_NE$Year=2009

est10_NE=subset(est10_NE, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_NE=est10_NE[which(est10_NE$Postal == "NE"),]

est10_NE = est10_NE[which(est10_NE$Name != "Nebraska"),]

est10_NE=subset(est10_NE,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_NE$Year=2010

est11_NE=subset(est11_NE, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_NE=est11_NE[which(est11_NE$Postal == "NE"),]

est11_NE = est11_NE[which(est11_NE$Name != "Nebraska"),]

est11_NE=subset(est11_NE,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_NE$Year=2011



est_NE=rbind(est06_NE,est07_NE,est08_NE,est09_NE, est03_NE,est04_NE,est05_NE,est10_NE,est11_NE)

est_NE = est_NE[order(est_NE$Year),]

est_NE=rename.vars(data=est_NE, from=c("Name"), to=c("County"))

est_NE$County = toupper(est_NE$County)



fata03_NE=read.xls("Fatalities/2003_2004_By_County/nebraska.xls", header=TRUE)

fata04_NE=read.xls("Fatalities/2003_2004_By_County/nebraska.xls", header=TRUE)

fata05_NE=read.xls("Fatalities/2005_2006_By_County/nebraska.xls", header=TRUE)

fata06_NE=read.xls("Fatalities/2005_2006_By_County/nebraska.xls", header=TRUE)

fata07_NE=read.xls("Fatalities/2006_2007_By_County/Nebraska_06_07.xls", header=TRUE)

fata08_NE=read.xls("Fatalities/2008_2009_By_County/Nebraska_08_09.xls", header=TRUE)

fata09_NE=read.xls("Fatalities/2008_2009_By_County/Nebraska_08_09.xls", header=TRUE)

fata10_NE=read.xls("Fatalities/2010_2011_By_County/Nebraska_10_11.xls", header=TRUE)

fata11_NE=read.xls("Fatalities/2010_2011_By_County/Nebraska_10_11.xls", header=TRUE)

fata03_NE=subset(fata03_NE, select=c("County", "X2003"))

fata03_NE=rename.vars(data=fata03_NE, from=c("X2003"), to=c("Fatalities"))

fata03_NE$Year=2003

fata04_NE=subset(fata04_NE, select=c("County", "X2004"))

fata04_NE=rename.vars(data=fata04_NE, from=c("X2004"), to=c("Fatalities"))

fata04_NE$Year=2004

fata05_NE=subset(fata05_NE, select=c("County", "X2005"))

fata05_NE=rename.vars(data=fata05_NE, from=c("X2005"), to=c("Fatalities"))

fata05_NE$Year=2005

fata06_NE=subset(fata06_NE, select=c("County", "X2006"))

fata06_NE=rename.vars(data=fata06_NE, from=c("X2006"), to=c("Fatalities"))

fata06_NE$Year=2006

fata07_NE=subset(fata07_NE, select=c("County", "X2007"))

fata07_NE=rename.vars(data=fata07_NE, from=c("X2007"), to=c("Fatalities"))

fata07_NE$Year=2007

fata08_NE=subset(fata08_NE, select=c("County", "X2008"))

fata08_NE=rename.vars(data=fata08_NE, from=c("X2008"), to=c("Fatalities"))

fata08_NE$Year=2008

fata09_NE=subset(fata09_NE, select=c("County", "X2009"))

fata09_NE=rename.vars(data=fata09_NE, from=c("X2009"), to=c("Fatalities"))

fata09_NE$Year=2009

fata10_NE=subset(fata10_NE, select=c("County", "X2010"))

fata10_NE=rename.vars(data=fata10_NE, from=c("X2010"), to=c("Fatalities"))

fata10_NE$Year=2010

fata11_NE=subset(fata11_NE, select=c("County", "X2011"))

fata11_NE=rename.vars(data=fata11_NE, from=c("X2011"), to=c("Fatalities"))

fata11_NE$Year=2011





fata_NE=rbind(fata03_NE,fata04_NE,fata05_NE,fata06_NE,fata07_NE,fata08_NE,fata09_NE,fata10_NE,fata11_NE)

fata_NE=subset(fata_NE, County!="NOT APPLICABLE (000)")

fata_NE=subset(fata_NE, County!="OTHER (997)")

fata_NE=subset(fata_NE, County!="UNKNOWN (999)")

fata_NE=subset(fata_NE, County!="Total")

fata_NE = subset(fata_NE, County != "Not Reported")



fata_NE$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_NE$County)

fata_NE$County = paste(fata_NE$County, "County")

fata_NE$County = toupper(fata_NE$County)



fata_NE=subset(fata_NE, Fatalities!="NA")

final_NE = merge(est_NE, fata_NE, by = c("County", "Year"))

final_NE = transform(final_NE, Population = (as.numeric(final_NE$Poverty.Estimate.All.Ages)*100)/as.numeric(final_NE$Poverty.Percent.All.Ages))

final_NE = transform(final_NE, Fatalities.Percent = (as.numeric(final_NE$Fatalities)*100)/as.numeric(final_NE$Population))

final_NE=rename.vars (final_NE, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_NE=rename.vars (final_NE, from="Fatalities.Percent", to="Fatalities Percent")

final_NE=rename.vars (final_NE, from="Fatalities", to="Fatalities Count")

final_NE=rename.vars (final_NE, from="Median.Household.Income", to="Median Income")

final_NE=rename.vars (final_NE, from="Poverty.Percent.All.Ages", to="Poverty Percent")


commute_NE=read.csv("Commute time/Commute_Time_Data.csv")

commute_NE=commute_NE[which(commute_NE$State=="NE"),]

commute_NE=rename.vars(data=commute_NE, from=c("State"), to=c("Postal"))

commute_NE$County = paste(commute_NE$County, "County")

commute_NE$County = toupper(commute_NE$County)

final_NE=merge(final_NE,commute_NE, by = c("Postal", "County"))

final_NE=rename.vars (final_NE, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_NE=subset(final_NE, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_NE,file="NE.csv")
