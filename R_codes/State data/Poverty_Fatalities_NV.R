require(gdata)

setwd("data")

est03_NV = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_NV = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_NV = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_NV = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_NV = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_NV = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_NV = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_NV = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_NV = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_NV=subset(est03_NV, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_NV=est03_NV[which(est03_NV$Postal == "NV"),]

est03_NV = est03_NV[which(est03_NV$Name != "Nevada"),]

est03_NV=subset(est03_NV,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_NV$Year=2003

est04_NV=subset(est04_NV, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))


est04_NV=est04_NV[which(est04_NV$Postal == "NV"),]

est04_NV = est04_NV[which(est04_NV$Name != "Nevada"),]

est04_NV=subset(est04_NV,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_NV$Year=2004

est05_NV=subset(est05_NV, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_NV=est05_NV[which(est05_NV$Postal == "NV"),]

est05_NV = est05_NV[which(est05_NV$Name != "Nevada"),]

est05_NV=subset(est05_NV,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_NV$Year=2005

est06_NV=subset(est06_NV, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_NV=est06_NV[which(est06_NV$Postal == "NV"),]

est06_NV = est06_NV[which(est06_NV$Name != "Nevada"),]

est06_NV=subset(est06_NV,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_NV$Year=2006

est07_NV=subset(est07_NV, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_NV=est07_NV[which(est07_NV$Postal == "NV"),]

est07_NV = est07_NV[which(est07_NV$Name != "Nevada"),]

est07_NV=subset(est07_NV,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_NV$Year=2007

est08_NV=subset(est08_NV, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_NV=est08_NV[which(est08_NV$Postal == "NV"),]

est08_NV = est08_NV[which(est08_NV$Name != "Nevada"),]

est08_NV=subset(est08_NV,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_NV$Year=2008

est09_NV=subset(est09_NV, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_NV=est09_NV[which(est09_NV$Postal == "NV"),]

est09_NV = est09_NV[which(est09_NV$Name != "Nevada"),]

est09_NV=subset(est09_NV,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_NV$Year=2009

est10_NV=subset(est10_NV, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_NV=est10_NV[which(est10_NV$Postal == "NV"),]

est10_NV = est10_NV[which(est10_NV$Name != "Nevada"),]

est10_NV=subset(est10_NV,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_NV$Year=2010

est11_NV=subset(est11_NV, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_NV=est11_NV[which(est11_NV$Postal == "NV"),]

est11_NV = est11_NV[which(est11_NV$Name != "Nevada"),]

est11_NV=subset(est11_NV,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_NV$Year=2011



est_NV=rbind(est06_NV,est07_NV,est08_NV,est09_NV, est03_NV,est04_NV,est05_NV,est10_NV,est11_NV)

est_NV = est_NV[order(est_NV$Year),]

est_NV=rename.vars(data=est_NV, from=c("Name"), to=c("County"))

est_NV$County = toupper(est_NV$County)



fata03_NV=read.xls("Fatalities/2003_2004_By_County/Nevada.xls", header=TRUE)

fata04_NV=read.xls("Fatalities/2003_2004_By_County/Nevada.xls", header=TRUE)

fata05_NV=read.xls("Fatalities/2005_2006_By_County/Nevada.xls", header=TRUE)

fata06_NV=read.xls("Fatalities/2005_2006_By_County/Nevada.xls", header=TRUE)

fata07_NV=read.xls("Fatalities/2006_2007_By_County/Nevada_06_07.xls", header=TRUE)

fata08_NV=read.xls("Fatalities/2008_2009_By_County/Nevada_08_09.xls", header=TRUE)

fata09_NV=read.xls("Fatalities/2008_2009_By_County/Nevada_08_09.xls", header=TRUE)

fata10_NV=read.xls("Fatalities/2010_2011_By_County/Nevada_10_11.xls", header=TRUE)

fata11_NV=read.xls("Fatalities/2010_2011_By_County/Nevada_10_11.xls", header=TRUE)

fata03_NV=subset(fata03_NV, select=c("County", "X2003"))

fata03_NV=rename.vars(data=fata03_NV, from=c("X2003"), to=c("Fatalities"))

fata03_NV$Year=2003

fata04_NV=subset(fata04_NV, select=c("County", "X2004"))

fata04_NV=rename.vars(data=fata04_NV, from=c("X2004"), to=c("Fatalities"))

fata04_NV$Year=2004

fata05_NV=subset(fata05_NV, select=c("County", "X2005"))

fata05_NV=rename.vars(data=fata05_NV, from=c("X2005"), to=c("Fatalities"))

fata05_NV$Year=2005

fata06_NV=subset(fata06_NV, select=c("County", "X2006"))

fata06_NV=rename.vars(data=fata06_NV, from=c("X2006"), to=c("Fatalities"))

fata06_NV$Year=2006

fata07_NV=subset(fata07_NV, select=c("County", "X2007"))

fata07_NV=rename.vars(data=fata07_NV, from=c("X2007"), to=c("Fatalities"))

fata07_NV$Year=2007

fata08_NV=subset(fata08_NV, select=c("County", "X2008"))

fata08_NV=rename.vars(data=fata08_NV, from=c("X2008"), to=c("Fatalities"))

fata08_NV$Year=2008

fata09_NV=subset(fata09_NV, select=c("County", "X2009"))

fata09_NV=rename.vars(data=fata09_NV, from=c("X2009"), to=c("Fatalities"))

fata09_NV$Year=2009

fata10_NV=subset(fata10_NV, select=c("County", "X2010"))

fata10_NV=rename.vars(data=fata10_NV, from=c("X2010"), to=c("Fatalities"))

fata10_NV$Year=2010

fata11_NV=subset(fata11_NV, select=c("County", "X2011"))

fata11_NV=rename.vars(data=fata11_NV, from=c("X2011"), to=c("Fatalities"))

fata11_NV$Year=2011





fata_NV=rbind(fata03_NV,fata04_NV,fata05_NV,fata06_NV,fata07_NV,fata08_NV,fata09_NV,fata10_NV,fata11_NV)

fata_NV=subset(fata_NV, County!="NOT APPLICABLE (000)")

fata_NV=subset(fata_NV, County!="OTHER (997)")

fata_NV=subset(fata_NV, County!="UNKNOWN (999)")

fata_NV=subset(fata_NV, County!="Total")

fata_NV = subset(fata_NV, County != "Not Reported")



fata_NV$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_NV$County)

fata_NV$County = paste(fata_NV$County, "County")

fata_NV$County = toupper(fata_NV$County)



fata_NV=subset(fata_NV, Fatalities!="NA")

final_NV = merge(est_NV, fata_NV, by = c("County", "Year"))

final_NV = transform(final_NV, Population = (as.numeric(final_NV$Poverty.Estimate.All.Ages)*100)/as.numeric(final_NV$Poverty.Percent.All.Ages))

final_NV = transform(final_NV, Fatalities.Percent = (as.numeric(final_NV$Fatalities)*100)/as.numeric(final_NV$Population))

final_NV=rename.vars (final_NV, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_NV=rename.vars (final_NV, from="Fatalities.Percent", to="Fatalities Percent")

final_NV=rename.vars (final_NV, from="Fatalities", to="Fatalities Count")

final_NV=rename.vars (final_NV, from="Median.Household.Income", to="Median Income")

final_NV=rename.vars (final_NV, from="Poverty.Percent.All.Ages", to="Poverty Percent")


commute_NV=read.csv("Commute time/Commute_Time_Data.csv")

commute_NV=commute_NV[which(commute_NV$State=="NV"),]

commute_NV=rename.vars(data=commute_NV, from=c("State"), to=c("Postal"))

commute_NV$County = paste(commute_NV$County, "County")

commute_NV$County = toupper(commute_NV$County)

final_NV=merge(final_NV,commute_NV, by = c("Postal", "County"))

final_NV=rename.vars (final_NV, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_NV=subset(final_NV, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_NV,file="NV.csv")
