require(gdata)

setwd("data")

est03_OK = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_OK = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_OK = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_OK = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_OK = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_OK = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_OK = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_OK = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_OK = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_OK=subset(est03_OK, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_OK=est03_OK[which(est03_OK$Postal == "OK"),]

est03_OK = est03_OK[which(est03_OK$Name != "Oklahoma"),]

est03_OK=subset(est03_OK,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_OK$Year=2003

est04_OK=subset(est04_OK, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_OK=est04_OK[which(est04_OK$Postal == "OK"),]

est04_OK = est04_OK[which(est04_OK$Name != "Oklahoma"),]

est04_OK=subset(est04_OK,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_OK$Year=2004

est05_OK=subset(est05_OK, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_OK=est05_OK[which(est05_OK$Postal == "OK"),]

est05_OK = est05_OK[which(est05_OK$Name != "Oklahoma"),]

est05_OK=subset(est05_OK,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_OK$Year=2005

est06_OK=subset(est06_OK, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_OK=est06_OK[which(est06_OK$Postal == "OK"),]

est06_OK = est06_OK[which(est06_OK$Name != "Oklahoma"),]

est06_OK=subset(est06_OK,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_OK$Year=2006

est07_OK=subset(est07_OK, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_OK=est07_OK[which(est07_OK$Postal == "OK"),]

est07_OK = est07_OK[which(est07_OK$Name != "Oklahoma"),]

est07_OK=subset(est07_OK,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_OK$Year=2007

est08_OK=subset(est08_OK, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_OK=est08_OK[which(est08_OK$Postal == "OK"),]

est08_OK = est08_OK[which(est08_OK$Name != "Oklahoma"),]

est08_OK=subset(est08_OK,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_OK$Year=2008

est09_OK=subset(est09_OK, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_OK=est09_OK[which(est09_OK$Postal == "OK"),]

est09_OK = est09_OK[which(est09_OK$Name != "Oklahoma"),]

est09_OK=subset(est09_OK,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_OK$Year=2009

est10_OK=subset(est10_OK, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_OK=est10_OK[which(est10_OK$Postal == "OK"),]

est10_OK = est10_OK[which(est10_OK$Name != "Oklahoma"),]

est10_OK=subset(est10_OK,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_OK$Year=2010

est11_OK=subset(est11_OK, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_OK=est11_OK[which(est11_OK$Postal == "OK"),]

est11_OK = est11_OK[which(est11_OK$Name != "Oklahoma"),]

est11_OK=subset(est11_OK,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_OK$Year=2011



est_OK=rbind(est06_OK,est07_OK,est08_OK,est09_OK, est03_OK,est04_OK,est05_OK,est10_OK,est11_OK)

est_OK = est_OK[order(est_OK$Year),]

est_OK=rename.vars(data=est_OK, from=c("Name"), to=c("County"))

est_OK$County = toupper(est_OK$County)



fata03_OK=read.xls("Fatalities/2003_2004_By_County/Oklahoma.xls", header=TRUE)

fata04_OK=read.xls("Fatalities/2003_2004_By_County/Oklahoma.xls", header=TRUE)

fata05_OK=read.xls("Fatalities/2005_2006_By_County/Oklahoma.xls", header=TRUE)

fata06_OK=read.xls("Fatalities/2005_2006_By_County/Oklahoma.xls", header=TRUE)

fata07_OK=read.xls("Fatalities/2006_2007_By_County/Oklahoma_06_07.xls", header=TRUE)

fata08_OK=read.xls("Fatalities/2008_2009_By_County/Oklahoma_08_09.xls", header=TRUE)

fata09_OK=read.xls("Fatalities/2008_2009_By_County/Oklahoma_08_09.xls", header=TRUE)

fata10_OK=read.xls("Fatalities/2010_2011_By_County/Oklahoma_10_11.xls", header=TRUE)

fata11_OK=read.xls("Fatalities/2010_2011_By_County/Oklahoma_10_11.xls", header=TRUE)

fata03_OK=subset(fata03_OK, select=c("County", "X2003"))

fata03_OK=rename.vars(data=fata03_OK, from=c("X2003"), to=c("Fatalities"))

fata03_OK$Year=2003

fata04_OK=subset(fata04_OK, select=c("County", "X2004"))

fata04_OK=rename.vars(data=fata04_OK, from=c("X2004"), to=c("Fatalities"))

fata04_OK$Year=2004

fata05_OK=subset(fata05_OK, select=c("County", "X2005"))

fata05_OK=rename.vars(data=fata05_OK, from=c("X2005"), to=c("Fatalities"))

fata05_OK$Year=2005

fata06_OK=subset(fata06_OK, select=c("County", "X2006"))

fata06_OK=rename.vars(data=fata06_OK, from=c("X2006"), to=c("Fatalities"))

fata06_OK$Year=2006

fata07_OK=subset(fata07_OK, select=c("County", "X2007"))

fata07_OK=rename.vars(data=fata07_OK, from=c("X2007"), to=c("Fatalities"))

fata07_OK$Year=2007

fata08_OK=subset(fata08_OK, select=c("County", "X2008"))

fata08_OK=rename.vars(data=fata08_OK, from=c("X2008"), to=c("Fatalities"))

fata08_OK$Year=2008

fata09_OK=subset(fata09_OK, select=c("County", "X2009"))

fata09_OK=rename.vars(data=fata09_OK, from=c("X2009"), to=c("Fatalities"))

fata09_OK$Year=2009

fata10_OK=subset(fata10_OK, select=c("County", "X2010"))

fata10_OK=rename.vars(data=fata10_OK, from=c("X2010"), to=c("Fatalities"))

fata10_OK$Year=2010

fata11_OK=subset(fata11_OK, select=c("County", "X2011"))

fata11_OK=rename.vars(data=fata11_OK, from=c("X2011"), to=c("Fatalities"))

fata11_OK$Year=2011





fata_OK=rbind(fata03_OK,fata04_OK,fata05_OK,fata06_OK,fata07_OK,fata08_OK,fata09_OK,fata10_OK,fata11_OK)

fata_OK=subset(fata_OK, County!="NOT APPLICABLE (000)")

fata_OK=subset(fata_OK, County!="OTHER (997)")

fata_OK=subset(fata_OK, County!="UNKNOWN (999)")

fata_OK=subset(fata_OK, County!="Total")

fata_OK = subset(fata_OK, County != "Not Reported")



fata_OK$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_OK$County)

fata_OK$County = paste(fata_OK$County, "County")

fata_OK$County = toupper(fata_OK$County)



fata_OK=subset(fata_OK, Fatalities!="NA")

final_OK = merge(est_OK, fata_OK, by = c("County", "Year"))

final_OK = transform(final_OK, Population = (as.numeric(final_OK$Poverty.Estimate.All.Ages)*100)/as.numeric(final_OK$Poverty.Percent.All.Ages))

final_OK = transform(final_OK, Fatalities.Percent = (as.numeric(final_OK$Fatalities)*100)/as.numeric(final_OK$Population))

final_OK=rename.vars (final_OK, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_OK=rename.vars (final_OK, from="Fatalities.Percent", to="Fatalities Percent")

final_OK=rename.vars (final_OK, from="Fatalities", to="Fatalities Count")

final_OK=rename.vars (final_OK, from="Median.Household.Income", to="Median Income")

final_OK=rename.vars (final_OK, from="Poverty.Percent.All.Ages", to="Poverty Percent")


commute_OK=read.csv("Commute time/Commute_Time_Data.csv")

commute_OK=commute_OK[which(commute_OK$State=="OK"),]

commute_OK=rename.vars(data=commute_OK, from=c("State"), to=c("Postal"))

commute_OK$County = paste(commute_OK$County, "County")

commute_OK$County = toupper(commute_OK$County)

final_OK=merge(final_OK,commute_OK, by = c("Postal", "County"))

final_OK=rename.vars (final_OK, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_OK=subset(final_OK, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_OK,file="OK.csv")
