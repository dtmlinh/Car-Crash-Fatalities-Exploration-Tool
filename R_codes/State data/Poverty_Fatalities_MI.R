require(gdata)

setwd("data")

est03_MI = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_MI = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_MI = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_MI = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_MI = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_MI = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_MI = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_MI = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_MI = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_MI=subset(est03_MI, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_MI=est03_MI[which(est03_MI$Postal == "MI"),]

est03_MI = est03_MI[which(est03_MI$Name != "Michigan"),]

est03_MI=subset(est03_MI,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_MI$Year=2003

est04_MI=subset(est04_MI, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_MI=est04_MI[which(est04_MI$Postal == "MI"),]

est04_MI = est04_MI[which(est04_MI$Name != "Michigan"),]

est04_MI=subset(est04_MI,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_MI$Year=2004

est05_MI=subset(est05_MI, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_MI=est05_MI[which(est05_MI$Postal == "MI"),]

est05_MI = est05_MI[which(est05_MI$Name != "Michigan"),]

est05_MI=subset(est05_MI,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_MI$Year=2005

est06_MI=subset(est06_MI, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_MI=est06_MI[which(est06_MI$Postal == "MI"),]

est06_MI = est06_MI[which(est06_MI$Name != "Michigan"),]

est06_MI=subset(est06_MI,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_MI$Year=2006

est07_MI=subset(est07_MI, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_MI=est07_MI[which(est07_MI$Postal == "MI"),]

est07_MI = est07_MI[which(est07_MI$Name != "Michigan"),]

est07_MI=subset(est07_MI,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_MI$Year=2007

est08_MI=subset(est08_MI, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_MI=est08_MI[which(est08_MI$Postal == "MI"),]

est08_MI = est08_MI[which(est08_MI$Name != "Michigan"),]

est08_MI=subset(est08_MI,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_MI$Year=2008

est09_MI=subset(est09_MI, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_MI=est09_MI[which(est09_MI$Postal == "MI"),]

est09_MI = est09_MI[which(est09_MI$Name != "Michigan"),]

est09_MI=subset(est09_MI,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_MI$Year=2009

est10_MI=subset(est10_MI, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_MI=est10_MI[which(est10_MI$Postal == "MI"),]

est10_MI = est10_MI[which(est10_MI$Name != "Michigan"),]

est10_MI=subset(est10_MI,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_MI$Year=2010

est11_MI=subset(est11_MI, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_MI=est11_MI[which(est11_MI$Postal == "MI"),]

est11_MI = est11_MI[which(est11_MI$Name != "Michigan"),]

est11_MI=subset(est11_MI,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_MI$Year=2011



est_MI=rbind(est06_MI,est07_MI,est08_MI,est09_MI, est03_MI,est04_MI,est05_MI,est10_MI,est11_MI)

est_MI = est_MI[order(est_MI$Year),]

est_MI=rename.vars(data=est_MI, from=c("Name"), to=c("County"))

est_MI$County = toupper(est_MI$County)



fata03_MI=read.xls("Fatalities/2003_2004_By_County/michigan.xls", header=TRUE)

fata04_MI=read.xls("Fatalities/2003_2004_By_County/michigan.xls", header=TRUE)

fata05_MI=read.xls("Fatalities/2005_2006_By_County/michigan.xls", header=TRUE)

fata06_MI=read.xls("Fatalities/2005_2006_By_County/michigan.xls", header=TRUE)

fata07_MI=read.xls("Fatalities/2006_2007_By_County/Michigan_06_07.xls", header=TRUE)

fata08_MI=read.xls("Fatalities/2008_2009_By_County/Michigan_08_09.xls", header=TRUE)

fata09_MI=read.xls("Fatalities/2008_2009_By_County/Michigan_08_09.xls", header=TRUE)

fata10_MI=read.xls("Fatalities/2010_2011_By_County/Michigan_10_11.xls", header=TRUE)

fata11_MI=read.xls("Fatalities/2010_2011_By_County/Michigan_10_11.xls", header=TRUE)

fata03_MI=subset(fata03_MI, select=c("County", "X2003"))

fata03_MI=rename.vars(data=fata03_MI, from=c("X2003"), to=c("Fatalities"))

fata03_MI$Year=2003

fata04_MI=subset(fata04_MI, select=c("County", "X2004"))

fata04_MI=rename.vars(data=fata04_MI, from=c("X2004"), to=c("Fatalities"))

fata04_MI$Year=2004

fata05_MI=subset(fata05_MI, select=c("County", "X2005"))

fata05_MI=rename.vars(data=fata05_MI, from=c("X2005"), to=c("Fatalities"))

fata05_MI$Year=2005

fata06_MI=subset(fata06_MI, select=c("County", "X2006"))

fata06_MI=rename.vars(data=fata06_MI, from=c("X2006"), to=c("Fatalities"))

fata06_MI$Year=2006

fata07_MI=subset(fata07_MI, select=c("County", "X2007"))

fata07_MI=rename.vars(data=fata07_MI, from=c("X2007"), to=c("Fatalities"))

fata07_MI$Year=2007

fata08_MI=subset(fata08_MI, select=c("County", "X2008"))

fata08_MI=rename.vars(data=fata08_MI, from=c("X2008"), to=c("Fatalities"))

fata08_MI$Year=2008

fata09_MI=subset(fata09_MI, select=c("County", "X2009"))

fata09_MI=rename.vars(data=fata09_MI, from=c("X2009"), to=c("Fatalities"))

fata09_MI$Year=2009

fata10_MI=subset(fata10_MI, select=c("County", "X2010"))

fata10_MI=rename.vars(data=fata10_MI, from=c("X2010"), to=c("Fatalities"))

fata10_MI$Year=2010

fata11_MI=subset(fata11_MI, select=c("County", "X2011"))

fata11_MI=rename.vars(data=fata11_MI, from=c("X2011"), to=c("Fatalities"))

fata11_MI$Year=2011





fata_MI=rbind(fata03_MI,fata04_MI,fata05_MI,fata06_MI,fata07_MI,fata08_MI,fata09_MI,fata10_MI,fata11_MI)

fata_MI=subset(fata_MI, County!="NOT APPLICABLE (000)")

fata_MI=subset(fata_MI, County!="OTHER (997)")

fata_MI=subset(fata_MI, County!="UNKNOWN (999)")

fata_MI=subset(fata_MI, County!="Total")

fata_MI = subset(fata_MI, County != "Not Reported")



fata_MI$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_MI$County)

fata_MI$County = paste(fata_MI$County, "County")

fata_MI$County = toupper(fata_MI$County)



fata_MI=subset(fata_MI, Fatalities!="NA")

final_MI = merge(est_MI, fata_MI, by = c("County", "Year"))

final_MI = transform(final_MI, Population = (as.numeric(final_MI$Poverty.Estimate.All.Ages)*100)/as.numeric(final_MI$Poverty.Percent.All.Ages))

final_MI = transform(final_MI, Fatalities.Percent = (as.numeric(final_MI$Fatalities)*100)/as.numeric(final_MI$Population))

final_MI=rename.vars (final_MI, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_MI=rename.vars (final_MI, from="Fatalities.Percent", to="Fatalities Percent")

final_MI=rename.vars (final_MI, from="Fatalities", to="Fatalities Count")

final_MI=rename.vars (final_MI, from="Median.Household.Income", to="Median Income")

final_MI=rename.vars (final_MI, from="Poverty.Percent.All.Ages", to="Poverty Percent")


commute_MI=read.csv("Commute time/Commute_Time_Data.csv")

commute_MI=commute_MI[which(commute_MI$State=="MI"),]

commute_MI=rename.vars(data=commute_MI, from=c("State"), to=c("Postal"))

commute_MI$County = paste(commute_MI$County, "County")

commute_MI$County = toupper(commute_MI$County)

final_MI=merge(final_MI,commute_MI, by = c("Postal", "County"))

final_MI=rename.vars (final_MI, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_MI=subset(final_MI, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_MI,file="MI.csv")
