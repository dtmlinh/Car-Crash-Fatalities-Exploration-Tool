require(gdata)

setwd("data")

est03_MD = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_MD = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_MD = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_MD = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_MD = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_MD = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_MD = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_MD = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_MD = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_MD=subset(est03_MD, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_MD=est03_MD[which(est03_MD$Postal == "MD"),]

est03_MD = est03_MD[which(est03_MD$Name != "Maryland"),]

est03_MD=subset(est03_MD,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_MD$Year=2003

est04_MD=subset(est04_MD, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_MD=est04_MD[which(est04_MD$Postal == "MD"),]

est04_MD = est04_MD[which(est04_MD$Name != "Maryland"),]

est04_MD=subset(est04_MD,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_MD$Year=2004

est05_MD=subset(est05_MD, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_MD=est05_MD[which(est05_MD$Postal == "MD"),]

est05_MD = est05_MD[which(est05_MD$Name != "Maryland"),]

est05_MD=subset(est05_MD,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_MD$Year=2005

est06_MD=subset(est06_MD, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_MD=est06_MD[which(est06_MD$Postal == "MD"),]

est06_MD = est06_MD[which(est06_MD$Name != "Maryland"),]

est06_MD=subset(est06_MD,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_MD$Year=2006

est07_MD=subset(est07_MD, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_MD=est07_MD[which(est07_MD$Postal == "MD"),]

est07_MD = est07_MD[which(est07_MD$Name != "Maryland"),]

est07_MD=subset(est07_MD,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_MD$Year=2007

est08_MD=subset(est08_MD, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_MD=est08_MD[which(est08_MD$Postal == "MD"),]

est08_MD = est08_MD[which(est08_MD$Name != "Maryland"),]

est08_MD=subset(est08_MD,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_MD$Year=2008

est09_MD=subset(est09_MD, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_MD=est09_MD[which(est09_MD$Postal == "MD"),]

est09_MD = est09_MD[which(est09_MD$Name != "Maryland"),]

est09_MD=subset(est09_MD,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_MD$Year=2009

est10_MD=subset(est10_MD, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_MD=est10_MD[which(est10_MD$Postal == "MD"),]

est10_MD = est10_MD[which(est10_MD$Name != "Maryland"),]

est10_MD=subset(est10_MD,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_MD$Year=2010

est11_MD=subset(est11_MD, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_MD=est11_MD[which(est11_MD$Postal == "MD"),]

est11_MD = est11_MD[which(est11_MD$Name != "Maryland"),]

est11_MD=subset(est11_MD,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_MD$Year=2011



est_MD=rbind(est06_MD,est07_MD,est08_MD,est09_MD, est03_MD,est04_MD,est05_MD,est10_MD,est11_MD)

est_MD = est_MD[order(est_MD$Year),]

est_MD=rename.vars(data=est_MD, from=c("Name"), to=c("County"))

est_MD$County = toupper(est_MD$County)



fata03_MD=read.xls("Fatalities/2003_2004_By_County/maryland.xls", header=TRUE)

fata04_MD=read.xls("Fatalities/2003_2004_By_County/maryland.xls", header=TRUE)

fata05_MD=read.xls("Fatalities/2005_2006_By_County/maryland.xls", header=TRUE)

fata06_MD=read.xls("Fatalities/2005_2006_By_County/maryland.xls", header=TRUE)

fata07_MD=read.xls("Fatalities/2006_2007_By_County/Maryland_06_07.xls", header=TRUE)

fata08_MD=read.xls("Fatalities/2008_2009_By_County/Maryland_08_09.xls", header=TRUE)

fata09_MD=read.xls("Fatalities/2008_2009_By_County/Maryland_08_09.xls", header=TRUE)

fata10_MD=read.xls("Fatalities/2010_2011_By_County/Maryland_10_11.xls", header=TRUE)

fata11_MD=read.xls("Fatalities/2010_2011_By_County/Maryland_10_11.xls", header=TRUE)

fata03_MD=subset(fata03_MD, select=c("County", "X2003"))

fata03_MD=rename.vars(data=fata03_MD, from=c("X2003"), to=c("Fatalities"))

fata03_MD$Year=2003

fata04_MD=subset(fata04_MD, select=c("County", "X2004"))

fata04_MD=rename.vars(data=fata04_MD, from=c("X2004"), to=c("Fatalities"))

fata04_MD$Year=2004

fata05_MD=subset(fata05_MD, select=c("County", "X2005"))

fata05_MD=rename.vars(data=fata05_MD, from=c("X2005"), to=c("Fatalities"))

fata05_MD$Year=2005

fata06_MD=subset(fata06_MD, select=c("County", "X2006"))

fata06_MD=rename.vars(data=fata06_MD, from=c("X2006"), to=c("Fatalities"))

fata06_MD$Year=2006

fata07_MD=subset(fata07_MD, select=c("County", "X2007"))

fata07_MD=rename.vars(data=fata07_MD, from=c("X2007"), to=c("Fatalities"))

fata07_MD$Year=2007

fata08_MD=subset(fata08_MD, select=c("County", "X2008"))

fata08_MD=rename.vars(data=fata08_MD, from=c("X2008"), to=c("Fatalities"))

fata08_MD$Year=2008

fata09_MD=subset(fata09_MD, select=c("County", "X2009"))

fata09_MD=rename.vars(data=fata09_MD, from=c("X2009"), to=c("Fatalities"))

fata09_MD$Year=2009

fata10_MD=subset(fata10_MD, select=c("County", "X2010"))

fata10_MD=rename.vars(data=fata10_MD, from=c("X2010"), to=c("Fatalities"))

fata10_MD$Year=2010

fata11_MD=subset(fata11_MD, select=c("County", "X2011"))

fata11_MD=rename.vars(data=fata11_MD, from=c("X2011"), to=c("Fatalities"))

fata11_MD$Year=2011





fata_MD=rbind(fata03_MD,fata04_MD,fata05_MD,fata06_MD,fata07_MD,fata08_MD,fata09_MD,fata10_MD,fata11_MD)

fata_MD=subset(fata_MD, County!="NOT APPLICABLE (000)")

fata_MD=subset(fata_MD, County!="OTHER (997)")

fata_MD=subset(fata_MD, County!="UNKNOWN (999)")

fata_MD=subset(fata_MD, County!="Total")

fata_MD = subset(fata_MD, County != "Not Reported")



fata_MD$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_MD$County)

fata_MD$County = paste(fata_MD$County, "County")

fata_MD$County = toupper(fata_MD$County)



fata_MD=subset(fata_MD, Fatalities!="NA")

final_MD = merge(est_MD, fata_MD, by = c("County", "Year"))

final_MD = transform(final_MD, Population = (as.numeric(final_MD$Poverty.Estimate.All.Ages)*100)/as.numeric(final_MD$Poverty.Percent.All.Ages))

final_MD = transform(final_MD, Fatalities.Percent = (as.numeric(final_MD$Fatalities)*100)/as.numeric(final_MD$Population))

final_MD=rename.vars (final_MD, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_MD=rename.vars (final_MD, from="Fatalities.Percent", to="Fatalities Percent")

final_MD=rename.vars (final_MD, from="Fatalities", to="Fatalities Count")

final_MD=rename.vars (final_MD, from="Median.Household.Income", to="Median Income")

final_MD=rename.vars (final_MD, from="Poverty.Percent.All.Ages", to="Poverty Percent")


commute_MD=read.csv("Commute time/Commute_Time_Data.csv")

commute_MD=commute_MD[which(commute_MD$State=="MD"),]

commute_MD=rename.vars(data=commute_MD, from=c("State"), to=c("Postal"))

commute_MD$County = paste(commute_MD$County, "County")

commute_MD$County = toupper(commute_MD$County)

final_MD=merge(final_MD,commute_MD, by = c("Postal", "County"))

final_MD=rename.vars (final_MD, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_MD=subset(final_MD, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_MD,file="MD.csv")
