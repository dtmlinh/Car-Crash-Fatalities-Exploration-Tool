require(gdata)

setwd("data")

est03_RI = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_RI = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_RI = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_RI = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_RI = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_RI = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_RI = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_RI = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_RI = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_RI=subset(est03_RI, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_RI=est03_RI[which(est03_RI$Postal == "RI"),]

est03_RI = est03_RI[which(est03_RI$Name != "Rhode Island"),]

est03_RI=subset(est03_RI,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_RI$Year=2003

est04_RI=subset(est04_RI, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_RI=est04_RI[which(est04_RI$Postal == "RI"),]

est04_RI = est04_RI[which(est04_RI$Name != "Rhode Island"),]

est04_RI=subset(est04_RI,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_RI$Year=2004

est05_RI=subset(est05_RI, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_RI=est05_RI[which(est05_RI$Postal == "RI"),]

est05_RI = est05_RI[which(est05_RI$Name != "Rhode Island"),]

est05_RI=subset(est05_RI,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_RI$Year=2005

est06_RI=subset(est06_RI, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_RI=est06_RI[which(est06_RI$Postal == "RI"),]

est06_RI = est06_RI[which(est06_RI$Name != "Rhode Island"),]

est06_RI=subset(est06_RI,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_RI$Year=2006

est07_RI=subset(est07_RI, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_RI=est07_RI[which(est07_RI$Postal == "RI"),]

est07_RI = est07_RI[which(est07_RI$Name != "Rhode Island"),]

est07_RI=subset(est07_RI,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_RI$Year=2007

est08_RI=subset(est08_RI, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_RI=est08_RI[which(est08_RI$Postal == "RI"),]

est08_RI = est08_RI[which(est08_RI$Name != "Rhode Island"),]

est08_RI=subset(est08_RI,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_RI$Year=2008

est09_RI=subset(est09_RI, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_RI=est09_RI[which(est09_RI$Postal == "RI"),]

est09_RI = est09_RI[which(est09_RI$Name != "Rhode Island"),]

est09_RI=subset(est09_RI,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_RI$Year=2009

est10_RI=subset(est10_RI, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_RI=est10_RI[which(est10_RI$Postal == "RI"),]

est10_RI = est10_RI[which(est10_RI$Name != "Rhode Island"),]

est10_RI=subset(est10_RI,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_RI$Year=2010

est11_RI=subset(est11_RI, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_RI=est11_RI[which(est11_RI$Postal == "RI"),]

est11_RI = est11_RI[which(est11_RI$Name != "Rhode Island"),]

est11_RI=subset(est11_RI,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_RI$Year=2011



est_RI=rbind(est06_RI,est07_RI,est08_RI,est09_RI, est03_RI,est04_RI,est05_RI,est10_RI,est11_RI)

est_RI = est_RI[order(est_RI$Year),]

est_RI=rename.vars(data=est_RI, from=c("Name"), to=c("County"))

est_RI$County = toupper(est_RI$County)



fata03_RI=read.xls("Fatalities/2003_2004_By_County/Rhode Island.xls", header=TRUE)

fata04_RI=read.xls("Fatalities/2003_2004_By_County/Rhode Island.xls", header=TRUE)

fata05_RI=read.xls("Fatalities/2005_2006_By_County/Rhode Island.xls", header=TRUE)

fata06_RI=read.xls("Fatalities/2005_2006_By_County/Rhode Island.xls", header=TRUE)

fata07_RI=read.xls("Fatalities/2006_2007_By_County/Rhode_Island_06_07.xls", header=TRUE)

fata08_RI=read.xls("Fatalities/2008_2009_By_County/Rhode_Island_08_09.xls", header=TRUE)

fata09_RI=read.xls("Fatalities/2008_2009_By_County/Rhode_Island_08_09.xls", header=TRUE)

fata10_RI=read.xls("Fatalities/2010_2011_By_County/Rhode_Island_10_11.xls", header=TRUE)

fata11_RI=read.xls("Fatalities/2010_2011_By_County/Rhode_Island_10_11.xls", header=TRUE)

fata03_RI=subset(fata03_RI, select=c("County", "X2003"))

fata03_RI=rename.vars(data=fata03_RI, from=c("X2003"), to=c("Fatalities"))

fata03_RI$Year=2003

fata04_RI=subset(fata04_RI, select=c("County", "X2004"))

fata04_RI=rename.vars(data=fata04_RI, from=c("X2004"), to=c("Fatalities"))

fata04_RI$Year=2004

fata05_RI=subset(fata05_RI, select=c("County", "X2005"))

fata05_RI=rename.vars(data=fata05_RI, from=c("X2005"), to=c("Fatalities"))

fata05_RI$Year=2005

fata06_RI=subset(fata06_RI, select=c("County", "X2006"))

fata06_RI=rename.vars(data=fata06_RI, from=c("X2006"), to=c("Fatalities"))

fata06_RI$Year=2006

fata07_RI=subset(fata07_RI, select=c("County", "X2007"))

fata07_RI=rename.vars(data=fata07_RI, from=c("X2007"), to=c("Fatalities"))

fata07_RI$Year=2007

fata08_RI=subset(fata08_RI, select=c("County", "X2008"))

fata08_RI=rename.vars(data=fata08_RI, from=c("X2008"), to=c("Fatalities"))

fata08_RI$Year=2008

fata09_RI=subset(fata09_RI, select=c("County", "X2009"))

fata09_RI=rename.vars(data=fata09_RI, from=c("X2009"), to=c("Fatalities"))

fata09_RI$Year=2009

fata10_RI=subset(fata10_RI, select=c("County", "X2010"))

fata10_RI=rename.vars(data=fata10_RI, from=c("X2010"), to=c("Fatalities"))

fata10_RI$Year=2010

fata11_RI=subset(fata11_RI, select=c("County", "X2011"))

fata11_RI=rename.vars(data=fata11_RI, from=c("X2011"), to=c("Fatalities"))

fata11_RI$Year=2011





fata_RI=rbind(fata03_RI,fata04_RI,fata05_RI,fata06_RI,fata07_RI,fata08_RI,fata09_RI,fata10_RI,fata11_RI)

fata_RI=subset(fata_RI, County!="NOT APPLICABLE (000)")

fata_RI=subset(fata_RI, County!="OTHER (997)")

fata_RI=subset(fata_RI, County!="UNKNOWN (999)")

fata_RI=subset(fata_RI, County!="Total")

fata_RI = subset(fata_RI, County != "Not Reported")



fata_RI$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_RI$County)

fata_RI$County = paste(fata_RI$County, "County")

fata_RI$County = toupper(fata_RI$County)



fata_RI=subset(fata_RI, Fatalities!="NA")

final_RI = merge(est_RI, fata_RI, by = c("County", "Year"))

final_RI = transform(final_RI, Population = (as.numeric(final_RI$Poverty.Estimate.All.Ages)*100)/as.numeric(final_RI$Poverty.Percent.All.Ages))

final_RI = transform(final_RI, Fatalities.Percent = (as.numeric(final_RI$Fatalities)*100)/as.numeric(final_RI$Population))

final_RI=rename.vars (final_RI, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_RI=rename.vars (final_RI, from="Fatalities.Percent", to="Fatalities Percent")

final_RI=rename.vars (final_RI, from="Fatalities", to="Fatalities Count")

final_RI=rename.vars (final_RI, from="Median.Household.Income", to="Median Income")

final_RI=rename.vars (final_RI, from="Poverty.Percent.All.Ages", to="Poverty Percent")


commute_RI=read.csv("Commute time/Commute_Time_Data.csv")

commute_RI=commute_RI[which(commute_RI$State=="RI"),]

commute_RI=rename.vars(data=commute_RI, from=c("State"), to=c("Postal"))

commute_RI$County = paste(commute_RI$County, "County")

commute_RI$County = toupper(commute_RI$County)

final_RI=merge(final_RI,commute_RI, by = c("Postal", "County"))

final_RI=rename.vars (final_RI, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_RI=subset(final_RI, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_RI,file="RI.csv")
