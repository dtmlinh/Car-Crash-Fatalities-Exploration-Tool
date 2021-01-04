require(gdata)

setwd("data")

est03_HI = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_HI = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_HI = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_HI = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_HI = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_HI = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_HI = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_HI = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_HI = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_HI=subset(est03_HI, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_HI=est03_HI[which(est03_HI$Postal == "HI"),]

est03_HI = est03_HI[which(est03_HI$Name != "Hawaii"),]

est03_HI=subset(est03_HI,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_HI$Year=2003

est04_HI=subset(est04_HI, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_HI=est04_HI[which(est04_HI$Postal == "HI"),]

est04_HI = est04_HI[which(est04_HI$Name != "Hawaii"),]

est04_HI=subset(est04_HI,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_HI$Year=2004

est05_HI=subset(est05_HI, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_HI=est05_HI[which(est05_HI$Postal == "HI"),]

est05_HI = est05_HI[which(est05_HI$Name != "Hawaii"),]

est05_HI=subset(est05_HI,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_HI$Year=2005

est06_HI=subset(est06_HI, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_HI=est06_HI[which(est06_HI$Postal == "HI"),]

est06_HI = est06_HI[which(est06_HI$Name != "Hawaii"),]

est06_HI=subset(est06_HI,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_HI$Year=2006

est07_HI=subset(est07_HI, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_HI=est07_HI[which(est07_HI$Postal == "HI"),]

est07_HI = est07_HI[which(est07_HI$Name != "Hawaii"),]

est07_HI=subset(est07_HI,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_HI$Year=2007

est08_HI=subset(est08_HI, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_HI=est08_HI[which(est08_HI$Postal == "HI"),]

est08_HI = est08_HI[which(est08_HI$Name != "Hawaii"),]

est08_HI=subset(est08_HI,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_HI$Year=2008

est09_HI=subset(est09_HI, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_HI=est09_HI[which(est09_HI$Postal == "HI"),]

est09_HI = est09_HI[which(est09_HI$Name != "Hawaii"),]

est09_HI=subset(est09_HI,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_HI$Year=2009

est10_HI=subset(est10_HI, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_HI=est10_HI[which(est10_HI$Postal == "HI"),]

est10_HI = est10_HI[which(est10_HI$Name != "Hawaii"),]

est10_HI=subset(est10_HI,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_HI$Year=2010

est11_HI=subset(est11_HI, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_HI=est11_HI[which(est11_HI$Postal == "HI"),]

est11_HI = est11_HI[which(est11_HI$Name != "Hawaii"),]

est11_HI=subset(est11_HI,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_HI$Year=2011



est_HI=rbind(est06_HI,est07_HI,est08_HI,est09_HI, est03_HI,est04_HI,est05_HI,est10_HI,est11_HI)

est_HI = est_HI[order(est_HI$Year),]

est_HI=rename.vars(data=est_HI, from=c("Name"), to=c("County"))

est_HI$County = toupper(est_HI$County)



fata03_HI=read.xls("Fatalities/2003_2004_By_County/hawaii.xls", header=TRUE)

fata04_HI=read.xls("Fatalities/2003_2004_By_County/hawaii.xls", header=TRUE)

fata05_HI=read.xls("Fatalities/2005_2006_By_County/hawaii.xls", header=TRUE)

fata06_HI=read.xls("Fatalities/2005_2006_By_County/hawaii.xls", header=TRUE)

fata07_HI=read.xls("Fatalities/2006_2007_By_County/Hawaii_06_07.xls", header=TRUE)

fata08_HI=read.xls("Fatalities/2008_2009_By_County/Hawaii_08_09.xls", header=TRUE)

fata09_HI=read.xls("Fatalities/2008_2009_By_County/Hawaii_08_09.xls", header=TRUE)

fata10_HI=read.xls("Fatalities/2010_2011_By_County/Hawaii_10_11.xls", header=TRUE)

fata11_HI=read.xls("Fatalities/2010_2011_By_County/Hawaii_10_11.xls", header=TRUE)

fata03_HI=subset(fata03_HI, select=c("County", "X2003"))

fata03_HI=rename.vars(data=fata03_HI, from=c("X2003"), to=c("Fatalities"))

fata03_HI$Year=2003

fata04_HI=subset(fata04_HI, select=c("County", "X2004"))

fata04_HI=rename.vars(data=fata04_HI, from=c("X2004"), to=c("Fatalities"))

fata04_HI$Year=2004

fata05_HI=subset(fata05_HI, select=c("County", "X2005"))

fata05_HI=rename.vars(data=fata05_HI, from=c("X2005"), to=c("Fatalities"))

fata05_HI$Year=2005

fata06_HI=subset(fata06_HI, select=c("County", "X2006"))

fata06_HI=rename.vars(data=fata06_HI, from=c("X2006"), to=c("Fatalities"))

fata06_HI$Year=2006

fata07_HI=subset(fata07_HI, select=c("County", "X2007"))

fata07_HI=rename.vars(data=fata07_HI, from=c("X2007"), to=c("Fatalities"))

fata07_HI$Year=2007

fata08_HI=subset(fata08_HI, select=c("County", "X2008"))

fata08_HI=rename.vars(data=fata08_HI, from=c("X2008"), to=c("Fatalities"))

fata08_HI$Year=2008

fata09_HI=subset(fata09_HI, select=c("County", "X2009"))

fata09_HI=rename.vars(data=fata09_HI, from=c("X2009"), to=c("Fatalities"))

fata09_HI$Year=2009

fata10_HI=subset(fata10_HI, select=c("County", "X2010"))

fata10_HI=rename.vars(data=fata10_HI, from=c("X2010"), to=c("Fatalities"))

fata10_HI$Year=2010

fata11_HI=subset(fata11_HI, select=c("County", "X2011"))

fata11_HI=rename.vars(data=fata11_HI, from=c("X2011"), to=c("Fatalities"))

fata11_HI$Year=2011





fata_HI=rbind(fata03_HI,fata04_HI,fata05_HI,fata06_HI,fata07_HI,fata08_HI,fata09_HI,fata10_HI,fata11_HI)

fata_HI=subset(fata_HI, County!="NOT APPLICABLE (000)")

fata_HI=subset(fata_HI, County!="OTHER (997)")

fata_HI=subset(fata_HI, County!="UNKNOWN (999)")

fata_HI=subset(fata_HI, County!="Total")

fata_HI = subset(fata_HI, County != "Not Reported")



fata_HI$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_HI$County)

fata_HI$County = paste(fata_HI$County, "County")

fata_HI$County = toupper(fata_HI$County)



fata_HI=subset(fata_HI, Fatalities!="NA")

final_HI = merge(est_HI, fata_HI, by = c("County", "Year"))

final_HI = transform(final_HI, Population = (as.numeric(final_HI$Poverty.Estimate.All.Ages)*100)/as.numeric(final_HI$Poverty.Percent.All.Ages))

final_HI = transform(final_HI, Fatalities.Percent = (as.numeric(final_HI$Fatalities)*100)/as.numeric(final_HI$Population))

final_HI=rename.vars (final_HI, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_HI=rename.vars (final_HI, from="Fatalities.Percent", to="Fatalities Percent")

final_HI=rename.vars (final_HI, from="Fatalities", to="Fatalities Count")

final_HI=rename.vars (final_HI, from="Median.Household.Income", to="Median Income")

final_HI=rename.vars (final_HI, from="Poverty.Percent.All.Ages", to="Poverty Percent")


commute_HI=read.csv("Commute time/Commute_Time_Data.csv")

commute_HI=commute_HI[which(commute_HI$State=="HI"),]

commute_HI=rename.vars(data=commute_HI, from=c("State"), to=c("Postal"))

commute_HI$County = paste(commute_HI$County, "County")

commute_HI$County = toupper(commute_HI$County)

final_HI=merge(final_HI,commute_HI, by = c("Postal", "County"))

final_HI=rename.vars (final_HI, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_HI=subset(final_HI, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))
final_HI = subset(final_HI, Population != "NA")
final_HI = subset(final_HI, Population != "NaN")
write.csv(final_HI,file="HI.csv")
