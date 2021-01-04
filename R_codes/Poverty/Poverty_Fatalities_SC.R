require(gdata)

setwd("data")

est03_SC = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_SC = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_SC = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_SC = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_SC = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_SC = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_SC = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_SC = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_SC = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_SC=subset(est03_SC, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_SC=est03_SC[which(est03_SC$Postal == "SC"),]

est03_SC = est03_SC[which(est03_SC$Name != "South Carolina"),]

est03_SC=subset(est03_SC,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_SC$Year=2003

est04_SC=subset(est04_SC, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_SC=est04_SC[which(est04_SC$Postal == "SC"),]

est04_SC = est04_SC[which(est04_SC$Name != "South Carolina"),]

est04_SC=subset(est04_SC,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_SC$Year=2004

est05_SC=subset(est05_SC, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_SC=est05_SC[which(est05_SC$Postal == "SC"),]

est05_SC = est05_SC[which(est05_SC$Name != "South Carolina"),]

est05_SC=subset(est05_SC,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_SC$Year=2005

est06_SC=subset(est06_SC, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_SC=est06_SC[which(est06_SC$Postal == "SC"),]

est06_SC = est06_SC[which(est06_SC$Name != "South Carolina"),]

est06_SC=subset(est06_SC,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_SC$Year=2006

est07_SC=subset(est07_SC, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_SC=est07_SC[which(est07_SC$Postal == "SC"),]

est07_SC = est07_SC[which(est07_SC$Name != "South Carolina"),]

est07_SC=subset(est07_SC,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_SC$Year=2007

est08_SC=subset(est08_SC, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_SC=est08_SC[which(est08_SC$Postal == "SC"),]

est08_SC = est08_SC[which(est08_SC$Name != "South Carolina"),]

est08_SC=subset(est08_SC,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_SC$Year=2008

est09_SC=subset(est09_SC, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_SC=est09_SC[which(est09_SC$Postal == "SC"),]

est09_SC = est09_SC[which(est09_SC$Name != "South Carolina"),]

est09_SC=subset(est09_SC,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_SC$Year=2009

est10_SC=subset(est10_SC, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_SC=est10_SC[which(est10_SC$Postal == "SC"),]

est10_SC = est10_SC[which(est10_SC$Name != "South Carolina"),]

est10_SC=subset(est10_SC,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_SC$Year=2010

est11_SC=subset(est11_SC, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_SC=est11_SC[which(est11_SC$Postal == "SC"),]

est11_SC = est11_SC[which(est11_SC$Name != "South Carolina"),]

est11_SC=subset(est11_SC,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_SC$Year=2011



est_SC=rbind(est06_SC,est07_SC,est08_SC,est09_SC, est03_SC,est04_SC,est05_SC,est10_SC,est11_SC)

est_SC = est_SC[order(est_SC$Year),]

est_SC=rename.vars(data=est_SC, from=c("Name"), to=c("County"))

est_SC$County = toupper(est_SC$County)



fata03_SC=read.xls("Fatalities/2003_2004_By_County/South Carolina.xls", header=TRUE)

fata04_SC=read.xls("Fatalities/2003_2004_By_County/South Carolina.xls", header=TRUE)

fata05_SC=read.xls("Fatalities/2005_2006_By_County/South Carolina.xls", header=TRUE)

fata06_SC=read.xls("Fatalities/2005_2006_By_County/South Carolina.xls", header=TRUE)

fata07_SC=read.xls("Fatalities/2006_2007_By_County/South_Carolina_06_07.xls", header=TRUE)

fata08_SC=read.xls("Fatalities/2008_2009_By_County/South_Carolina_08_09.xls", header=TRUE)

fata09_SC=read.xls("Fatalities/2008_2009_By_County/South_Carolina_08_09.xls", header=TRUE)

fata10_SC=read.xls("Fatalities/2010_2011_By_County/South_Carolina_10_11.xls", header=TRUE)

fata11_SC=read.xls("Fatalities/2010_2011_By_County/South_Carolina_10_11.xls", header=TRUE)

fata03_SC=subset(fata03_SC, select=c("County", "X2003"))

fata03_SC=rename.vars(data=fata03_SC, from=c("X2003"), to=c("Fatalities"))

fata03_SC$Year=2003

fata04_SC=subset(fata04_SC, select=c("County", "X2004"))

fata04_SC=rename.vars(data=fata04_SC, from=c("X2004"), to=c("Fatalities"))

fata04_SC$Year=2004

fata05_SC=subset(fata05_SC, select=c("County", "X2005"))

fata05_SC=rename.vars(data=fata05_SC, from=c("X2005"), to=c("Fatalities"))

fata05_SC$Year=2005

fata06_SC=subset(fata06_SC, select=c("County", "X2006"))

fata06_SC=rename.vars(data=fata06_SC, from=c("X2006"), to=c("Fatalities"))

fata06_SC$Year=2006

fata07_SC=subset(fata07_SC, select=c("County", "X2007"))

fata07_SC=rename.vars(data=fata07_SC, from=c("X2007"), to=c("Fatalities"))

fata07_SC$Year=2007

fata08_SC=subset(fata08_SC, select=c("County", "X2008"))

fata08_SC=rename.vars(data=fata08_SC, from=c("X2008"), to=c("Fatalities"))

fata08_SC$Year=2008

fata09_SC=subset(fata09_SC, select=c("County", "X2009"))

fata09_SC=rename.vars(data=fata09_SC, from=c("X2009"), to=c("Fatalities"))

fata09_SC$Year=2009

fata10_SC=subset(fata10_SC, select=c("County", "X2010"))

fata10_SC=rename.vars(data=fata10_SC, from=c("X2010"), to=c("Fatalities"))

fata10_SC$Year=2010

fata11_SC=subset(fata11_SC, select=c("County", "X2011"))

fata11_SC=rename.vars(data=fata11_SC, from=c("X2011"), to=c("Fatalities"))

fata11_SC$Year=2011





fata_SC=rbind(fata03_SC,fata04_SC,fata05_SC,fata06_SC,fata07_SC,fata08_SC,fata09_SC,fata10_SC,fata11_SC)

fata_SC=subset(fata_SC, County!="NOT APPLICABLE (000)")

fata_SC=subset(fata_SC, County!="OTHER (997)")

fata_SC=subset(fata_SC, County!="UNKNOWN (999)")

fata_SC=subset(fata_SC, County!="Total")

fata_SC = subset(fata_SC, County != "Not Reported")



fata_SC$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_SC$County)

fata_SC$County = paste(fata_SC$County, "County")

fata_SC$County = toupper(fata_SC$County)



fata_SC=subset(fata_SC, Fatalities!="NA")

final_SC = merge(est_SC, fata_SC, by = c("County", "Year"))

final_SC = transform(final_SC, Population = (as.numeric(final_SC$Poverty.Estimate.All.Ages)*100)/as.numeric(final_SC$Poverty.Percent.All.Ages))

final_SC = transform(final_SC, Fatalities.Percent = (as.numeric(final_SC$Fatalities)*100)/as.numeric(final_SC$Population))

final_SC=rename.vars (final_SC, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_SC=rename.vars (final_SC, from="Fatalities.Percent", to="Fatalities Percent")

final_SC=rename.vars (final_SC, from="Fatalities", to="Fatalities Count")

final_SC=rename.vars (final_SC, from="Median.Household.Income", to="Median Income")

final_SC=rename.vars (final_SC, from="Poverty.Percent.All.Ages", to="Poverty Percent")


commute_SC=read.csv("Commute time/Commute_Time_Data.csv")

commute_SC=commute_SC[which(commute_SC$State=="SC"),]

commute_SC=rename.vars(data=commute_SC, from=c("State"), to=c("Postal"))

commute_SC$County = paste(commute_SC$County, "County")

commute_SC$County = toupper(commute_SC$County)

final_SC=merge(final_SC,commute_SC, by = c("Postal", "County"))

final_SC=rename.vars (final_SC, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_SC=subset(final_SC, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_SC,file="SC.csv")
