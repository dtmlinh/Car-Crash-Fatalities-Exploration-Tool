require(gdata)

setwd("data")

est03_AR = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_AR = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_AR = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_AR = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_AR = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_AR = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_AR = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_AR = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_AR = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_AR=subset(est03_AR, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_AR=est03_AR[which(est03_AR$Postal == "AR"),]

est03_AR = est03_AR[which(est03_AR$Name != "Arkansas"),]

est03_AR=subset(est03_AR,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_AR$Year=2003

est04_AR=subset(est04_AR, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_AR=est04_AR[which(est04_AR$Postal == "AR"),]

est04_AR = est04_AR[which(est04_AR$Name != "Arkansas"),]

est04_AR=subset(est04_AR,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_AR$Year=2004

est05_AR=subset(est05_AR, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_AR=est05_AR[which(est05_AR$Postal == "AR"),]

est05_AR = est05_AR[which(est05_AR$Name != "Arkansas"),]

est05_AR=subset(est05_AR,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_AR$Year=2005

est06_AR=subset(est06_AR, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_AR=est06_AR[which(est06_AR$Postal == "AR"),]

est06_AR = est06_AR[which(est06_AR$Name != "Arkansas"),]

est06_AR=subset(est06_AR,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_AR$Year=2006

est07_AR=subset(est07_AR, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_AR=est07_AR[which(est07_AR$Postal == "AR"),]

est07_AR = est07_AR[which(est07_AR$Name != "Arkansas"),]

est07_AR=subset(est07_AR,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_AR$Year=2007

est08_AR=subset(est08_AR, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_AR=est08_AR[which(est08_AR$Postal == "AR"),]

est08_AR = est08_AR[which(est08_AR$Name != "Arkansas"),]

est08_AR=subset(est08_AR,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_AR$Year=2008

est09_AR=subset(est09_AR, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_AR=est09_AR[which(est09_AR$Postal == "AR"),]

est09_AR = est09_AR[which(est09_AR$Name != "Arkansas"),]

est09_AR=subset(est09_AR,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_AR$Year=2009

est10_AR=subset(est10_AR, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_AR=est10_AR[which(est10_AR$Postal == "AR"),]

est10_AR = est10_AR[which(est10_AR$Name != "Arkansas"),]

est10_AR=subset(est10_AR,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_AR$Year=2010

est11_AR=subset(est11_AR, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_AR=est11_AR[which(est11_AR$Postal == "AR"),]

est11_AR = est11_AR[which(est11_AR$Name != "Arkansas"),]

est11_AR=subset(est11_AR,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_AR$Year=2011



est_AR=rbind(est06_AR,est07_AR,est08_AR,est09_AR, est03_AR,est04_AR,est05_AR,est10_AR,est11_AR)

est_AR = est_AR[order(est_AR$Year),]

est_AR=rename.vars(data=est_AR, from=c("Name"), to=c("County"))

est_AR$County = toupper(est_AR$County)



fata03_AR=read.xls("Fatalities/2003_2004_By_County/arkansas.xls", header=TRUE)

fata04_AR=read.xls("Fatalities/2003_2004_By_County/arkansas.xls", header=TRUE)

fata05_AR=read.xls("Fatalities/2005_2006_By_County/arkansas.xls", header=TRUE)

fata06_AR=read.xls("Fatalities/2005_2006_By_County/arkansas.xls", header=TRUE)

fata07_AR=read.xls("Fatalities/2006_2007_By_County/Arkansas_06_07.xls", header=TRUE)

fata08_AR=read.xls("Fatalities/2008_2009_By_County/Arkansas_08_09.xls", header=TRUE)

fata09_AR=read.xls("Fatalities/2008_2009_By_County/Arkansas_08_09.xls", header=TRUE)

fata10_AR=read.xls("Fatalities/2010_2011_By_County/Arkansas_10_11.xls", header=TRUE)

fata11_AR=read.xls("Fatalities/2010_2011_By_County/Arkansas_10_11.xls", header=TRUE)

fata03_AR=subset(fata03_AR, select=c("County", "X2003"))

fata03_AR=rename.vars(data=fata03_AR, from=c("X2003"), to=c("Fatalities"))

fata03_AR$Year=2003

fata04_AR=subset(fata04_AR, select=c("County", "X2004"))

fata04_AR=rename.vars(data=fata04_AR, from=c("X2004"), to=c("Fatalities"))

fata04_AR$Year=2004

fata05_AR=subset(fata05_AR, select=c("County", "X2005"))

fata05_AR=rename.vars(data=fata05_AR, from=c("X2005"), to=c("Fatalities"))

fata05_AR$Year=2005

fata06_AR=subset(fata06_AR, select=c("County", "X2006"))

fata06_AR=rename.vars(data=fata06_AR, from=c("X2006"), to=c("Fatalities"))

fata06_AR$Year=2006

fata07_AR=subset(fata07_AR, select=c("County", "X2007"))

fata07_AR=rename.vars(data=fata07_AR, from=c("X2007"), to=c("Fatalities"))

fata07_AR$Year=2007

fata08_AR=subset(fata08_AR, select=c("County", "X2008"))

fata08_AR=rename.vars(data=fata08_AR, from=c("X2008"), to=c("Fatalities"))

fata08_AR$Year=2008

fata09_AR=subset(fata09_AR, select=c("County", "X2009"))

fata09_AR=rename.vars(data=fata09_AR, from=c("X2009"), to=c("Fatalities"))

fata09_AR$Year=2009

fata10_AR=subset(fata10_AR, select=c("County", "X2010"))

fata10_AR=rename.vars(data=fata10_AR, from=c("X2010"), to=c("Fatalities"))

fata10_AR$Year=2010

fata11_AR=subset(fata11_AR, select=c("County", "X2011"))

fata11_AR=rename.vars(data=fata11_AR, from=c("X2011"), to=c("Fatalities"))

fata11_AR$Year=2011



fata_AR=rbind(fata03_AR,fata04_AR,fata05_AR,fata06_AR,fata07_AR,fata08_AR,fata09_AR,fata10_AR,fata11_AR)

fata_AR=subset(fata_AR, County!="NOT APPLICABLE (000)")

fata_AR=subset(fata_AR, County!="OTHER (997)")

fata_AR=subset(fata_AR, County!="UNKNOWN (999)")

fata_AR=subset(fata_AR, County!="Total")

fata_AR = subset(fata_AR, County != "Not Reported")



fata_AR$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_AR$County)

fata_AR$County = paste(fata_AR$County, "County")

fata_AR$County = toupper(fata_AR$County)



fata_AR=subset(fata_AR, Fatalities!="NA")

final_AR = merge(est_AR, fata_AR, by = c("County", "Year"))

final_AR = transform(final_AR, Population = (as.numeric(final_AR$Poverty.Estimate.All.Ages)*100)/as.numeric(final_AR$Poverty.Percent.All.Ages))

final_AR = transform(final_AR, Fatalities.Percent = (as.numeric(final_AR$Fatalities)*100)/as.numeric(final_AR$Population))

final_AR=rename.vars (final_AR, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_AR=rename.vars (final_AR, from="Fatalities.Percent", to="Fatalities Percent")

final_AR=rename.vars (final_AR, from="Fatalities", to="Fatalities Count")

final_AR=rename.vars (final_AR, from="Median.Household.Income", to="Median Income")

final_AR=rename.vars (final_AR, from="Poverty.Percent.All.Ages", to="Poverty Percent")



commute_AR=read.csv("Commute time/Commute_Time_Data.csv")

commute_AR=commute_AR[which(commute_AR$State=="AR"),]

commute_AR=rename.vars(data=commute_AR, from=c("State"), to=c("Postal"))

commute_AR$County = paste(commute_AR$County, "County")

commute_AR$County = toupper(commute_AR$County)

final_AR=merge(final_AR,commute_AR, by = c("Postal", "County"))

final_AR=rename.vars (final_AR, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_AR=subset(final_AR, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_AR,file="AR.csv")
