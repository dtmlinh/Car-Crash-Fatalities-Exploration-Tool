require(gdata)

setwd("data")

est03_KS = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_KS = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_KS = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_KS = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_KS = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_KS = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_KS = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_KS = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_KS = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_KS=subset(est03_KS, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_KS=est03_KS[which(est03_KS$Postal == "KS"),]

est03_KS = est03_KS[which(est03_KS$Name != "Kansas"),]

est03_KS=subset(est03_KS,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_KS$Year=2003

est04_KS=subset(est04_KS, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_KS=est04_KS[which(est04_KS$Postal == "KS"),]

est04_KS = est04_KS[which(est04_KS$Name != "Kansas"),]

est04_KS=subset(est04_KS,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_KS$Year=2004

est05_KS=subset(est05_KS, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_KS=est05_KS[which(est05_KS$Postal == "KS"),]

est05_KS = est05_KS[which(est05_KS$Name != "Kansas"),]

est05_KS=subset(est05_KS,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_KS$Year=2005

est06_KS=subset(est06_KS, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_KS=est06_KS[which(est06_KS$Postal == "KS"),]

est06_KS = est06_KS[which(est06_KS$Name != "Kansas"),]

est06_KS=subset(est06_KS,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_KS$Year=2006

est07_KS=subset(est07_KS, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_KS=est07_KS[which(est07_KS$Postal == "KS"),]

est07_KS = est07_KS[which(est07_KS$Name != "Kansas"),]

est07_KS=subset(est07_KS,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_KS$Year=2007

est08_KS=subset(est08_KS, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_KS=est08_KS[which(est08_KS$Postal == "KS"),]

est08_KS = est08_KS[which(est08_KS$Name != "Kansas"),]

est08_KS=subset(est08_KS,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_KS$Year=2008

est09_KS=subset(est09_KS, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_KS=est09_KS[which(est09_KS$Postal == "KS"),]

est09_KS = est09_KS[which(est09_KS$Name != "Kansas"),]

est09_KS=subset(est09_KS,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_KS$Year=2009

est10_KS=subset(est10_KS, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_KS=est10_KS[which(est10_KS$Postal == "KS"),]

est10_KS = est10_KS[which(est10_KS$Name != "Kansas"),]

est10_KS=subset(est10_KS,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_KS$Year=2010

est11_KS=subset(est11_KS, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_KS=est11_KS[which(est11_KS$Postal == "KS"),]

est11_KS = est11_KS[which(est11_KS$Name != "Kansas"),]

est11_KS=subset(est11_KS,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_KS$Year=2011



est_KS=rbind(est06_KS,est07_KS,est08_KS,est09_KS, est03_KS,est04_KS,est05_KS,est10_KS,est11_KS)

est_KS = est_KS[order(est_KS$Year),]

est_KS=rename.vars(data=est_KS, from=c("Name"), to=c("County"))

est_KS$County = toupper(est_KS$County)



fata03_KS=read.xls("Fatalities/2003_2004_By_County/kansas.xls", header=TRUE)

fata04_KS=read.xls("Fatalities/2003_2004_By_County/kansas.xls", header=TRUE)

fata05_KS=read.xls("Fatalities/2005_2006_By_County/kansas.xls", header=TRUE)

fata06_KS=read.xls("Fatalities/2005_2006_By_County/kansas.xls", header=TRUE)

fata07_KS=read.xls("Fatalities/2006_2007_By_County/Kansas_06_07.xls", header=TRUE)

fata08_KS=read.xls("Fatalities/2008_2009_By_County/Kansas_08_09.xls", header=TRUE)

fata09_KS=read.xls("Fatalities/2008_2009_By_County/Kansas_08_09.xls", header=TRUE)

fata10_KS=read.xls("Fatalities/2010_2011_By_County/Kansas_10_11.xls", header=TRUE)

fata11_KS=read.xls("Fatalities/2010_2011_By_County/Kansas_10_11.xls", header=TRUE)

fata03_KS=subset(fata03_KS, select=c("County", "X2003"))

fata03_KS=rename.vars(data=fata03_KS, from=c("X2003"), to=c("Fatalities"))

fata03_KS$Year=2003

fata04_KS=subset(fata04_KS, select=c("County", "X2004"))

fata04_KS=rename.vars(data=fata04_KS, from=c("X2004"), to=c("Fatalities"))

fata04_KS$Year=2004

fata05_KS=subset(fata05_KS, select=c("County", "X2005"))

fata05_KS=rename.vars(data=fata05_KS, from=c("X2005"), to=c("Fatalities"))

fata05_KS$Year=2005

fata06_KS=subset(fata06_KS, select=c("County", "X2006"))

fata06_KS=rename.vars(data=fata06_KS, from=c("X2006"), to=c("Fatalities"))

fata06_KS$Year=2006

fata07_KS=subset(fata07_KS, select=c("County", "X2007"))

fata07_KS=rename.vars(data=fata07_KS, from=c("X2007"), to=c("Fatalities"))

fata07_KS$Year=2007

fata08_KS=subset(fata08_KS, select=c("County", "X2008"))

fata08_KS=rename.vars(data=fata08_KS, from=c("X2008"), to=c("Fatalities"))

fata08_KS$Year=2008

fata09_KS=subset(fata09_KS, select=c("County", "X2009"))

fata09_KS=rename.vars(data=fata09_KS, from=c("X2009"), to=c("Fatalities"))

fata09_KS$Year=2009

fata10_KS=subset(fata10_KS, select=c("County", "X2010"))

fata10_KS=rename.vars(data=fata10_KS, from=c("X2010"), to=c("Fatalities"))

fata10_KS$Year=2010

fata11_KS=subset(fata11_KS, select=c("County", "X2011"))

fata11_KS=rename.vars(data=fata11_KS, from=c("X2011"), to=c("Fatalities"))

fata11_KS$Year=2011





fata_KS=rbind(fata03_KS,fata04_KS,fata05_KS,fata06_KS,fata07_KS,fata08_KS,fata09_KS,fata10_KS,fata11_KS)

fata_KS=subset(fata_KS, County!="NOT APPLICABLE (000)")

fata_KS=subset(fata_KS, County!="OTHER (997)")

fata_KS=subset(fata_KS, County!="UNKNOWN (999)")

fata_KS=subset(fata_KS, County!="Total")

fata_KS = subset(fata_KS, County != "Not Reported")



fata_KS$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_KS$County)

fata_KS$County = paste(fata_KS$County, "County")

fata_KS$County = toupper(fata_KS$County)



fata_KS=subset(fata_KS, Fatalities!="NA")

final_KS = merge(est_KS, fata_KS, by = c("County", "Year"))

final_KS = transform(final_KS, Population = (as.numeric(final_KS$Poverty.Estimate.All.Ages)*100)/as.numeric(final_KS$Poverty.Percent.All.Ages))

final_KS = transform(final_KS, Fatalities.Percent = (as.numeric(final_KS$Fatalities)*100)/as.numeric(final_KS$Population))

final_KS=rename.vars (final_KS, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_KS=rename.vars (final_KS, from="Fatalities.Percent", to="Fatalities Percent")

final_KS=rename.vars (final_KS, from="Fatalities", to="Fatalities Count")

final_KS=rename.vars (final_KS, from="Median.Household.Income", to="Median Income")

final_KS=rename.vars (final_KS, from="Poverty.Percent.All.Ages", to="Poverty Percent")


commute_KS=read.csv("Commute time/Commute_Time_Data.csv")

commute_KS=commute_KS[which(commute_KS$State=="KS"),]

commute_KS=rename.vars(data=commute_KS, from=c("State"), to=c("Postal"))

commute_KS$County = paste(commute_KS$County, "County")

commute_KS$County = toupper(commute_KS$County)

final_KS=merge(final_KS,commute_KS, by = c("Postal", "County"))

final_KS=rename.vars (final_KS, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_KS=subset(final_KS, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_KS,file="KS.csv")
