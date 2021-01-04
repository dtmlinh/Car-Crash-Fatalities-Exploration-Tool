require(gdata)

setwd("data")

est03_TX = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_TX = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_TX = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_TX = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_TX = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_TX = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_TX = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_TX = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_TX = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_TX=subset(est03_TX, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_TX=est03_TX[which(est03_TX$Postal == "TX"),]

est03_TX = est03_TX[which(est03_TX$Name != "Texas"),]

est03_TX=subset(est03_TX,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_TX$Year=2003

est04_TX=subset(est04_TX, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_TX=est04_TX[which(est04_TX$Postal == "TX"),]

est04_TX = est04_TX[which(est04_TX$Name != "Texas"),]

est04_TX=subset(est04_TX,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_TX$Year=2004

est05_TX=subset(est05_TX, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_TX=est05_TX[which(est05_TX$Postal == "TX"),]

est05_TX = est05_TX[which(est05_TX$Name != "Texas"),]

est05_TX=subset(est05_TX,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_TX$Year=2005

est06_TX=subset(est06_TX, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_TX=est06_TX[which(est06_TX$Postal == "TX"),]

est06_TX = est06_TX[which(est06_TX$Name != "Texas"),]

est06_TX=subset(est06_TX,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_TX$Year=2006

est07_TX=subset(est07_TX, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_TX=est07_TX[which(est07_TX$Postal == "TX"),]

est07_TX = est07_TX[which(est07_TX$Name != "Texas"),]

est07_TX=subset(est07_TX,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_TX$Year=2007

est08_TX=subset(est08_TX, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_TX=est08_TX[which(est08_TX$Postal == "TX"),]

est08_TX = est08_TX[which(est08_TX$Name != "Texas"),]

est08_TX=subset(est08_TX,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_TX$Year=2008

est09_TX=subset(est09_TX, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_TX=est09_TX[which(est09_TX$Postal == "TX"),]

est09_TX = est09_TX[which(est09_TX$Name != "Texas"),]

est09_TX=subset(est09_TX,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_TX$Year=2009

est10_TX=subset(est10_TX, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_TX=est10_TX[which(est10_TX$Postal == "TX"),]

est10_TX = est10_TX[which(est10_TX$Name != "Texas"),]

est10_TX=subset(est10_TX,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_TX$Year=2010

est11_TX=subset(est11_TX, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_TX=est11_TX[which(est11_TX$Postal == "TX"),]

est11_TX = est11_TX[which(est11_TX$Name != "Texas"),]

est11_TX=subset(est11_TX,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_TX$Year=2011



est_TX=rbind(est06_TX,est07_TX,est08_TX,est09_TX, est03_TX,est04_TX,est05_TX,est10_TX,est11_TX)

est_TX = est_TX[order(est_TX$Year),]

est_TX=rename.vars(data=est_TX, from=c("Name"), to=c("County"))

est_TX$County = toupper(est_TX$County)



fata03_TX=read.xls("Fatalities/2003_2004_By_County/Texas.xls", header=TRUE)

fata04_TX=read.xls("Fatalities/2003_2004_By_County/Texas.xls", header=TRUE)

fata05_TX=read.xls("Fatalities/2005_2006_By_County/Texas.xls", header=TRUE)

fata06_TX=read.xls("Fatalities/2005_2006_By_County/Texas.xls", header=TRUE)

fata07_TX=read.xls("Fatalities/2006_2007_By_County/Texas_06_07.xls", header=TRUE)

fata08_TX=read.xls("Fatalities/2008_2009_By_County/Texas_08_09.xls", header=TRUE)

fata09_TX=read.xls("Fatalities/2008_2009_By_County/Texas_08_09.xls", header=TRUE)

fata10_TX=read.xls("Fatalities/2010_2011_By_County/Texas_10_11.xls", header=TRUE)

fata11_TX=read.xls("Fatalities/2010_2011_By_County/Texas_10_11.xls", header=TRUE)

fata03_TX=subset(fata03_TX, select=c("County", "X2003"))

fata03_TX=rename.vars(data=fata03_TX, from=c("X2003"), to=c("Fatalities"))

fata03_TX$Year=2003

fata04_TX=subset(fata04_TX, select=c("County", "X2004"))

fata04_TX=rename.vars(data=fata04_TX, from=c("X2004"), to=c("Fatalities"))

fata04_TX$Year=2004

fata05_TX=subset(fata05_TX, select=c("County", "X2005"))

fata05_TX=rename.vars(data=fata05_TX, from=c("X2005"), to=c("Fatalities"))

fata05_TX$Year=2005

fata06_TX=subset(fata06_TX, select=c("County", "X2006"))

fata06_TX=rename.vars(data=fata06_TX, from=c("X2006"), to=c("Fatalities"))

fata06_TX$Year=2006

fata07_TX=subset(fata07_TX, select=c("County", "X2007"))

fata07_TX=rename.vars(data=fata07_TX, from=c("X2007"), to=c("Fatalities"))

fata07_TX$Year=2007

fata08_TX=subset(fata08_TX, select=c("County", "X2008"))

fata08_TX=rename.vars(data=fata08_TX, from=c("X2008"), to=c("Fatalities"))

fata08_TX$Year=2008

fata09_TX=subset(fata09_TX, select=c("County", "X2009"))

fata09_TX=rename.vars(data=fata09_TX, from=c("X2009"), to=c("Fatalities"))

fata09_TX$Year=2009

fata10_TX=subset(fata10_TX, select=c("County", "X2010"))

fata10_TX=rename.vars(data=fata10_TX, from=c("X2010"), to=c("Fatalities"))

fata10_TX$Year=2010

fata11_TX=subset(fata11_TX, select=c("County", "X2011"))

fata11_TX=rename.vars(data=fata11_TX, from=c("X2011"), to=c("Fatalities"))

fata11_TX$Year=2011





fata_TX=rbind(fata03_TX,fata04_TX,fata05_TX,fata06_TX,fata07_TX,fata08_TX,fata09_TX,fata10_TX,fata11_TX)

fata_TX=subset(fata_TX, County!="NOT APPLICABLE (000)")

fata_TX=subset(fata_TX, County!="OTHER (997)")

fata_TX=subset(fata_TX, County!="UNKNOWN (999)")

fata_TX=subset(fata_TX, County!="Total")

fata_TX = subset(fata_TX, County != "Not Reported")



fata_TX$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_TX$County)

fata_TX$County = paste(fata_TX$County, "County")

fata_TX$County = toupper(fata_TX$County)



fata_TX=subset(fata_TX, Fatalities!="NA")

final_TX = merge(est_TX, fata_TX, by = c("County", "Year"))

final_TX = transform(final_TX, Population = (as.numeric(final_TX$Poverty.Estimate.All.Ages)*100)/as.numeric(final_TX$Poverty.Percent.All.Ages))

final_TX = transform(final_TX, Fatalities.Percent = (as.numeric(final_TX$Fatalities)*100)/as.numeric(final_TX$Population))

final_TX=rename.vars (final_TX, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_TX=rename.vars (final_TX, from="Fatalities.Percent", to="Fatalities Percent")

final_TX=rename.vars (final_TX, from="Fatalities", to="Fatalities Count")

final_TX=rename.vars (final_TX, from="Median.Household.Income", to="Median Income")

final_TX=rename.vars (final_TX, from="Poverty.Percent.All.Ages", to="Poverty Percent")


commute_TX=read.csv("Commute time/Commute_Time_Data.csv")

commute_TX=commute_TX[which(commute_TX$State=="TX"),]

commute_TX=rename.vars(data=commute_TX, from=c("State"), to=c("Postal"))

commute_TX$County = paste(commute_TX$County, "County")

commute_TX$County = toupper(commute_TX$County)

final_TX=merge(final_TX,commute_TX, by = c("Postal", "County"))

final_TX=rename.vars (final_TX, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_TX=subset(final_TX, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_TX,file="TX.csv")
