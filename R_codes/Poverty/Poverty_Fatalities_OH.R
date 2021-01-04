require(gdata)

setwd("data")

est03_OH = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_OH = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_OH = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_OH = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_OH = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_OH = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_OH = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_OH = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_OH = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_OH=subset(est03_OH, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_OH=est03_OH[which(est03_OH$Postal == "OH"),]

est03_OH = est03_OH[which(est03_OH$Name != "Ohio"),]

est03_OH=subset(est03_OH,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_OH$Year=2003

est04_OH=subset(est04_OH, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_OH=est04_OH[which(est04_OH$Postal == "OH"),]

est04_OH = est04_OH[which(est04_OH$Name != "Ohio"),]

est04_OH=subset(est04_OH,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_OH$Year=2004

est05_OH=subset(est05_OH, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_OH=est05_OH[which(est05_OH$Postal == "OH"),]

est05_OH = est05_OH[which(est05_OH$Name != "Ohio"),]

est05_OH=subset(est05_OH,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_OH$Year=2005

est06_OH=subset(est06_OH, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_OH=est06_OH[which(est06_OH$Postal == "OH"),]

est06_OH = est06_OH[which(est06_OH$Name != "Ohio"),]

est06_OH=subset(est06_OH,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_OH$Year=2006

est07_OH=subset(est07_OH, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_OH=est07_OH[which(est07_OH$Postal == "OH"),]

est07_OH = est07_OH[which(est07_OH$Name != "Ohio"),]

est07_OH=subset(est07_OH,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_OH$Year=2007

est08_OH=subset(est08_OH, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_OH=est08_OH[which(est08_OH$Postal == "OH"),]

est08_OH = est08_OH[which(est08_OH$Name != "Ohio"),]

est08_OH=subset(est08_OH,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_OH$Year=2008

est09_OH=subset(est09_OH, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_OH=est09_OH[which(est09_OH$Postal == "OH"),]

est09_OH = est09_OH[which(est09_OH$Name != "Ohio"),]

est09_OH=subset(est09_OH,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_OH$Year=2009

est10_OH=subset(est10_OH, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_OH=est10_OH[which(est10_OH$Postal == "OH"),]

est10_OH = est10_OH[which(est10_OH$Name != "Ohio"),]

est10_OH=subset(est10_OH,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_OH$Year=2010

est11_OH=subset(est11_OH, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_OH=est11_OH[which(est11_OH$Postal == "OH"),]

est11_OH = est11_OH[which(est11_OH$Name != "Ohio"),]

est11_OH=subset(est11_OH,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_OH$Year=2011



est_OH=rbind(est06_OH,est07_OH,est08_OH,est09_OH, est03_OH,est04_OH,est05_OH,est10_OH,est11_OH)

est_OH = est_OH[order(est_OH$Year),]

est_OH=rename.vars(data=est_OH, from=c("Name"), to=c("County"))

est_OH$County = toupper(est_OH$County)



fata03_OH=read.xls("Fatalities/2003_2004_By_County/ohio.xls", header=TRUE)

fata04_OH=read.xls("Fatalities/2003_2004_By_County/ohio.xls", header=TRUE)

fata05_OH=read.xls("Fatalities/2005_2006_By_County/ohio.xls", header=TRUE)

fata06_OH=read.xls("Fatalities/2005_2006_By_County/ohio.xls", header=TRUE)

fata07_OH=read.xls("Fatalities/2006_2007_By_County/Ohio_06_07.xls", header=TRUE)

fata08_OH=read.xls("Fatalities/2008_2009_By_County/Ohio_08_09.xls", header=TRUE)

fata09_OH=read.xls("Fatalities/2008_2009_By_County/Ohio_08_09.xls", header=TRUE)

fata10_OH=read.xls("Fatalities/2010_2011_By_County/Ohio_10_11.xls", header=TRUE)

fata11_OH=read.xls("Fatalities/2010_2011_By_County/Ohio_10_11.xls", header=TRUE)

fata03_OH=subset(fata03_OH, select=c("County", "X2003"))

fata03_OH=rename.vars(data=fata03_OH, from=c("X2003"), to=c("Fatalities"))

fata03_OH$Year=2003

fata04_OH=subset(fata04_OH, select=c("County", "X2004"))

fata04_OH=rename.vars(data=fata04_OH, from=c("X2004"), to=c("Fatalities"))

fata04_OH$Year=2004

fata05_OH=subset(fata05_OH, select=c("County", "X2005"))

fata05_OH=rename.vars(data=fata05_OH, from=c("X2005"), to=c("Fatalities"))

fata05_OH$Year=2005

fata06_OH=subset(fata06_OH, select=c("County", "X2006"))

fata06_OH=rename.vars(data=fata06_OH, from=c("X2006"), to=c("Fatalities"))

fata06_OH$Year=2006

fata07_OH=subset(fata07_OH, select=c("County", "X2007"))

fata07_OH=rename.vars(data=fata07_OH, from=c("X2007"), to=c("Fatalities"))

fata07_OH$Year=2007

fata08_OH=subset(fata08_OH, select=c("County", "X2008"))

fata08_OH=rename.vars(data=fata08_OH, from=c("X2008"), to=c("Fatalities"))

fata08_OH$Year=2008

fata09_OH=subset(fata09_OH, select=c("County", "X2009"))

fata09_OH=rename.vars(data=fata09_OH, from=c("X2009"), to=c("Fatalities"))

fata09_OH$Year=2009

fata10_OH=subset(fata10_OH, select=c("County", "X2010"))

fata10_OH=rename.vars(data=fata10_OH, from=c("X2010"), to=c("Fatalities"))

fata10_OH$Year=2010

fata11_OH=subset(fata11_OH, select=c("County", "X2011"))

fata11_OH=rename.vars(data=fata11_OH, from=c("X2011"), to=c("Fatalities"))

fata11_OH$Year=2011





fata_OH=rbind(fata03_OH,fata04_OH,fata05_OH,fata06_OH,fata07_OH,fata08_OH,fata09_OH,fata10_OH,fata11_OH)

fata_OH=subset(fata_OH, County!="NOT APPLICABLE (000)")

fata_OH=subset(fata_OH, County!="OTHER (997)")

fata_OH=subset(fata_OH, County!="UNKNOWN (999)")

fata_OH=subset(fata_OH, County!="Total")

fata_OH = subset(fata_OH, County != "Not Reported")



fata_OH$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_OH$County)

fata_OH$County = paste(fata_OH$County, "County")

fata_OH$County = toupper(fata_OH$County)



fata_OH=subset(fata_OH, Fatalities!="NA")

final_OH = merge(est_OH, fata_OH, by = c("County", "Year"))

final_OH = transform(final_OH, Population = (as.numeric(final_OH$Poverty.Estimate.All.Ages)*100)/as.numeric(final_OH$Poverty.Percent.All.Ages))

final_OH = transform(final_OH, Fatalities.Percent = (as.numeric(final_OH$Fatalities)*100)/as.numeric(final_OH$Population))

final_OH=rename.vars (final_OH, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_OH=rename.vars (final_OH, from="Fatalities.Percent", to="Fatalities Percent")

final_OH=rename.vars (final_OH, from="Fatalities", to="Fatalities Count")

final_OH=rename.vars (final_OH, from="Median.Household.Income", to="Median Income")

final_OH=rename.vars (final_OH, from="Poverty.Percent.All.Ages", to="Poverty Percent")


commute_OH=read.csv("Commute time/Commute_Time_Data.csv")

commute_OH=commute_OH[which(commute_OH$State=="OH"),]

commute_OH=rename.vars(data=commute_OH, from=c("State"), to=c("Postal"))

commute_OH$County = paste(commute_OH$County, "County")

commute_OH$County = toupper(commute_OH$County)

final_OH=merge(final_OH,commute_OH, by = c("Postal", "County"))

final_OH=rename.vars (final_OH, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_OH=subset(final_OH, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_OH,file="OH.csv")
