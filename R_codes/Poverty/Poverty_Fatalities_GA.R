require(gdata)

setwd("data")

est03_GA = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_GA = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_GA = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_GA = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_GA = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_GA = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_GA = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_GA = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_GA = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_GA=subset(est03_GA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_GA=est03_GA[which(est03_GA$Postal == "GA"),]

est03_GA = est03_GA[which(est03_GA$Name != "Georgia"),]

est03_GA=subset(est03_GA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_GA$Year=2003

est04_GA=subset(est04_GA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_GA=est04_GA[which(est04_GA$Postal == "GA"),]

est04_GA = est04_GA[which(est04_GA$Name != "Georgia"),]

est04_GA=subset(est04_GA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_GA$Year=2004

est05_GA=subset(est05_GA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_GA=est05_GA[which(est05_GA$Postal == "GA"),]

est05_GA = est05_GA[which(est05_GA$Name != "Georgia"),]

est05_GA=subset(est05_GA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_GA$Year=2005

est06_GA=subset(est06_GA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_GA=est06_GA[which(est06_GA$Postal == "GA"),]

est06_GA = est06_GA[which(est06_GA$Name != "Georgia"),]

est06_GA=subset(est06_GA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_GA$Year=2006

est07_GA=subset(est07_GA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_GA=est07_GA[which(est07_GA$Postal == "GA"),]

est07_GA = est07_GA[which(est07_GA$Name != "Georgia"),]

est07_GA=subset(est07_GA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_GA$Year=2007

est08_GA=subset(est08_GA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_GA=est08_GA[which(est08_GA$Postal == "GA"),]

est08_GA = est08_GA[which(est08_GA$Name != "Georgia"),]

est08_GA=subset(est08_GA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_GA$Year=2008

est09_GA=subset(est09_GA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_GA=est09_GA[which(est09_GA$Postal == "GA"),]

est09_GA = est09_GA[which(est09_GA$Name != "Georgia"),]

est09_GA=subset(est09_GA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_GA$Year=2009

est10_GA=subset(est10_GA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_GA=est10_GA[which(est10_GA$Postal == "GA"),]

est10_GA = est10_GA[which(est10_GA$Name != "Georgia"),]

est10_GA=subset(est10_GA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_GA$Year=2010

est11_GA=subset(est11_GA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_GA=est11_GA[which(est11_GA$Postal == "GA"),]

est11_GA = est11_GA[which(est11_GA$Name != "Georgia"),]

est11_GA=subset(est11_GA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_GA$Year=2011



est_GA=rbind(est06_GA,est07_GA,est08_GA,est09_GA, est03_GA,est04_GA,est05_GA,est10_GA,est11_GA)

est_GA = est_GA[order(est_GA$Year),]

est_GA=rename.vars(data=est_GA, from=c("Name"), to=c("County"))

est_GA$County = toupper(est_GA$County)



fata03_GA=read.xls("Fatalities/2003_2004_By_County/georgia.xls", header=TRUE)

fata04_GA=read.xls("Fatalities/2003_2004_By_County/georgia.xls", header=TRUE)

fata05_GA=read.xls("Fatalities/2005_2006_By_County/georgia.xls", header=TRUE)

fata06_GA=read.xls("Fatalities/2005_2006_By_County/georgia.xls", header=TRUE)

fata07_GA=read.xls("Fatalities/2006_2007_By_County/Georgia_06_07.xls", header=TRUE)

fata08_GA=read.xls("Fatalities/2008_2009_By_County/Georgia_08_09.xls", header=TRUE)

fata09_GA=read.xls("Fatalities/2008_2009_By_County/Georgia_08_09.xls", header=TRUE)

fata10_GA=read.xls("Fatalities/2010_2011_By_County/Georgia_10_11.xls", header=TRUE)

fata11_GA=read.xls("Fatalities/2010_2011_By_County/Georgia_10_11.xls", header=TRUE)

fata03_GA=subset(fata03_GA, select=c("County", "X2003"))

fata03_GA=rename.vars(data=fata03_GA, from=c("X2003"), to=c("Fatalities"))

fata03_GA$Year=2003

fata04_GA=subset(fata04_GA, select=c("County", "X2004"))

fata04_GA=rename.vars(data=fata04_GA, from=c("X2004"), to=c("Fatalities"))

fata04_GA$Year=2004

fata05_GA=subset(fata05_GA, select=c("County", "X2005"))

fata05_GA=rename.vars(data=fata05_GA, from=c("X2005"), to=c("Fatalities"))

fata05_GA$Year=2005

fata06_GA=subset(fata06_GA, select=c("County", "X2006"))

fata06_GA=rename.vars(data=fata06_GA, from=c("X2006"), to=c("Fatalities"))

fata06_GA$Year=2006

fata07_GA=subset(fata07_GA, select=c("County", "X2007"))

fata07_GA=rename.vars(data=fata07_GA, from=c("X2007"), to=c("Fatalities"))

fata07_GA$Year=2007

fata08_GA=subset(fata08_GA, select=c("County", "X2008"))

fata08_GA=rename.vars(data=fata08_GA, from=c("X2008"), to=c("Fatalities"))

fata08_GA$Year=2008

fata09_GA=subset(fata09_GA, select=c("County", "X2009"))

fata09_GA=rename.vars(data=fata09_GA, from=c("X2009"), to=c("Fatalities"))

fata09_GA$Year=2009

fata10_GA=subset(fata10_GA, select=c("County", "X2010"))

fata10_GA=rename.vars(data=fata10_GA, from=c("X2010"), to=c("Fatalities"))

fata10_GA$Year=2010

fata11_GA=subset(fata11_GA, select=c("County", "X2011"))

fata11_GA=rename.vars(data=fata11_GA, from=c("X2011"), to=c("Fatalities"))

fata11_GA$Year=2011





fata_GA=rbind(fata03_GA,fata04_GA,fata05_GA,fata06_GA,fata07_GA,fata08_GA,fata09_GA,fata10_GA,fata11_GA)

fata_GA=subset(fata_GA, County!="NOT APPLICABLE (000)")

fata_GA=subset(fata_GA, County!="OTHER (997)")

fata_GA=subset(fata_GA, County!="UNKNOWN (999)")

fata_GA=subset(fata_GA, County!="Total")

fata_GA = subset(fata_GA, County != "Not Reported")



fata_GA$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_GA$County)

fata_GA$County = paste(fata_GA$County, "County")

fata_GA$County = toupper(fata_GA$County)



fata_GA=subset(fata_GA, Fatalities!="NA")

final_GA = merge(est_GA, fata_GA, by = c("County", "Year"))

final_GA = transform(final_GA, Population = (as.numeric(final_GA$Poverty.Estimate.All.Ages)*100)/as.numeric(final_GA$Poverty.Percent.All.Ages))

final_GA = transform(final_GA, Fatalities.Percent = (as.numeric(final_GA$Fatalities)*100)/as.numeric(final_GA$Population))

final_GA=rename.vars (final_GA, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_GA=rename.vars (final_GA, from="Fatalities.Percent", to="Fatalities Percent")

final_GA=rename.vars (final_GA, from="Fatalities", to="Fatalities Count")

final_GA=rename.vars (final_GA, from="Median.Household.Income", to="Median Income")

final_GA=rename.vars (final_GA, from="Poverty.Percent.All.Ages", to="Poverty Percent")


commute_GA=read.csv("Commute time/Commute_Time_Data.csv")

commute_GA=commute_GA[which(commute_GA$State=="GA"),]

commute_GA=rename.vars(data=commute_GA, from=c("State"), to=c("Postal"))

commute_GA$County = paste(commute_GA$County, "County")

commute_GA$County = toupper(commute_GA$County)

final_GA=merge(final_GA,commute_GA, by = c("Postal", "County"))

final_GA=rename.vars (final_GA, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_GA=subset(final_GA, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_GA,file="GA.csv")
