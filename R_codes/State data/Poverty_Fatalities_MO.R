require(gdata)

setwd("data")

est03_MO = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_MO = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_MO = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_MO = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_MO = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_MO = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_MO = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_MO = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_MO = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_MO=subset(est03_MO, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_MO=est03_MO[which(est03_MO$Postal == "MO"),]

est03_MO = est03_MO[which(est03_MO$Name != "Missouri"),]

est03_MO=subset(est03_MO,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_MO$Year=2003

est04_MO=subset(est04_MO, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_MO=est04_MO[which(est04_MO$Postal == "MO"),]

est04_MO = est04_MO[which(est04_MO$Name != "Missouri"),]

est04_MO=subset(est04_MO,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_MO$Year=2004

est05_MO=subset(est05_MO, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_MO=est05_MO[which(est05_MO$Postal == "MO"),]

est05_MO = est05_MO[which(est05_MO$Name != "Missouri"),]

est05_MO=subset(est05_MO,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_MO$Year=2005

est06_MO=subset(est06_MO, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_MO=est06_MO[which(est06_MO$Postal == "MO"),]

est06_MO = est06_MO[which(est06_MO$Name != "Missouri"),]

est06_MO=subset(est06_MO,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_MO$Year=2006

est07_MO=subset(est07_MO, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_MO=est07_MO[which(est07_MO$Postal == "MO"),]

est07_MO = est07_MO[which(est07_MO$Name != "Missouri"),]

est07_MO=subset(est07_MO,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_MO$Year=2007

est08_MO=subset(est08_MO, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_MO=est08_MO[which(est08_MO$Postal == "MO"),]

est08_MO = est08_MO[which(est08_MO$Name != "Missouri"),]

est08_MO=subset(est08_MO,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_MO$Year=2008

est09_MO=subset(est09_MO, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_MO=est09_MO[which(est09_MO$Postal == "MO"),]

est09_MO = est09_MO[which(est09_MO$Name != "Missouri"),]

est09_MO=subset(est09_MO,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_MO$Year=2009

est10_MO=subset(est10_MO, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_MO=est10_MO[which(est10_MO$Postal == "MO"),]

est10_MO = est10_MO[which(est10_MO$Name != "Missouri"),]

est10_MO=subset(est10_MO,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_MO$Year=2010

est11_MO=subset(est11_MO, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_MO=est11_MO[which(est11_MO$Postal == "MO"),]

est11_MO = est11_MO[which(est11_MO$Name != "Missouri"),]

est11_MO=subset(est11_MO,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_MO$Year=2011



est_MO=rbind(est06_MO,est07_MO,est08_MO,est09_MO, est03_MO,est04_MO,est05_MO,est10_MO,est11_MO)

est_MO = est_MO[order(est_MO$Year),]

est_MO=rename.vars(data=est_MO, from=c("Name"), to=c("County"))

est_MO$County = toupper(est_MO$County)



fata03_MO=read.xls("Fatalities/2003_2004_By_County/missouri.xls", header=TRUE)

fata04_MO=read.xls("Fatalities/2003_2004_By_County/missouri.xls", header=TRUE)

fata05_MO=read.xls("Fatalities/2005_2006_By_County/missouri.xls", header=TRUE)

fata06_MO=read.xls("Fatalities/2005_2006_By_County/missouri.xls", header=TRUE)

fata07_MO=read.xls("Fatalities/2006_2007_By_County/Missouri_06_07.xls", header=TRUE)

fata08_MO=read.xls("Fatalities/2008_2009_By_County/Missouri_08_09.xls", header=TRUE)

fata09_MO=read.xls("Fatalities/2008_2009_By_County/Missouri_08_09.xls", header=TRUE)

fata10_MO=read.xls("Fatalities/2010_2011_By_County/Missouri_10_11.xls", header=TRUE)

fata11_MO=read.xls("Fatalities/2010_2011_By_County/Missouri_10_11.xls", header=TRUE)

fata03_MO=subset(fata03_MO, select=c("County", "X2003"))

fata03_MO=rename.vars(data=fata03_MO, from=c("X2003"), to=c("Fatalities"))

fata03_MO$Year=2003

fata04_MO=subset(fata04_MO, select=c("County", "X2004"))

fata04_MO=rename.vars(data=fata04_MO, from=c("X2004"), to=c("Fatalities"))

fata04_MO$Year=2004

fata05_MO=subset(fata05_MO, select=c("County", "X2005"))

fata05_MO=rename.vars(data=fata05_MO, from=c("X2005"), to=c("Fatalities"))

fata05_MO$Year=2005

fata06_MO=subset(fata06_MO, select=c("County", "X2006"))

fata06_MO=rename.vars(data=fata06_MO, from=c("X2006"), to=c("Fatalities"))

fata06_MO$Year=2006

fata07_MO=subset(fata07_MO, select=c("County", "X2007"))

fata07_MO=rename.vars(data=fata07_MO, from=c("X2007"), to=c("Fatalities"))

fata07_MO$Year=2007

fata08_MO=subset(fata08_MO, select=c("County", "X2008"))

fata08_MO=rename.vars(data=fata08_MO, from=c("X2008"), to=c("Fatalities"))

fata08_MO$Year=2008

fata09_MO=subset(fata09_MO, select=c("County", "X2009"))

fata09_MO=rename.vars(data=fata09_MO, from=c("X2009"), to=c("Fatalities"))

fata09_MO$Year=2009

fata10_MO=subset(fata10_MO, select=c("County", "X2010"))

fata10_MO=rename.vars(data=fata10_MO, from=c("X2010"), to=c("Fatalities"))

fata10_MO$Year=2010

fata11_MO=subset(fata11_MO, select=c("County", "X2011"))

fata11_MO=rename.vars(data=fata11_MO, from=c("X2011"), to=c("Fatalities"))

fata11_MO$Year=2011





fata_MO=rbind(fata03_MO,fata04_MO,fata05_MO,fata06_MO,fata07_MO,fata08_MO,fata09_MO,fata10_MO,fata11_MO)

fata_MO=subset(fata_MO, County!="NOT APPLICABLE (000)")

fata_MO=subset(fata_MO, County!="OTHER (997)")

fata_MO=subset(fata_MO, County!="UNKNOWN (999)")

fata_MO=subset(fata_MO, County!="Total")

fata_MO = subset(fata_MO, County != "Not Reported")



fata_MO$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_MO$County)

fata_MO$County = paste(fata_MO$County, "County")

fata_MO$County = toupper(fata_MO$County)



fata_MO=subset(fata_MO, Fatalities!="NA")

final_MO = merge(est_MO, fata_MO, by = c("County", "Year"))

final_MO = transform(final_MO, Population = (as.numeric(final_MO$Poverty.Estimate.All.Ages)*100)/as.numeric(final_MO$Poverty.Percent.All.Ages))

final_MO = transform(final_MO, Fatalities.Percent = (as.numeric(final_MO$Fatalities)*100)/as.numeric(final_MO$Population))

final_MO=rename.vars (final_MO, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_MO=rename.vars (final_MO, from="Fatalities.Percent", to="Fatalities Percent")

final_MO=rename.vars (final_MO, from="Fatalities", to="Fatalities Count")

final_MO=rename.vars (final_MO, from="Median.Household.Income", to="Median Income")

final_MO=rename.vars (final_MO, from="Poverty.Percent.All.Ages", to="Poverty Percent")


commute_MO=read.csv("Commute time/Commute_Time_Data.csv")

commute_MO=commute_MO[which(commute_MO$State=="MO"),]

commute_MO=rename.vars(data=commute_MO, from=c("State"), to=c("Postal"))

commute_MO$County = paste(commute_MO$County, "County")

commute_MO$County = toupper(commute_MO$County)

final_MO=merge(final_MO,commute_MO, by = c("Postal", "County"))

final_MO=rename.vars (final_MO, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_MO=subset(final_MO, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_MO,file="MO.csv")
