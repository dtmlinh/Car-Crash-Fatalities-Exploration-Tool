require(gdata)

setwd("data")

est03_PA = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_PA = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_PA = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_PA = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_PA = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_PA = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_PA = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_PA = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_PA = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_PA=subset(est03_PA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_PA=est03_PA[which(est03_PA$Postal == "PA"),]

est03_PA = est03_PA[which(est03_PA$Name != "Pennsylvania"),]

est03_PA=subset(est03_PA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_PA$Year=2003

est04_PA=subset(est04_PA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_PA=est04_PA[which(est04_PA$Postal == "PA"),]

est04_PA = est04_PA[which(est04_PA$Name != "Pennsylvania"),]

est04_PA=subset(est04_PA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_PA$Year=2004

est05_PA=subset(est05_PA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_PA=est05_PA[which(est05_PA$Postal == "PA"),]

est05_PA = est05_PA[which(est05_PA$Name != "Pennsylvania"),]

est05_PA=subset(est05_PA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_PA$Year=2005

est06_PA=subset(est06_PA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_PA=est06_PA[which(est06_PA$Postal == "PA"),]

est06_PA = est06_PA[which(est06_PA$Name != "Pennsylvania"),]

est06_PA=subset(est06_PA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_PA$Year=2006

est07_PA=subset(est07_PA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_PA=est07_PA[which(est07_PA$Postal == "PA"),]

est07_PA = est07_PA[which(est07_PA$Name != "Pennsylvania"),]

est07_PA=subset(est07_PA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_PA$Year=2007

est08_PA=subset(est08_PA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_PA=est08_PA[which(est08_PA$Postal == "PA"),]

est08_PA = est08_PA[which(est08_PA$Name != "Pennsylvania"),]

est08_PA=subset(est08_PA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_PA$Year=2008

est09_PA=subset(est09_PA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_PA=est09_PA[which(est09_PA$Postal == "PA"),]

est09_PA = est09_PA[which(est09_PA$Name != "Pennsylvania"),]

est09_PA=subset(est09_PA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_PA$Year=2009

est10_PA=subset(est10_PA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_PA=est10_PA[which(est10_PA$Postal == "PA"),]

est10_PA = est10_PA[which(est10_PA$Name != "Pennsylvania"),]

est10_PA=subset(est10_PA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_PA$Year=2010

est11_PA=subset(est11_PA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_PA=est11_PA[which(est11_PA$Postal == "PA"),]

est11_PA = est11_PA[which(est11_PA$Name != "Pennsylvania"),]

est11_PA=subset(est11_PA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_PA$Year=2011



est_PA=rbind(est06_PA,est07_PA,est08_PA,est09_PA, est03_PA,est04_PA,est05_PA,est10_PA,est11_PA)

est_PA = est_PA[order(est_PA$Year),]

est_PA=rename.vars(data=est_PA, from=c("Name"), to=c("County"))

est_PA$County = toupper(est_PA$County)



fata03_PA=read.xls("Fatalities/2003_2004_By_County/pennsylvania.xls", header=TRUE)

fata04_PA=read.xls("Fatalities/2003_2004_By_County/pennsylvania.xls", header=TRUE)

fata05_PA=read.xls("Fatalities/2005_2006_By_County/pennsylvania.xls", header=TRUE)

fata06_PA=read.xls("Fatalities/2005_2006_By_County/pennsylvania.xls", header=TRUE)

fata07_PA=read.xls("Fatalities/2006_2007_By_County/Pennsylvania_06_07.xls", header=TRUE)

fata08_PA=read.xls("Fatalities/2008_2009_By_County/Pennsylvania_08_09.xls", header=TRUE)

fata09_PA=read.xls("Fatalities/2008_2009_By_County/Pennsylvania_08_09.xls", header=TRUE)

fata10_PA=read.xls("Fatalities/2010_2011_By_County/Pennsylvania_10_11.xls", header=TRUE)

fata11_PA=read.xls("Fatalities/2010_2011_By_County/Pennsylvania_10_11.xls", header=TRUE)

fata03_PA=subset(fata03_PA, select=c("County", "X2003"))

fata03_PA=rename.vars(data=fata03_PA, from=c("X2003"), to=c("Fatalities"))

fata03_PA$Year=2003

fata04_PA=subset(fata04_PA, select=c("County", "X2004"))

fata04_PA=rename.vars(data=fata04_PA, from=c("X2004"), to=c("Fatalities"))

fata04_PA$Year=2004

fata05_PA=subset(fata05_PA, select=c("County", "X2005"))

fata05_PA=rename.vars(data=fata05_PA, from=c("X2005"), to=c("Fatalities"))

fata05_PA$Year=2005

fata06_PA=subset(fata06_PA, select=c("County", "X2006"))

fata06_PA=rename.vars(data=fata06_PA, from=c("X2006"), to=c("Fatalities"))

fata06_PA$Year=2006

fata07_PA=subset(fata07_PA, select=c("County", "X2007"))

fata07_PA=rename.vars(data=fata07_PA, from=c("X2007"), to=c("Fatalities"))

fata07_PA$Year=2007

fata08_PA=subset(fata08_PA, select=c("County", "X2008"))

fata08_PA=rename.vars(data=fata08_PA, from=c("X2008"), to=c("Fatalities"))

fata08_PA$Year=2008

fata09_PA=subset(fata09_PA, select=c("County", "X2009"))

fata09_PA=rename.vars(data=fata09_PA, from=c("X2009"), to=c("Fatalities"))

fata09_PA$Year=2009

fata10_PA=subset(fata10_PA, select=c("County", "X2010"))

fata10_PA=rename.vars(data=fata10_PA, from=c("X2010"), to=c("Fatalities"))

fata10_PA$Year=2010

fata11_PA=subset(fata11_PA, select=c("County", "X2011"))

fata11_PA=rename.vars(data=fata11_PA, from=c("X2011"), to=c("Fatalities"))

fata11_PA$Year=2011





fata_PA=rbind(fata03_PA,fata04_PA,fata05_PA,fata06_PA,fata07_PA,fata08_PA,fata09_PA,fata10_PA,fata11_PA)

fata_PA=subset(fata_PA, County!="NOT APPLICABLE (000)")

fata_PA=subset(fata_PA, County!="OTHER (997)")

fata_PA=subset(fata_PA, County!="UNKNOWN (999)")

fata_PA=subset(fata_PA, County!="Total")

fata_PA = subset(fata_PA, County != "Not Reported")



fata_PA$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_PA$County)

fata_PA$County = paste(fata_PA$County, "County")

fata_PA$County = toupper(fata_PA$County)



fata_PA=subset(fata_PA, Fatalities!="NA")

final_PA = merge(est_PA, fata_PA, by = c("County", "Year"))

final_PA = transform(final_PA, Population = (as.numeric(final_PA$Poverty.Estimate.All.Ages)*100)/as.numeric(final_PA$Poverty.Percent.All.Ages))

final_PA = transform(final_PA, Fatalities.Percent = (as.numeric(final_PA$Fatalities)*100)/as.numeric(final_PA$Population))

final_PA=rename.vars (final_PA, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_PA=rename.vars (final_PA, from="Fatalities.Percent", to="Fatalities Percent")

final_PA=rename.vars (final_PA, from="Fatalities", to="Fatalities Count")

final_PA=rename.vars (final_PA, from="Median.Household.Income", to="Median Income")

final_PA=rename.vars (final_PA, from="Poverty.Percent.All.Ages", to="Poverty Percent")


commute_PA=read.csv("Commute time/Commute_Time_Data.csv")

commute_PA=commute_PA[which(commute_PA$State=="PA"),]

commute_PA=rename.vars(data=commute_PA, from=c("State"), to=c("Postal"))

commute_PA$County = paste(commute_PA$County, "County")

commute_PA$County = toupper(commute_PA$County)

final_PA=merge(final_PA,commute_PA, by = c("Postal", "County"))

final_PA=rename.vars (final_PA, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_PA=subset(final_PA, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_PA,file="PA.csv")
