require(gdata)

setwd("data")

est03_ME = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_ME = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_ME = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_ME = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_ME = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_ME = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_ME = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_ME = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_ME = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_ME=subset(est03_ME, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_ME=est03_ME[which(est03_ME$Postal == "ME"),]

est03_ME = est03_ME[which(est03_ME$Name != "Maine"),]

est03_ME=subset(est03_ME,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_ME$Year=2003

est04_ME=subset(est04_ME, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_ME=est04_ME[which(est04_ME$Postal == "ME"),]

est04_ME = est04_ME[which(est04_ME$Name != "Maine"),]

est04_ME=subset(est04_ME,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_ME$Year=2004

est05_ME=subset(est05_ME, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_ME=est05_ME[which(est05_ME$Postal == "ME"),]

est05_ME = est05_ME[which(est05_ME$Name != "Maine"),]

est05_ME=subset(est05_ME,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_ME$Year=2005

est06_ME=subset(est06_ME, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_ME=est06_ME[which(est06_ME$Postal == "ME"),]

est06_ME = est06_ME[which(est06_ME$Name != "Maine"),]

est06_ME=subset(est06_ME,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_ME$Year=2006

est07_ME=subset(est07_ME, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_ME=est07_ME[which(est07_ME$Postal == "ME"),]

est07_ME = est07_ME[which(est07_ME$Name != "Maine"),]

est07_ME=subset(est07_ME,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_ME$Year=2007

est08_ME=subset(est08_ME, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_ME=est08_ME[which(est08_ME$Postal == "ME"),]

est08_ME = est08_ME[which(est08_ME$Name != "Maine"),]

est08_ME=subset(est08_ME,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_ME$Year=2008

est09_ME=subset(est09_ME, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_ME=est09_ME[which(est09_ME$Postal == "ME"),]

est09_ME = est09_ME[which(est09_ME$Name != "Maine"),]

est09_ME=subset(est09_ME,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_ME$Year=2009

est10_ME=subset(est10_ME, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_ME=est10_ME[which(est10_ME$Postal == "ME"),]

est10_ME = est10_ME[which(est10_ME$Name != "Maine"),]

est10_ME=subset(est10_ME,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_ME$Year=2010

est11_ME=subset(est11_ME, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_ME=est11_ME[which(est11_ME$Postal == "ME"),]

est11_ME = est11_ME[which(est11_ME$Name != "Maine"),]

est11_ME=subset(est11_ME,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_ME$Year=2011



est_ME=rbind(est06_ME,est07_ME,est08_ME,est09_ME, est03_ME,est04_ME,est05_ME,est10_ME,est11_ME)

est_ME = est_ME[order(est_ME$Year),]

est_ME=rename.vars(data=est_ME, from=c("Name"), to=c("County"))

est_ME$County = toupper(est_ME$County)



fata03_ME=read.xls("Fatalities/2003_2004_By_County/maine.xls", header=TRUE)

fata04_ME=read.xls("Fatalities/2003_2004_By_County/maine.xls", header=TRUE)

fata05_ME=read.xls("Fatalities/2005_2006_By_County/maine.xls", header=TRUE)

fata06_ME=read.xls("Fatalities/2005_2006_By_County/maine.xls", header=TRUE)

fata07_ME=read.xls("Fatalities/2006_2007_By_County/Maine_06_07.xls", header=TRUE)

fata08_ME=read.xls("Fatalities/2008_2009_By_County/Maine_08_09.xls", header=TRUE)

fata09_ME=read.xls("Fatalities/2008_2009_By_County/Maine_08_09.xls", header=TRUE)

fata10_ME=read.xls("Fatalities/2010_2011_By_County/Maine_10_11.xls", header=TRUE)

fata11_ME=read.xls("Fatalities/2010_2011_By_County/Maine_10_11.xls", header=TRUE)

fata03_ME=subset(fata03_ME, select=c("County", "X2003"))

fata03_ME=rename.vars(data=fata03_ME, from=c("X2003"), to=c("Fatalities"))

fata03_ME$Year=2003

fata04_ME=subset(fata04_ME, select=c("County", "X2004"))

fata04_ME=rename.vars(data=fata04_ME, from=c("X2004"), to=c("Fatalities"))

fata04_ME$Year=2004

fata05_ME=subset(fata05_ME, select=c("County", "X2005"))

fata05_ME=rename.vars(data=fata05_ME, from=c("X2005"), to=c("Fatalities"))

fata05_ME$Year=2005

fata06_ME=subset(fata06_ME, select=c("County", "X2006"))

fata06_ME=rename.vars(data=fata06_ME, from=c("X2006"), to=c("Fatalities"))

fata06_ME$Year=2006

fata07_ME=subset(fata07_ME, select=c("County", "X2007"))

fata07_ME=rename.vars(data=fata07_ME, from=c("X2007"), to=c("Fatalities"))

fata07_ME$Year=2007

fata08_ME=subset(fata08_ME, select=c("County", "X2008"))

fata08_ME=rename.vars(data=fata08_ME, from=c("X2008"), to=c("Fatalities"))

fata08_ME$Year=2008

fata09_ME=subset(fata09_ME, select=c("County", "X2009"))

fata09_ME=rename.vars(data=fata09_ME, from=c("X2009"), to=c("Fatalities"))

fata09_ME$Year=2009

fata10_ME=subset(fata10_ME, select=c("County", "X2010"))

fata10_ME=rename.vars(data=fata10_ME, from=c("X2010"), to=c("Fatalities"))

fata10_ME$Year=2010

fata11_ME=subset(fata11_ME, select=c("County", "X2011"))

fata11_ME=rename.vars(data=fata11_ME, from=c("X2011"), to=c("Fatalities"))

fata11_ME$Year=2011





fata_ME=rbind(fata03_ME,fata04_ME,fata05_ME,fata06_ME,fata07_ME,fata08_ME,fata09_ME,fata10_ME,fata11_ME)

fata_ME=subset(fata_ME, County!="NOT APPLICABLE (000)")

fata_ME=subset(fata_ME, County!="OTHER (997)")

fata_ME=subset(fata_ME, County!="UNKNOWN (999)")

fata_ME=subset(fata_ME, County!="Total")

fata_ME = subset(fata_ME, County != "Not Reported")



fata_ME$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_ME$County)

fata_ME$County = paste(fata_ME$County, "County")

fata_ME$County = toupper(fata_ME$County)



fata_ME=subset(fata_ME, Fatalities!="NA")

final_ME = merge(est_ME, fata_ME, by = c("County", "Year"))

final_ME = transform(final_ME, Population = (as.numeric(final_ME$Poverty.Estimate.All.Ages)*100)/as.numeric(final_ME$Poverty.Percent.All.Ages))

final_ME = transform(final_ME, Fatalities.Percent = (as.numeric(final_ME$Fatalities)*100)/as.numeric(final_ME$Population))

final_ME=rename.vars (final_ME, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_ME=rename.vars (final_ME, from="Fatalities.Percent", to="Fatalities Percent")

final_ME=rename.vars (final_ME, from="Fatalities", to="Fatalities Count")

final_ME=rename.vars (final_ME, from="Median.Household.Income", to="Median Income")

final_ME=rename.vars (final_ME, from="Poverty.Percent.All.Ages", to="Poverty Percent")


commute_ME=read.csv("Commute time/Commute_Time_Data.csv")

commute_ME=commute_ME[which(commute_ME$State=="ME"),]

commute_ME=rename.vars(data=commute_ME, from=c("State"), to=c("Postal"))

commute_ME$County = paste(commute_ME$County, "County")

commute_ME$County = toupper(commute_ME$County)

final_ME=merge(final_ME,commute_ME, by = c("Postal", "County"))

final_ME=rename.vars (final_ME, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_ME=subset(final_ME, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_ME,file="ME.csv")
