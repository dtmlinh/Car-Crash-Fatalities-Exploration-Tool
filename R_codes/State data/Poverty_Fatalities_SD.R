require(gdata)

setwd("data")

est03_SD = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_SD = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_SD = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_SD = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_SD = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_SD = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_SD = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_SD = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_SD = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_SD=subset(est03_SD, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_SD=est03_SD[which(est03_SD$Postal == "SD"),]

est03_SD = est03_SD[which(est03_SD$Name != "South Dakota"),]

est03_SD=subset(est03_SD,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_SD$Year=2003

est04_SD=subset(est04_SD, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_SD=est04_SD[which(est04_SD$Postal == "SD"),]

est04_SD = est04_SD[which(est04_SD$Name != "South Dakota"),]

est04_SD=subset(est04_SD,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_SD$Year=2004

est05_SD=subset(est05_SD, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_SD=est05_SD[which(est05_SD$Postal == "SD"),]

est05_SD = est05_SD[which(est05_SD$Name != "South Dakota"),]

est05_SD=subset(est05_SD,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_SD$Year=2005

est06_SD=subset(est06_SD, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_SD=est06_SD[which(est06_SD$Postal == "SD"),]

est06_SD = est06_SD[which(est06_SD$Name != "South Dakota"),]

est06_SD=subset(est06_SD,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_SD$Year=2006

est07_SD=subset(est07_SD, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_SD=est07_SD[which(est07_SD$Postal == "SD"),]

est07_SD = est07_SD[which(est07_SD$Name != "South Dakota"),]

est07_SD=subset(est07_SD,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_SD$Year=2007

est08_SD=subset(est08_SD, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_SD=est08_SD[which(est08_SD$Postal == "SD"),]

est08_SD = est08_SD[which(est08_SD$Name != "South Dakota"),]

est08_SD=subset(est08_SD,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_SD$Year=2008

est09_SD=subset(est09_SD, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_SD=est09_SD[which(est09_SD$Postal == "SD"),]

est09_SD = est09_SD[which(est09_SD$Name != "South Dakota"),]

est09_SD=subset(est09_SD,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_SD$Year=2009

est10_SD=subset(est10_SD, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_SD=est10_SD[which(est10_SD$Postal == "SD"),]

est10_SD = est10_SD[which(est10_SD$Name != "South Dakota"),]

est10_SD=subset(est10_SD,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_SD$Year=2010

est11_SD=subset(est11_SD, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_SD=est11_SD[which(est11_SD$Postal == "SD"),]

est11_SD = est11_SD[which(est11_SD$Name != "South Dakota"),]

est11_SD=subset(est11_SD,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_SD$Year=2011



est_SD=rbind(est06_SD,est07_SD,est08_SD,est09_SD, est03_SD,est04_SD,est05_SD,est10_SD,est11_SD)

est_SD = est_SD[order(est_SD$Year),]

est_SD=rename.vars(data=est_SD, from=c("Name"), to=c("County"))

est_SD$County = toupper(est_SD$County)



fata03_SD=read.xls("Fatalities/2003_2004_By_County/South Dakota.xls", header=TRUE)

fata04_SD=read.xls("Fatalities/2003_2004_By_County/South Dakota.xls", header=TRUE)

fata05_SD=read.xls("Fatalities/2005_2006_By_County/South Dakota.xls", header=TRUE)

fata06_SD=read.xls("Fatalities/2005_2006_By_County/South Dakota.xls", header=TRUE)

fata07_SD=read.xls("Fatalities/2006_2007_By_County/South_Dakota_06_07.xls", header=TRUE)

fata08_SD=read.xls("Fatalities/2008_2009_By_County/South_Dakota_08_09.xls", header=TRUE)

fata09_SD=read.xls("Fatalities/2008_2009_By_County/South_Dakota_08_09.xls", header=TRUE)

fata10_SD=read.xls("Fatalities/2010_2011_By_County/South_Dakota_10_11.xls", header=TRUE)

fata11_SD=read.xls("Fatalities/2010_2011_By_County/South_Dakota_10_11.xls", header=TRUE)

fata03_SD=subset(fata03_SD, select=c("County", "X2003"))

fata03_SD=rename.vars(data=fata03_SD, from=c("X2003"), to=c("Fatalities"))

fata03_SD$Year=2003

fata04_SD=subset(fata04_SD, select=c("County", "X2004"))

fata04_SD=rename.vars(data=fata04_SD, from=c("X2004"), to=c("Fatalities"))

fata04_SD$Year=2004

fata05_SD=subset(fata05_SD, select=c("County", "X2005"))

fata05_SD=rename.vars(data=fata05_SD, from=c("X2005"), to=c("Fatalities"))

fata05_SD$Year=2005

fata06_SD=subset(fata06_SD, select=c("County", "X2006"))

fata06_SD=rename.vars(data=fata06_SD, from=c("X2006"), to=c("Fatalities"))

fata06_SD$Year=2006

fata07_SD=subset(fata07_SD, select=c("County", "X2007"))

fata07_SD=rename.vars(data=fata07_SD, from=c("X2007"), to=c("Fatalities"))

fata07_SD$Year=2007

fata08_SD=subset(fata08_SD, select=c("County", "X2008"))

fata08_SD=rename.vars(data=fata08_SD, from=c("X2008"), to=c("Fatalities"))

fata08_SD$Year=2008

fata09_SD=subset(fata09_SD, select=c("County", "X2009"))

fata09_SD=rename.vars(data=fata09_SD, from=c("X2009"), to=c("Fatalities"))

fata09_SD$Year=2009

fata10_SD=subset(fata10_SD, select=c("County", "X2010"))

fata10_SD=rename.vars(data=fata10_SD, from=c("X2010"), to=c("Fatalities"))

fata10_SD$Year=2010

fata11_SD=subset(fata11_SD, select=c("County", "X2011"))

fata11_SD=rename.vars(data=fata11_SD, from=c("X2011"), to=c("Fatalities"))

fata11_SD$Year=2011





fata_SD=rbind(fata03_SD,fata04_SD,fata05_SD,fata06_SD,fata07_SD,fata08_SD,fata09_SD,fata10_SD,fata11_SD)

fata_SD=subset(fata_SD, County!="NOT APPLICABLE (000)")

fata_SD=subset(fata_SD, County!="OTHER (997)")

fata_SD=subset(fata_SD, County!="UNKNOWN (999)")

fata_SD=subset(fata_SD, County!="Total")

fata_SD = subset(fata_SD, County != "Not Reported")



fata_SD$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_SD$County)

fata_SD$County = paste(fata_SD$County, "County")

fata_SD$County = toupper(fata_SD$County)



fata_SD=subset(fata_SD, Fatalities!="NA")

final_SD = merge(est_SD, fata_SD, by = c("County", "Year"))

final_SD = transform(final_SD, Population = (as.numeric(final_SD$Poverty.Estimate.All.Ages)*100)/as.numeric(final_SD$Poverty.Percent.All.Ages))

final_SD = transform(final_SD, Fatalities.Percent = (as.numeric(final_SD$Fatalities)*100)/as.numeric(final_SD$Population))

final_SD=rename.vars (final_SD, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_SD=rename.vars (final_SD, from="Fatalities.Percent", to="Fatalities Percent")

final_SD=rename.vars (final_SD, from="Fatalities", to="Fatalities Count")

final_SD=rename.vars (final_SD, from="Median.Household.Income", to="Median Income")

final_SD=rename.vars (final_SD, from="Poverty.Percent.All.Ages", to="Poverty Percent")


commute_SD=read.csv("Commute time/Commute_Time_Data.csv")

commute_SD=commute_SD[which(commute_SD$State=="SD"),]

commute_SD=rename.vars(data=commute_SD, from=c("State"), to=c("Postal"))

commute_SD$County = paste(commute_SD$County, "County")

commute_SD$County = toupper(commute_SD$County)

final_SD=merge(final_SD,commute_SD, by = c("Postal", "County"))

final_SD=rename.vars (final_SD, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_SD=subset(final_SD, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_SD,file="SD.csv")
