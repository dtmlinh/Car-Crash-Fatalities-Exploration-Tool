require(gdata)

setwd("data")

est03_AL = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_AL = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_AL = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_AL = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_AL = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_AL = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_AL = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_AL = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_AL = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_AL=subset(est03_AL, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_AL=est03_AL[which(est03_AL$Postal == "AL"),]

est03_AL = est03_AL[which(est03_AL$Name != "Alabama"),]

est03_AL=subset(est03_AL,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_AL$Year=2003

est04_AL=subset(est04_AL, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_AL=est04_AL[which(est04_AL$Postal == "AL"),]

est04_AL = est04_AL[which(est04_AL$Name != "Alabama"),]

est04_AL=subset(est04_AL,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_AL$Year=2004

est05_AL=subset(est05_AL, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_AL=est05_AL[which(est05_AL$Postal == "AL"),]

est05_AL = est05_AL[which(est05_AL$Name != "Alabama"),]

est05_AL=subset(est05_AL,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_AL$Year=2005

est06_AL=subset(est06_AL, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_AL=est06_AL[which(est06_AL$Postal == "AL"),]

est06_AL = est06_AL[which(est06_AL$Name != "Alabama"),]

est06_AL=subset(est06_AL,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_AL$Year=2006

est07_AL=subset(est07_AL, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_AL=est07_AL[which(est07_AL$Postal == "AL"),]

est07_AL = est07_AL[which(est07_AL$Name != "Alabama"),]

est07_AL=subset(est07_AL,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_AL$Year=2007

est08_AL=subset(est08_AL, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_AL=est08_AL[which(est08_AL$Postal == "AL"),]

est08_AL = est08_AL[which(est08_AL$Name != "Alabama"),]

est08_AL=subset(est08_AL,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_AL$Year=2008

est09_AL=subset(est09_AL, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_AL=est09_AL[which(est09_AL$Postal == "AL"),]

est09_AL = est09_AL[which(est09_AL$Name != "Alabama"),]

est09_AL=subset(est09_AL,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_AL$Year=2009

est10_AL=subset(est10_AL, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_AL=est10_AL[which(est10_AL$Postal == "AL"),]

est10_AL = est10_AL[which(est10_AL$Name != "Alabama"),]

est10_AL=subset(est10_AL,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_AL$Year=2010

est11_AL=subset(est11_AL, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_AL=est11_AL[which(est11_AL$Postal == "AL"),]

est11_AL = est11_AL[which(est11_AL$Name != "Alabama"),]

est11_AL=subset(est11_AL,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_AL$Year=2011



est_AL=rbind(est06_AL,est07_AL,est08_AL,est09_AL, est03_AL,est04_AL,est05_AL,est10_AL,est11_AL)

est_AL = est_AL[order(est_AL$Year),]

est_AL=rename.vars(data=est_AL, from=c("Name"), to=c("County"))

est_AL$County = toupper(est_AL$County)



fata03_AL=read.xls("Fatalities/2003_2004_By_County/alabama.xls", header=TRUE)

fata04_AL=read.xls("Fatalities/2003_2004_By_County/alabama.xls", header=TRUE)

fata05_AL=read.xls("Fatalities/2005_2006_By_County/alabama.xls", header=TRUE)

fata06_AL=read.xls("Fatalities/2005_2006_By_County/alabama.xls", header=TRUE)

fata07_AL=read.xls("Fatalities/2006_2007_By_County/Alabama_06_07.xls", header=TRUE)

fata08_AL=read.xls("Fatalities/2008_2009_By_County/Alabama_08_09.xls", header=TRUE)

fata09_AL=read.xls("Fatalities/2008_2009_By_County/Alabama_08_09.xls", header=TRUE)

fata10_AL=read.xls("Fatalities/2010_2011_By_County/Alabama_10_11.xls", header=TRUE)

fata11_AL=read.xls("Fatalities/2010_2011_By_County/Alabama_10_11.xls", header=TRUE)

fata03_AL=subset(fata03_AL, select=c("County", "X2003"))

fata03_AL=rename.vars(data=fata03_AL, from=c("X2003"), to=c("Fatalities"))

fata03_AL$Year=2003

fata04_AL=subset(fata04_AL, select=c("County", "X2004"))

fata04_AL=rename.vars(data=fata04_AL, from=c("X2004"), to=c("Fatalities"))

fata04_AL$Year=2004

fata05_AL=subset(fata05_AL, select=c("County", "X2005"))

fata05_AL=rename.vars(data=fata05_AL, from=c("X2005"), to=c("Fatalities"))

fata05_AL$Year=2005

fata06_AL=subset(fata06_AL, select=c("County", "X2006"))

fata06_AL=rename.vars(data=fata06_AL, from=c("X2006"), to=c("Fatalities"))

fata06_AL$Year=2006

fata07_AL=subset(fata07_AL, select=c("County", "X2007"))

fata07_AL=rename.vars(data=fata07_AL, from=c("X2007"), to=c("Fatalities"))

fata07_AL$Year=2007

fata08_AL=subset(fata08_AL, select=c("County", "X2008"))

fata08_AL=rename.vars(data=fata08_AL, from=c("X2008"), to=c("Fatalities"))

fata08_AL$Year=2008

fata09_AL=subset(fata09_AL, select=c("County", "X2009"))

fata09_AL=rename.vars(data=fata09_AL, from=c("X2009"), to=c("Fatalities"))

fata09_AL$Year=2009

fata10_AL=subset(fata10_AL, select=c("County", "X2010"))

fata10_AL=rename.vars(data=fata10_AL, from=c("X2010"), to=c("Fatalities"))

fata10_AL$Year=2010

fata11_AL=subset(fata11_AL, select=c("County", "X2011"))

fata11_AL=rename.vars(data=fata11_AL, from=c("X2011"), to=c("Fatalities"))

fata11_AL$Year=2011



fata_AL=rbind(fata03_AL,fata04_AL,fata05_AL,fata06_AL,fata07_AL,fata08_AL,fata09_AL,fata10_AL,fata11_AL)

fata_AL=subset(fata_AL, County!="NOT APPLICABLE (000)")

fata_AL=subset(fata_AL, County!="OTHER (997)")

fata_AL=subset(fata_AL, County!="UNKNOWN (999)")

fata_AL=subset(fata_AL, County!="Total")

fata_AL = subset(fata_AL, County != "Not Reported")



fata_AL$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_AL$County)

fata_AL$County = paste(fata_AL$County, "County")

fata_AL$County = toupper(fata_AL$County)



fata_AL=subset(fata_AL, Fatalities!="NA")

final_AL = merge(est_AL, fata_AL, by = c("County", "Year"))

final_AL = transform(final_AL, Population = (as.numeric(final_AL$Poverty.Estimate.All.Ages)*100)/as.numeric(final_AL$Poverty.Percent.All.Ages))

final_AL = transform(final_AL, Fatalities.Percent = (as.numeric(final_AL$Fatalities)*100)/as.numeric(final_AL$Population))

final_AL=rename.vars (final_AL, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_AL=rename.vars (final_AL, from="Fatalities.Percent", to="Fatalities Percent")

final_AL=rename.vars (final_AL, from="Fatalities", to="Fatalities Count")

final_AL=rename.vars (final_AL, from="Median.Household.Income", to="Median Income")

final_AL=rename.vars (final_AL, from="Poverty.Percent.All.Ages", to="Poverty Percent")



commute_AL=read.csv("Commute time/Commute_Time_Data.csv")

commute_AL=commute_AL[which(commute_AL$State=="AL"),]

commute_AL=rename.vars(data=commute_AL, from=c("State"), to=c("Postal"))

commute_AL$County = paste(commute_AL$County, "County")

commute_AL$County = toupper(commute_AL$County)

final_AL=merge(final_AL,commute_AL, by = c("Postal", "County"))

final_AL=rename.vars (final_AL, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_AL=subset(final_AL, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_AL, file="AL.csv")
