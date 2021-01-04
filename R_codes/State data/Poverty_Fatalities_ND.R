require(gdata)

setwd("data")

est03_ND = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_ND = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_ND = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_ND = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_ND = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_ND = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_ND = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_ND = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_ND = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_ND=subset(est03_ND, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_ND=est03_ND[which(est03_ND$Postal == "ND"),]

est03_ND = est03_ND[which(est03_ND$Name != "North Dakota"),]

est03_ND=subset(est03_ND,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_ND$Year=2003

est04_ND=subset(est04_ND, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_ND=est04_ND[which(est04_ND$Postal == "ND"),]

est04_ND = est04_ND[which(est04_ND$Name != "North Dakota"),]

est04_ND=subset(est04_ND,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_ND$Year=2004

est05_ND=subset(est05_ND, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_ND=est05_ND[which(est05_ND$Postal == "ND"),]

est05_ND = est05_ND[which(est05_ND$Name != "North Dakota"),]

est05_ND=subset(est05_ND,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_ND$Year=2005

est06_ND=subset(est06_ND, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_ND=est06_ND[which(est06_ND$Postal == "ND"),]

est06_ND = est06_ND[which(est06_ND$Name != "North Dakota"),]

est06_ND=subset(est06_ND,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_ND$Year=2006

est07_ND=subset(est07_ND, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_ND=est07_ND[which(est07_ND$Postal == "ND"),]

est07_ND = est07_ND[which(est07_ND$Name != "North Dakota"),]

est07_ND=subset(est07_ND,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_ND$Year=2007

est08_ND=subset(est08_ND, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_ND=est08_ND[which(est08_ND$Postal == "ND"),]

est08_ND = est08_ND[which(est08_ND$Name != "North Dakota"),]

est08_ND=subset(est08_ND,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_ND$Year=2008

est09_ND=subset(est09_ND, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_ND=est09_ND[which(est09_ND$Postal == "ND"),]

est09_ND = est09_ND[which(est09_ND$Name != "North Dakota"),]

est09_ND=subset(est09_ND,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_ND$Year=2009

est10_ND=subset(est10_ND, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_ND=est10_ND[which(est10_ND$Postal == "ND"),]

est10_ND = est10_ND[which(est10_ND$Name != "North Dakota"),]

est10_ND=subset(est10_ND,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_ND$Year=2010

est11_ND=subset(est11_ND, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_ND=est11_ND[which(est11_ND$Postal == "ND"),]

est11_ND = est11_ND[which(est11_ND$Name != "North Dakota"),]

est11_ND=subset(est11_ND,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_ND$Year=2011



est_ND=rbind(est06_ND,est07_ND,est08_ND,est09_ND, est03_ND,est04_ND,est05_ND,est10_ND,est11_ND)

est_ND = est_ND[order(est_ND$Year),]

est_ND=rename.vars(data=est_ND, from=c("Name"), to=c("County"))

est_ND$County = toupper(est_ND$County)



fata03_ND=read.xls("Fatalities/2003_2004_By_County/North Dakota.xls", header=TRUE)

fata04_ND=read.xls("Fatalities/2003_2004_By_County/North Dakota.xls", header=TRUE)

fata05_ND=read.xls("Fatalities/2005_2006_By_County/North Dakota.xls", header=TRUE)

fata06_ND=read.xls("Fatalities/2005_2006_By_County/North Dakota.xls", header=TRUE)

fata07_ND=read.xls("Fatalities/2006_2007_By_County/North_Dakota_06_07.xls", header=TRUE)

fata08_ND=read.xls("Fatalities/2008_2009_By_County/North_Dakota_08_09.xls", header=TRUE)

fata09_ND=read.xls("Fatalities/2008_2009_By_County/North_Dakota_08_09.xls", header=TRUE)

fata10_ND=read.xls("Fatalities/2010_2011_By_County/North_Dakota_10_11.xls", header=TRUE)

fata11_ND=read.xls("Fatalities/2010_2011_By_County/North_Dakota_10_11.xls", header=TRUE)

fata03_ND=subset(fata03_ND, select=c("County", "X2003"))

fata03_ND=rename.vars(data=fata03_ND, from=c("X2003"), to=c("Fatalities"))

fata03_ND$Year=2003

fata04_ND=subset(fata04_ND, select=c("County", "X2004"))

fata04_ND=rename.vars(data=fata04_ND, from=c("X2004"), to=c("Fatalities"))

fata04_ND$Year=2004

fata05_ND=subset(fata05_ND, select=c("County", "X2005"))

fata05_ND=rename.vars(data=fata05_ND, from=c("X2005"), to=c("Fatalities"))

fata05_ND$Year=2005

fata06_ND=subset(fata06_ND, select=c("County", "X2006"))

fata06_ND=rename.vars(data=fata06_ND, from=c("X2006"), to=c("Fatalities"))

fata06_ND$Year=2006

fata07_ND=subset(fata07_ND, select=c("County", "X2007"))

fata07_ND=rename.vars(data=fata07_ND, from=c("X2007"), to=c("Fatalities"))

fata07_ND$Year=2007

fata08_ND=subset(fata08_ND, select=c("County", "X2008"))

fata08_ND=rename.vars(data=fata08_ND, from=c("X2008"), to=c("Fatalities"))

fata08_ND$Year=2008

fata09_ND=subset(fata09_ND, select=c("County", "X2009"))

fata09_ND=rename.vars(data=fata09_ND, from=c("X2009"), to=c("Fatalities"))

fata09_ND$Year=2009

fata10_ND=subset(fata10_ND, select=c("County", "X2010"))

fata10_ND=rename.vars(data=fata10_ND, from=c("X2010"), to=c("Fatalities"))

fata10_ND$Year=2010

fata11_ND=subset(fata11_ND, select=c("County", "X2011"))

fata11_ND=rename.vars(data=fata11_ND, from=c("X2011"), to=c("Fatalities"))

fata11_ND$Year=2011





fata_ND=rbind(fata03_ND,fata04_ND,fata05_ND,fata06_ND,fata07_ND,fata08_ND,fata09_ND,fata10_ND,fata11_ND)

fata_ND=subset(fata_ND, County!="NOT APPLICABLE (000)")

fata_ND=subset(fata_ND, County!="OTHER (997)")

fata_ND=subset(fata_ND, County!="UNKNOWN (999)")

fata_ND=subset(fata_ND, County!="Total")

fata_ND = subset(fata_ND, County != "Not Reported")



fata_ND$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_ND$County)

fata_ND$County = paste(fata_ND$County, "County")

fata_ND$County = toupper(fata_ND$County)



fata_ND=subset(fata_ND, Fatalities!="NA")

final_ND = merge(est_ND, fata_ND, by = c("County", "Year"))

final_ND = transform(final_ND, Population = (as.numeric(final_ND$Poverty.Estimate.All.Ages)*100)/as.numeric(final_ND$Poverty.Percent.All.Ages))

final_ND = transform(final_ND, Fatalities.Percent = (as.numeric(final_ND$Fatalities)*100)/as.numeric(final_ND$Population))

final_ND=rename.vars (final_ND, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_ND=rename.vars (final_ND, from="Fatalities.Percent", to="Fatalities Percent")

final_ND=rename.vars (final_ND, from="Fatalities", to="Fatalities Count")

final_ND=rename.vars (final_ND, from="Median.Household.Income", to="Median Income")

final_ND=rename.vars (final_ND, from="Poverty.Percent.All.Ages", to="Poverty Percent")


commute_ND=read.csv("Commute time/Commute_Time_Data.csv")

commute_ND=commute_ND[which(commute_ND$State=="ND"),]

commute_ND=rename.vars(data=commute_ND, from=c("State"), to=c("Postal"))

commute_ND$County = paste(commute_ND$County, "County")

commute_ND$County = toupper(commute_ND$County)

final_ND=merge(final_ND,commute_ND, by = c("Postal", "County"))

final_ND=rename.vars (final_ND, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_ND=subset(final_ND, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_ND,file="ND.csv")
