require(gdata)

setwd("data")

est03_IL = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_IL = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_IL = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_IL = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_IL = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_IL = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_IL = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_IL = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_IL = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_IL=subset(est03_IL, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_IL=est03_IL[which(est03_IL$Postal == "IL"),]

est03_IL = est03_IL[which(est03_IL$Name != "Illinois"),]

est03_IL=subset(est03_IL,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_IL$Year=2003

est04_IL=subset(est04_IL, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_IL=est04_IL[which(est04_IL$Postal == "IL"),]

est04_IL = est04_IL[which(est04_IL$Name != "Illinois"),]

est04_IL=subset(est04_IL,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_IL$Year=2004

est05_IL=subset(est05_IL, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_IL=est05_IL[which(est05_IL$Postal == "IL"),]

est05_IL = est05_IL[which(est05_IL$Name != "Illinois"),]

est05_IL=subset(est05_IL,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_IL$Year=2005

est06_IL=subset(est06_IL, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_IL=est06_IL[which(est06_IL$Postal == "IL"),]

est06_IL = est06_IL[which(est06_IL$Name != "Illinois"),]

est06_IL=subset(est06_IL,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_IL$Year=2006

est07_IL=subset(est07_IL, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_IL=est07_IL[which(est07_IL$Postal == "IL"),]

est07_IL = est07_IL[which(est07_IL$Name != "Illinois"),]

est07_IL=subset(est07_IL,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_IL$Year=2007

est08_IL=subset(est08_IL, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_IL=est08_IL[which(est08_IL$Postal == "IL"),]

est08_IL = est08_IL[which(est08_IL$Name != "Illinois"),]

est08_IL=subset(est08_IL,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_IL$Year=2008

est09_IL=subset(est09_IL, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_IL=est09_IL[which(est09_IL$Postal == "IL"),]

est09_IL = est09_IL[which(est09_IL$Name != "Illinois"),]

est09_IL=subset(est09_IL,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_IL$Year=2009

est10_IL=subset(est10_IL, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_IL=est10_IL[which(est10_IL$Postal == "IL"),]

est10_IL = est10_IL[which(est10_IL$Name != "Illinois"),]

est10_IL=subset(est10_IL,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_IL$Year=2010

est11_IL=subset(est11_IL, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_IL=est11_IL[which(est11_IL$Postal == "IL"),]

est11_IL = est11_IL[which(est11_IL$Name != "Illinois"),]

est11_IL=subset(est11_IL,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_IL$Year=2011



est_IL=rbind(est06_IL,est07_IL,est08_IL,est09_IL, est03_IL,est04_IL,est05_IL,est10_IL,est11_IL)

est_IL = est_IL[order(est_IL$Year),]

est_IL=rename.vars(data=est_IL, from=c("Name"), to=c("County"))

est_IL$County = toupper(est_IL$County)



fata03_IL=read.xls("Fatalities/2003_2004_By_County/illinois.xls", header=TRUE)

fata04_IL=read.xls("Fatalities/2003_2004_By_County/illinois.xls", header=TRUE)

fata05_IL=read.xls("Fatalities/2005_2006_By_County/illinois.xls", header=TRUE)

fata06_IL=read.xls("Fatalities/2005_2006_By_County/illinois.xls", header=TRUE)

fata07_IL=read.xls("Fatalities/2006_2007_By_County/Illinois_06_07.xls", header=TRUE)

fata08_IL=read.xls("Fatalities/2008_2009_By_County/Illinois_08_09.xls", header=TRUE)

fata09_IL=read.xls("Fatalities/2008_2009_By_County/Illinois_08_09.xls", header=TRUE)

fata10_IL=read.xls("Fatalities/2010_2011_By_County/Illinois_10_11.xls", header=TRUE)

fata11_IL=read.xls("Fatalities/2010_2011_By_County/Illinois_10_11.xls", header=TRUE)

fata03_IL=subset(fata03_IL, select=c("County", "X2003"))

fata03_IL=rename.vars(data=fata03_IL, from=c("X2003"), to=c("Fatalities"))

fata03_IL$Year=2003

fata04_IL=subset(fata04_IL, select=c("County", "X2004"))

fata04_IL=rename.vars(data=fata04_IL, from=c("X2004"), to=c("Fatalities"))

fata04_IL$Year=2004

fata05_IL=subset(fata05_IL, select=c("County", "X2005"))

fata05_IL=rename.vars(data=fata05_IL, from=c("X2005"), to=c("Fatalities"))

fata05_IL$Year=2005

fata06_IL=subset(fata06_IL, select=c("County", "X2006"))

fata06_IL=rename.vars(data=fata06_IL, from=c("X2006"), to=c("Fatalities"))

fata06_IL$Year=2006

fata07_IL=subset(fata07_IL, select=c("County", "X2007"))

fata07_IL=rename.vars(data=fata07_IL, from=c("X2007"), to=c("Fatalities"))

fata07_IL$Year=2007

fata08_IL=subset(fata08_IL, select=c("County", "X2008"))

fata08_IL=rename.vars(data=fata08_IL, from=c("X2008"), to=c("Fatalities"))

fata08_IL$Year=2008

fata09_IL=subset(fata09_IL, select=c("County", "X2009"))

fata09_IL=rename.vars(data=fata09_IL, from=c("X2009"), to=c("Fatalities"))

fata09_IL$Year=2009

fata10_IL=subset(fata10_IL, select=c("County", "X2010"))

fata10_IL=rename.vars(data=fata10_IL, from=c("X2010"), to=c("Fatalities"))

fata10_IL$Year=2010

fata11_IL=subset(fata11_IL, select=c("County", "X2011"))

fata11_IL=rename.vars(data=fata11_IL, from=c("X2011"), to=c("Fatalities"))

fata11_IL$Year=2011





fata_IL=rbind(fata03_IL,fata04_IL,fata05_IL,fata06_IL,fata07_IL,fata08_IL,fata09_IL,fata10_IL,fata11_IL)

fata_IL=subset(fata_IL, County!="NOT APPLICABLE (000)")

fata_IL=subset(fata_IL, County!="OTHER (997)")

fata_IL=subset(fata_IL, County!="UNKNOWN (999)")

fata_IL=subset(fata_IL, County!="Total")

fata_IL = subset(fata_IL, County != "Not Reported")



fata_IL$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_IL$County)

fata_IL$County = paste(fata_IL$County, "County")

fata_IL$County = toupper(fata_IL$County)


fata_IL=subset(fata_IL, Fatalities!="NA")

final_IL = merge(est_IL, fata_IL, by = c("County", "Year"))

final_IL = transform(final_IL, Population = (as.numeric(final_IL$Poverty.Estimate.All.Ages)*100)/as.numeric(final_IL$Poverty.Percent.All.Ages))

final_IL = transform(final_IL, Fatalities.Percent = (as.numeric(final_IL$Fatalities)*100)/as.numeric(final_IL$Population))

final_IL=rename.vars (final_IL, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_IL=rename.vars (final_IL, from="Fatalities.Percent", to="Fatalities Percent")

final_IL=rename.vars (final_IL, from="Fatalities", to="Fatalities Count")

final_IL=rename.vars (final_IL, from="Median.Household.Income", to="Median Income")

final_IL=rename.vars (final_IL, from="Poverty.Percent.All.Ages", to="Poverty Percent")


commute_IL=read.csv("Commute time/Commute_Time_Data.csv")

commute_IL=commute_IL[which(commute_IL$State=="IL"),]

commute_IL=rename.vars(data=commute_IL, from=c("State"), to=c("Postal"))

commute_IL$County = paste(commute_IL$County, "County")

commute_IL$County = toupper(commute_IL$County)

final_IL=merge(final_IL,commute_IL, by = c("Postal", "County"))

final_IL=rename.vars (final_IL, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_IL=subset(final_IL, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_IL,file="IL.csv")
