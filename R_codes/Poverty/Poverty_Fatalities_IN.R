require(gdata)

setwd("data")

est03_IN = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_IN = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_IN = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_IN = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_IN = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_IN = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_IN = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_IN = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_IN = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_IN=subset(est03_IN, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_IN=est03_IN[which(est03_IN$Postal == "IN"),]

est03_IN = est03_IN[which(est03_IN$Name != "Indiana"),]

est03_IN=subset(est03_IN,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_IN$Year=2003

est04_IN=subset(est04_IN, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_IN=est04_IN[which(est04_IN$Postal == "IN"),]

est04_IN = est04_IN[which(est04_IN$Name != "Indiana"),]

est04_IN=subset(est04_IN,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_IN$Year=2004

est05_IN=subset(est05_IN, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_IN=est05_IN[which(est05_IN$Postal == "IN"),]

est05_IN = est05_IN[which(est05_IN$Name != "Indiana"),]

est05_IN=subset(est05_IN,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_IN$Year=2005

est06_IN=subset(est06_IN, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_IN=est06_IN[which(est06_IN$Postal == "IN"),]

est06_IN = est06_IN[which(est06_IN$Name != "Indiana"),]

est06_IN=subset(est06_IN,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_IN$Year=2006

est07_IN=subset(est07_IN, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_IN=est07_IN[which(est07_IN$Postal == "IN"),]

est07_IN = est07_IN[which(est07_IN$Name != "Indiana"),]

est07_IN=subset(est07_IN,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_IN$Year=2007

est08_IN=subset(est08_IN, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_IN=est08_IN[which(est08_IN$Postal == "IN"),]

est08_IN = est08_IN[which(est08_IN$Name != "Indiana"),]

est08_IN=subset(est08_IN,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_IN$Year=2008

est09_IN=subset(est09_IN, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_IN=est09_IN[which(est09_IN$Postal == "IN"),]

est09_IN = est09_IN[which(est09_IN$Name != "Indiana"),]

est09_IN=subset(est09_IN,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_IN$Year=2009

est10_IN=subset(est10_IN, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_IN=est10_IN[which(est10_IN$Postal == "IN"),]

est10_IN = est10_IN[which(est10_IN$Name != "Indiana"),]

est10_IN=subset(est10_IN,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_IN$Year=2010

est11_IN=subset(est11_IN, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_IN=est11_IN[which(est11_IN$Postal == "IN"),]

est11_IN = est11_IN[which(est11_IN$Name != "Indiana"),]

est11_IN=subset(est11_IN,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_IN$Year=2011



est_IN=rbind(est06_IN,est07_IN,est08_IN,est09_IN, est03_IN,est04_IN,est05_IN,est10_IN,est11_IN)

est_IN = est_IN[order(est_IN$Year),]

est_IN=rename.vars(data=est_IN, from=c("Name"), to=c("County"))

est_IN$County = toupper(est_IN$County)



fata03_IN=read.xls("Fatalities/2003_2004_By_County/indiana.xls", header=TRUE)

fata04_IN=read.xls("Fatalities/2003_2004_By_County/indiana.xls", header=TRUE)

fata05_IN=read.xls("Fatalities/2005_2006_By_County/indiana.xls", header=TRUE)

fata06_IN=read.xls("Fatalities/2005_2006_By_County/indiana.xls", header=TRUE)

fata07_IN=read.xls("Fatalities/2006_2007_By_County/Indiana_06_07.xls", header=TRUE)

fata08_IN=read.xls("Fatalities/2008_2009_By_County/Indiana_08_09.xls", header=TRUE)

fata09_IN=read.xls("Fatalities/2008_2009_By_County/Indiana_08_09.xls", header=TRUE)

fata10_IN=read.xls("Fatalities/2010_2011_By_County/Indiana_10_11.xls", header=TRUE)

fata11_IN=read.xls("Fatalities/2010_2011_By_County/Indiana_10_11.xls", header=TRUE)

fata03_IN=subset(fata03_IN, select=c("County", "X2003"))

fata03_IN=rename.vars(data=fata03_IN, from=c("X2003"), to=c("Fatalities"))

fata03_IN$Year=2003

fata04_IN=subset(fata04_IN, select=c("County", "X2004"))

fata04_IN=rename.vars(data=fata04_IN, from=c("X2004"), to=c("Fatalities"))

fata04_IN$Year=2004

fata05_IN=subset(fata05_IN, select=c("County", "X2005"))

fata05_IN=rename.vars(data=fata05_IN, from=c("X2005"), to=c("Fatalities"))

fata05_IN$Year=2005

fata06_IN=subset(fata06_IN, select=c("County", "X2006"))

fata06_IN=rename.vars(data=fata06_IN, from=c("X2006"), to=c("Fatalities"))

fata06_IN$Year=2006

fata07_IN=subset(fata07_IN, select=c("County", "X2007"))

fata07_IN=rename.vars(data=fata07_IN, from=c("X2007"), to=c("Fatalities"))

fata07_IN$Year=2007

fata08_IN=subset(fata08_IN, select=c("County", "X2008"))

fata08_IN=rename.vars(data=fata08_IN, from=c("X2008"), to=c("Fatalities"))

fata08_IN$Year=2008

fata09_IN=subset(fata09_IN, select=c("County", "X2009"))

fata09_IN=rename.vars(data=fata09_IN, from=c("X2009"), to=c("Fatalities"))

fata09_IN$Year=2009

fata10_IN=subset(fata10_IN, select=c("County", "X2010"))

fata10_IN=rename.vars(data=fata10_IN, from=c("X2010"), to=c("Fatalities"))

fata10_IN$Year=2010

fata11_IN=subset(fata11_IN, select=c("County", "X2011"))

fata11_IN=rename.vars(data=fata11_IN, from=c("X2011"), to=c("Fatalities"))

fata11_IN$Year=2011





fata_IN=rbind(fata03_IN,fata04_IN,fata05_IN,fata06_IN,fata07_IN,fata08_IN,fata09_IN,fata10_IN,fata11_IN)

fata_IN=subset(fata_IN, County!="NOT APPLICABLE (000)")

fata_IN=subset(fata_IN, County!="OTHER (997)")

fata_IN=subset(fata_IN, County!="UNKNOWN (999)")

fata_IN=subset(fata_IN, County!="Total")

fata_IN = subset(fata_IN, County != "Not Reported")



fata_IN$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_IN$County)

fata_IN$County = paste(fata_IN$County, "County")

fata_IN$County = toupper(fata_IN$County)



fata_IN=subset(fata_IN, Fatalities!="NA")

final_IN = merge(est_IN, fata_IN, by = c("County", "Year"))

final_IN = transform(final_IN, Population = (as.numeric(final_IN$Poverty.Estimate.All.Ages)*100)/as.numeric(final_IN$Poverty.Percent.All.Ages))

final_IN = transform(final_IN, Fatalities.Percent = (as.numeric(final_IN$Fatalities)*100)/as.numeric(final_IN$Population))

final_IN=rename.vars (final_IN, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_IN=rename.vars (final_IN, from="Fatalities.Percent", to="Fatalities Percent")

final_IN=rename.vars (final_IN, from="Fatalities", to="Fatalities Count")

final_IN=rename.vars (final_IN, from="Median.Household.Income", to="Median Income")

final_IN=rename.vars (final_IN, from="Poverty.Percent.All.Ages", to="Poverty Percent")


commute_IN=read.csv("Commute time/Commute_Time_Data.csv")

commute_IN=commute_IN[which(commute_IN$State=="IN"),]

commute_IN=rename.vars(data=commute_IN, from=c("State"), to=c("Postal"))

commute_IN$County = paste(commute_IN$County, "County")

commute_IN$County = toupper(commute_IN$County)

final_IN=merge(final_IN,commute_IN, by = c("Postal", "County"))

final_IN=rename.vars (final_IN, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_IN=subset(final_IN, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_IN,file="IN.csv")
