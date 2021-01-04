require(gdata)

setwd("data")

est03_VT = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_VT = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_VT = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_VT = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_VT = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_VT = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_VT = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_VT = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_VT = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_VT=subset(est03_VT, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_VT=est03_VT[which(est03_VT$Postal == "VT"),]

est03_VT = est03_VT[which(est03_VT$Name != "Vermont"),]

est03_VT=subset(est03_VT,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_VT$Year=2003

est04_VT=subset(est04_VT, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_VT=est04_VT[which(est04_VT$Postal == "VT"),]

est04_VT = est04_VT[which(est04_VT$Name != "Vermont"),]

est04_VT=subset(est04_VT,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_VT$Year=2004

est05_VT=subset(est05_VT, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_VT=est05_VT[which(est05_VT$Postal == "VT"),]

est05_VT = est05_VT[which(est05_VT$Name != "Vermont"),]

est05_VT=subset(est05_VT,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_VT$Year=2005

est06_VT=subset(est06_VT, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_VT=est06_VT[which(est06_VT$Postal == "VT"),]

est06_VT = est06_VT[which(est06_VT$Name != "Vermont"),]

est06_VT=subset(est06_VT,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_VT$Year=2006

est07_VT=subset(est07_VT, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_VT=est07_VT[which(est07_VT$Postal == "VT"),]

est07_VT = est07_VT[which(est07_VT$Name != "Vermont"),]

est07_VT=subset(est07_VT,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_VT$Year=2007

est08_VT=subset(est08_VT, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_VT=est08_VT[which(est08_VT$Postal == "VT"),]

est08_VT = est08_VT[which(est08_VT$Name != "Vermont"),]

est08_VT=subset(est08_VT,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_VT$Year=2008

est09_VT=subset(est09_VT, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_VT=est09_VT[which(est09_VT$Postal == "VT"),]

est09_VT = est09_VT[which(est09_VT$Name != "Vermont"),]

est09_VT=subset(est09_VT,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_VT$Year=2009

est10_VT=subset(est10_VT, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_VT=est10_VT[which(est10_VT$Postal == "VT"),]

est10_VT = est10_VT[which(est10_VT$Name != "Vermont"),]

est10_VT=subset(est10_VT,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_VT$Year=2010

est11_VT=subset(est11_VT, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_VT=est11_VT[which(est11_VT$Postal == "VT"),]

est11_VT = est11_VT[which(est11_VT$Name != "Vermont"),]

est11_VT=subset(est11_VT,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_VT$Year=2011



est_VT=rbind(est06_VT,est07_VT,est08_VT,est09_VT, est03_VT,est04_VT,est05_VT,est10_VT,est11_VT)

est_VT = est_VT[order(est_VT$Year),]

est_VT=rename.vars(data=est_VT, from=c("Name"), to=c("County"))

est_VT$County = toupper(est_VT$County)



fata03_VT=read.xls("Fatalities/2003_2004_By_County/Vermont.xls", header=TRUE)

fata04_VT=read.xls("Fatalities/2003_2004_By_County/Vermont.xls", header=TRUE)

fata05_VT=read.xls("Fatalities/2005_2006_By_County/Vermont.xls", header=TRUE)

fata06_VT=read.xls("Fatalities/2005_2006_By_County/Vermont.xls", header=TRUE)

fata07_VT=read.xls("Fatalities/2006_2007_By_County/Vermont_06_07.xls", header=TRUE)

fata08_VT=read.xls("Fatalities/2008_2009_By_County/Vermont_08_09.xls", header=TRUE)

fata09_VT=read.xls("Fatalities/2008_2009_By_County/Vermont_08_09.xls", header=TRUE)

fata10_VT=read.xls("Fatalities/2010_2011_By_County/Vermont_10_11.xls", header=TRUE)

fata11_VT=read.xls("Fatalities/2010_2011_By_County/Vermont_10_11.xls", header=TRUE)

fata03_VT=subset(fata03_VT, select=c("County", "X2003"))

fata03_VT=rename.vars(data=fata03_VT, from=c("X2003"), to=c("Fatalities"))

fata03_VT$Year=2003

fata04_VT=subset(fata04_VT, select=c("County", "X2004"))

fata04_VT=rename.vars(data=fata04_VT, from=c("X2004"), to=c("Fatalities"))

fata04_VT$Year=2004

fata05_VT=subset(fata05_VT, select=c("County", "X2005"))

fata05_VT=rename.vars(data=fata05_VT, from=c("X2005"), to=c("Fatalities"))

fata05_VT$Year=2005

fata06_VT=subset(fata06_VT, select=c("County", "X2006"))

fata06_VT=rename.vars(data=fata06_VT, from=c("X2006"), to=c("Fatalities"))

fata06_VT$Year=2006

fata07_VT=subset(fata07_VT, select=c("County", "X2007"))

fata07_VT=rename.vars(data=fata07_VT, from=c("X2007"), to=c("Fatalities"))

fata07_VT$Year=2007

fata08_VT=subset(fata08_VT, select=c("County", "X2008"))

fata08_VT=rename.vars(data=fata08_VT, from=c("X2008"), to=c("Fatalities"))

fata08_VT$Year=2008

fata09_VT=subset(fata09_VT, select=c("County", "X2009"))

fata09_VT=rename.vars(data=fata09_VT, from=c("X2009"), to=c("Fatalities"))

fata09_VT$Year=2009

fata10_VT=subset(fata10_VT, select=c("County", "X2010"))

fata10_VT=rename.vars(data=fata10_VT, from=c("X2010"), to=c("Fatalities"))

fata10_VT$Year=2010

fata11_VT=subset(fata11_VT, select=c("County", "X2011"))

fata11_VT=rename.vars(data=fata11_VT, from=c("X2011"), to=c("Fatalities"))

fata11_VT$Year=2011





fata_VT=rbind(fata03_VT,fata04_VT,fata05_VT,fata06_VT,fata07_VT,fata08_VT,fata09_VT,fata10_VT,fata11_VT)

fata_VT=subset(fata_VT, County!="NOT APPLICABLE (000)")

fata_VT=subset(fata_VT, County!="OTHER (997)")

fata_VT=subset(fata_VT, County!="UNKNOWN (999)")

fata_VT=subset(fata_VT, County!="Total")

fata_VT = subset(fata_VT, County != "Not Reported")



fata_VT$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_VT$County)

fata_VT$County = paste(fata_VT$County, "County")

fata_VT$County = toupper(fata_VT$County)



fata_VT=subset(fata_VT, Fatalities!="NA")

final_VT = merge(est_VT, fata_VT, by = c("County", "Year"))

final_VT = transform(final_VT, Population = (as.numeric(final_VT$Poverty.Estimate.All.Ages)*100)/as.numeric(final_VT$Poverty.Percent.All.Ages))

final_VT = transform(final_VT, Fatalities.Percent = (as.numeric(final_VT$Fatalities)*100)/as.numeric(final_VT$Population))

final_VT=rename.vars (final_VT, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_VT=rename.vars (final_VT, from="Fatalities.Percent", to="Fatalities Percent")

final_VT=rename.vars (final_VT, from="Fatalities", to="Fatalities Count")

final_VT=rename.vars (final_VT, from="Median.Household.Income", to="Median Income")

final_VT=rename.vars (final_VT, from="Poverty.Percent.All.Ages", to="Poverty Percent")


commute_VT=read.csv("Commute time/Commute_Time_Data.csv")

commute_VT=commute_VT[which(commute_VT$State=="VT"),]

commute_VT=rename.vars(data=commute_VT, from=c("State"), to=c("Postal"))

commute_VT$County = paste(commute_VT$County, "County")

commute_VT$County = toupper(commute_VT$County)

final_VT=merge(final_VT,commute_VT, by = c("Postal", "County"))

final_VT=rename.vars (final_VT, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_VT=subset(final_VT, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_VT,file="VT.csv")
