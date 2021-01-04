require(gdata)

setwd("data")

est03_LA = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_LA = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_LA = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_LA = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_LA = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_LA = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_LA = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_LA = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_LA = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_LA=subset(est03_LA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income",
                                   
                                   "Postal"))

est03_LA=est03_LA[which(est03_LA$Postal == "LA"),]

est03_LA = est03_LA[which(est03_LA$Name != "Louisiana"),]

est03_LA=subset(est03_LA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_LA$Year=2003

est04_LA=subset(est04_LA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income",
                                   
                                   "Postal"))

est04_LA=est04_LA[which(est04_LA$Postal == "LA"),]

est04_LA = est04_LA[which(est04_LA$Name != "Louisiana"),]

est04_LA=subset(est04_LA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est04_LA$Year=2004

est05_LA=subset(est05_LA, select=c("Name", "County.FIPS", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income",
                                   
                                   "Postal"))

est05_LA=est05_LA[which(est05_LA$Postal == "LA"),]

est05_LA = est05_LA[which(est05_LA$Name != "Louisiana"),]

est05_LA=subset(est05_LA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_LA$Year=2005

est06_LA=subset(est06_LA, select=c("Name", "County.FIPS", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income",
                                   
                                   "Postal"))

est06_LA=est06_LA[which(est06_LA$Postal == "LA"),]

est06_LA = est06_LA[which(est06_LA$Name != "Louisiana"),]

est06_LA=subset(est06_LA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_LA$Year=2006

est07_LA=subset(est07_LA, select=c("Name", "County.FIPS", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income",
                                   
                                   "Postal"))

est07_LA=est07_LA[which(est07_LA$Postal == "LA"),]

est07_LA = est07_LA[which(est07_LA$Name != "Louisiana"),]

est07_LA=subset(est07_LA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_LA$Year=2007

est08_LA=subset(est08_LA, select=c("Name", "County.FIPS", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income",
                                   
                                   "Postal"))

est08_LA=est08_LA[which(est08_LA$Postal == "LA"),]

est08_LA = est08_LA[which(est08_LA$Name != "Louisiana"),]

est08_LA=subset(est08_LA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_LA$Year=2008

est09_LA=subset(est09_LA, select=c("Name", "County.FIPS", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income",
                                   
                                   "Postal"))

est09_LA=est09_LA[which(est09_LA$Postal == "LA"),]

est09_LA = est09_LA[which(est09_LA$Name != "Louisiana"),]

est09_LA=subset(est09_LA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_LA$Year=2009

est10_LA=subset(est10_LA, select=c("Name", "County.FIPS", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income",
                                   
                                   "Postal"))

est10_LA=est10_LA[which(est10_LA$Postal == "LA"),]

est10_LA = est10_LA[which(est10_LA$Name != "Louisiana"),]

est10_LA=subset(est10_LA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_LA$Year=2010

est11_LA=subset(est11_LA, select=c("Name", "County.FIPS", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income",
                                   
                                   "Postal"))

est11_LA=est11_LA[which(est11_LA$Postal == "LA"),]

est11_LA = est11_LA[which(est11_LA$Name != "Louisiana"),]

est11_LA=subset(est11_LA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages","Median.Household.Income", "Postal"))

est11_LA$Year=2011



est_LA=rbind(est06_LA,est07_LA,est08_LA,est09_LA, est03_LA,est04_LA,est05_LA,est10_LA,est11_LA)

est_LA = est_LA[order(est_LA$Year),]

est_LA=rename.vars(data=est_LA, from=c("Name"), to=c("County"))

est_LA$County= gsub(" Parish", "", est_LA$County)

est_LA$County = toupper(est_LA$County)



fata03_LA=read.xls("Fatalities/2003_2004_By_County/louisiana.xls", header=TRUE)

fata04_LA=read.xls("Fatalities/2003_2004_By_County/louisiana.xls", header=TRUE)

fata05_LA=read.xls("Fatalities/2005_2006_By_County/louisiana.xls", header=TRUE)

fata06_LA=read.xls("Fatalities/2005_2006_By_County/louisiana.xls", header=TRUE)

fata07_LA=read.xls("Fatalities/2006_2007_By_County/Louisiana_06_07.xls", header=TRUE)

fata08_LA=read.xls("Fatalities/2008_2009_By_County/Louisiana_08_09.xls", header=TRUE)

fata09_LA=read.xls("Fatalities/2008_2009_By_County/Louisiana_08_09.xls", header=TRUE)

fata10_LA=read.xls("Fatalities/2010_2011_By_County/Louisiana_10_11.xls", header=TRUE)

fata11_LA=read.xls("Fatalities/2010_2011_By_County/Louisiana_10_11.xls", header=TRUE)

fata03_LA=subset(fata03_LA, select=c("County", "X2003"))

fata03_LA=rename.vars(data=fata03_LA, from=c("X2003"), to=c("Fatalities"))

fata03_LA$Year=2003

fata04_LA=subset(fata04_LA, select=c("County", "X2004"))

fata04_LA=rename.vars(data=fata04_LA, from=c("X2004"), to=c("Fatalities"))

fata04_LA$Year=2004

fata05_LA=subset(fata05_LA, select=c("County", "X2005"))

fata05_LA=rename.vars(data=fata05_LA, from=c("X2005"), to=c("Fatalities"))

fata05_LA$Year=2005

fata06_LA=subset(fata06_LA, select=c("County", "X2006"))

fata06_LA=rename.vars(data=fata06_LA, from=c("X2006"), to=c("Fatalities"))

fata06_LA$Year=2006

fata07_LA=subset(fata07_LA, select=c("County", "X2007"))

fata07_LA=rename.vars(data=fata07_LA, from=c("X2007"), to=c("Fatalities"))

fata07_LA$Year=2007

fata08_LA=subset(fata08_LA, select=c("County", "X2008"))

fata08_LA=rename.vars(data=fata08_LA, from=c("X2008"), to=c("Fatalities"))

fata08_LA$Year=2008

fata09_LA=subset(fata09_LA, select=c("County", "X2009"))

fata09_LA=rename.vars(data=fata09_LA, from=c("X2009"), to=c("Fatalities"))

fata09_LA$Year=2009

fata10_LA=subset(fata10_LA, select=c("County", "X2010"))

fata10_LA=rename.vars(data=fata10_LA, from=c("X2010"), to=c("Fatalities"))

fata10_LA$Year=2010

fata11_LA=subset(fata11_LA, select=c("County", "X2011"))

fata11_LA=rename.vars(data=fata11_LA, from=c("X2011"), to=c("Fatalities"))

fata11_LA$Year=2011





fata_LA=rbind(fata03_LA,fata04_LA,fata05_LA,fata06_LA,fata07_LA,fata08_LA,fata09_LA,fata10_LA,fata11_LA)

est_LA = read.csv("Poverty rate/All_Years_By_County/est_LA.csv", header=TRUE)

fata_LA=subset(fata_LA, County!="NOT APPLICABLE (000)")

fata_LA=subset(fata_LA, County!="OTHER (997)")

fata_LA=subset(fata_LA, County!="UNKNOWN (999)")

fata_LA=subset(fata_LA, County!="Total")

fata_LA = subset(fata_LA, County != "Not Reported")



fata_LA$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_LA$County)

fata_LA$County = toupper(fata_LA$County)



fata_LA=subset(fata_LA, Fatalities!="NA")

final_LA = merge(est_LA, fata_LA, by = c("County", "Year"))


final_LA = transform(final_LA, Population = (final_LA$Poverty.Estimate.All.Ages*100)/final_LA$Poverty.Percent.All.Ages)

final_LA = transform(final_LA, Fatalities.Percent = (final_LA$Fatalities*100)/final_LA$Population)

final_LA=rename.vars (final_LA, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_LA=rename.vars (final_LA, from="Fatalities.Percent", to="Fatalities Percent")

final_LA=rename.vars (final_LA, from="Fatalities", to="Fatalities Count")

final_LA=rename.vars (final_LA, from="Median.Household.Income", to="Median Income")

final_LA=rename.vars (final_LA, from="Poverty.Percent.All.Ages", to="Poverty Percent")



commute_LA=read.csv("Commute time/Commute_Time_Data.csv")

commute_LA=commute_LA[which(commute_LA$State=="LA"),]

commute_LA=rename.vars(data=commute_LA, from=c("State"), to=c("Postal"))

commute_LA$County = toupper(commute_LA$County)

commute_LA$County= gsub(" PARISH", "", commute_LA$County)

final_LA=merge(final_LA,commute_LA, by = c("Postal", "County"))

final_LA=rename.vars (final_LA, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_LA=subset(final_LA, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

final_LA$County = paste(final_LA$County, "County")

write.csv(final_LA,file="LA.csv")
