require(gdata)

setwd("data")

est03_MS = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_MS = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_MS = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_MS = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_MS = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_MS = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_MS = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_MS = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_MS = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_MS=subset(est03_MS, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_MS=est03_MS[which(est03_MS$Postal == "MS"),]

est03_MS = est03_MS[which(est03_MS$Name != "Mississippi"),]

est03_MS=subset(est03_MS,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_MS$Year=2003

est04_MS=subset(est04_MS, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_MS=est04_MS[which(est04_MS$Postal == "MS"),]

est04_MS = est04_MS[which(est04_MS$Name != "Mississippi"),]

est04_MS=subset(est04_MS,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_MS$Year=2004

est05_MS=subset(est05_MS, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_MS=est05_MS[which(est05_MS$Postal == "MS"),]

est05_MS = est05_MS[which(est05_MS$Name != "Mississippi"),]

est05_MS=subset(est05_MS,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_MS$Year=2005

est06_MS=subset(est06_MS, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_MS=est06_MS[which(est06_MS$Postal == "MS"),]

est06_MS = est06_MS[which(est06_MS$Name != "Mississippi"),]

est06_MS=subset(est06_MS,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_MS$Year=2006

est07_MS=subset(est07_MS, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_MS=est07_MS[which(est07_MS$Postal == "MS"),]

est07_MS = est07_MS[which(est07_MS$Name != "Mississippi"),]

est07_MS=subset(est07_MS,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_MS$Year=2007

est08_MS=subset(est08_MS, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_MS=est08_MS[which(est08_MS$Postal == "MS"),]

est08_MS = est08_MS[which(est08_MS$Name != "Mississippi"),]

est08_MS=subset(est08_MS,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_MS$Year=2008

est09_MS=subset(est09_MS, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_MS=est09_MS[which(est09_MS$Postal == "MS"),]

est09_MS = est09_MS[which(est09_MS$Name != "Mississippi"),]

est09_MS=subset(est09_MS,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_MS$Year=2009

est10_MS=subset(est10_MS, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_MS=est10_MS[which(est10_MS$Postal == "MS"),]

est10_MS = est10_MS[which(est10_MS$Name != "Mississippi"),]

est10_MS=subset(est10_MS,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_MS$Year=2010

est11_MS=subset(est11_MS, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_MS=est11_MS[which(est11_MS$Postal == "MS"),]

est11_MS = est11_MS[which(est11_MS$Name != "Mississippi"),]

est11_MS=subset(est11_MS,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_MS$Year=2011



est_MS=rbind(est06_MS,est07_MS,est08_MS,est09_MS, est03_MS,est04_MS,est05_MS,est10_MS,est11_MS)

est_MS = est_MS[order(est_MS$Year),]

est_MS=rename.vars(data=est_MS, from=c("Name"), to=c("County"))

est_MS$County = toupper(est_MS$County)



fata03_MS=read.xls("Fatalities/2003_2004_By_County/mississippi.xls", header=TRUE)

fata04_MS=read.xls("Fatalities/2003_2004_By_County/mississippi.xls", header=TRUE)

fata05_MS=read.xls("Fatalities/2005_2006_By_County/mississippi.xls", header=TRUE)

fata06_MS=read.xls("Fatalities/2005_2006_By_County/mississippi.xls", header=TRUE)

fata07_MS=read.xls("Fatalities/2006_2007_By_County/Mississippi_06_07.xls", header=TRUE)

fata08_MS=read.xls("Fatalities/2008_2009_By_County/Mississippi_08_09.xls", header=TRUE)

fata09_MS=read.xls("Fatalities/2008_2009_By_County/Mississippi_08_09.xls", header=TRUE)

fata10_MS=read.xls("Fatalities/2010_2011_By_County/Mississippi_10_11.xls", header=TRUE)

fata11_MS=read.xls("Fatalities/2010_2011_By_County/Mississippi_10_11.xls", header=TRUE)

fata03_MS=subset(fata03_MS, select=c("County", "X2003"))

fata03_MS=rename.vars(data=fata03_MS, from=c("X2003"), to=c("Fatalities"))

fata03_MS$Year=2003

fata04_MS=subset(fata04_MS, select=c("County", "X2004"))

fata04_MS=rename.vars(data=fata04_MS, from=c("X2004"), to=c("Fatalities"))

fata04_MS$Year=2004

fata05_MS=subset(fata05_MS, select=c("County", "X2005"))

fata05_MS=rename.vars(data=fata05_MS, from=c("X2005"), to=c("Fatalities"))

fata05_MS$Year=2005

fata06_MS=subset(fata06_MS, select=c("County", "X2006"))

fata06_MS=rename.vars(data=fata06_MS, from=c("X2006"), to=c("Fatalities"))

fata06_MS$Year=2006

fata07_MS=subset(fata07_MS, select=c("County", "X2007"))

fata07_MS=rename.vars(data=fata07_MS, from=c("X2007"), to=c("Fatalities"))

fata07_MS$Year=2007

fata08_MS=subset(fata08_MS, select=c("County", "X2008"))

fata08_MS=rename.vars(data=fata08_MS, from=c("X2008"), to=c("Fatalities"))

fata08_MS$Year=2008

fata09_MS=subset(fata09_MS, select=c("County", "X2009"))

fata09_MS=rename.vars(data=fata09_MS, from=c("X2009"), to=c("Fatalities"))

fata09_MS$Year=2009

fata10_MS=subset(fata10_MS, select=c("County", "X2010"))

fata10_MS=rename.vars(data=fata10_MS, from=c("X2010"), to=c("Fatalities"))

fata10_MS$Year=2010

fata11_MS=subset(fata11_MS, select=c("County", "X2011"))

fata11_MS=rename.vars(data=fata11_MS, from=c("X2011"), to=c("Fatalities"))

fata11_MS$Year=2011





fata_MS=rbind(fata03_MS,fata04_MS,fata05_MS,fata06_MS,fata07_MS,fata08_MS,fata09_MS,fata10_MS,fata11_MS)

fata_MS=subset(fata_MS, County!="NOT APPLICABLE (000)")

fata_MS=subset(fata_MS, County!="OTHER (997)")

fata_MS=subset(fata_MS, County!="UNKNOWN (999)")

fata_MS=subset(fata_MS, County!="Total")

fata_MS = subset(fata_MS, County != "Not Reported")



fata_MS$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_MS$County)

fata_MS$County = paste(fata_MS$County, "County")

fata_MS$County = toupper(fata_MS$County)



fata_MS=subset(fata_MS, Fatalities!="NA")

final_MS = merge(est_MS, fata_MS, by = c("County", "Year"))

final_MS = transform(final_MS, Population = (as.numeric(final_MS$Poverty.Estimate.All.Ages)*100)/as.numeric(final_MS$Poverty.Percent.All.Ages))

final_MS = transform(final_MS, Fatalities.Percent = (as.numeric(final_MS$Fatalities)*100)/as.numeric(final_MS$Population))

final_MS=rename.vars (final_MS, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_MS=rename.vars (final_MS, from="Fatalities.Percent", to="Fatalities Percent")

final_MS=rename.vars (final_MS, from="Fatalities", to="Fatalities Count")

final_MS=rename.vars (final_MS, from="Median.Household.Income", to="Median Income")

final_MS=rename.vars (final_MS, from="Poverty.Percent.All.Ages", to="Poverty Percent")


commute_MS=read.csv("Commute time/Commute_Time_Data.csv")

commute_MS=commute_MS[which(commute_MS$State=="MS"),]

commute_MS=rename.vars(data=commute_MS, from=c("State"), to=c("Postal"))

commute_MS$County = paste(commute_MS$County, "County")

commute_MS$County = toupper(commute_MS$County)

final_MS=merge(final_MS,commute_MS, by = c("Postal", "County"))

final_MS=rename.vars (final_MS, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_MS=subset(final_MS, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_MS,file="MS.csv")
