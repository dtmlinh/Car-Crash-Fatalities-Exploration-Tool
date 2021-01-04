require(gdata)

setwd("data")

est03_VA = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_VA = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_VA = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_VA = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_VA = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_VA = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_VA = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_VA = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_VA = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_VA=subset(est03_VA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_VA=est03_VA[which(est03_VA$Postal == "VA"),]

est03_VA = est03_VA[which(est03_VA$Name != "Virginia"),]

est03_VA=subset(est03_VA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_VA$Year=2003

est04_VA=subset(est04_VA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_VA=est04_VA[which(est04_VA$Postal == "VA"),]

est04_VA = est04_VA[which(est04_VA$Name != "Virginia"),]

est04_VA=subset(est04_VA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_VA$Year=2004

est05_VA=subset(est05_VA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_VA=est05_VA[which(est05_VA$Postal == "VA"),]

est05_VA = est05_VA[which(est05_VA$Name != "Virginia"),]

est05_VA=subset(est05_VA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_VA$Year=2005

est06_VA=subset(est06_VA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_VA=est06_VA[which(est06_VA$Postal == "VA"),]

est06_VA = est06_VA[which(est06_VA$Name != "Virginia"),]

est06_VA=subset(est06_VA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_VA$Year=2006

est07_VA=subset(est07_VA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_VA=est07_VA[which(est07_VA$Postal == "VA"),]

est07_VA = est07_VA[which(est07_VA$Name != "Virginia"),]

est07_VA=subset(est07_VA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_VA$Year=2007

est08_VA=subset(est08_VA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_VA=est08_VA[which(est08_VA$Postal == "VA"),]

est08_VA = est08_VA[which(est08_VA$Name != "Virginia"),]

est08_VA=subset(est08_VA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_VA$Year=2008

est09_VA=subset(est09_VA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_VA=est09_VA[which(est09_VA$Postal == "VA"),]

est09_VA = est09_VA[which(est09_VA$Name != "Virginia"),]

est09_VA=subset(est09_VA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_VA$Year=2009

est10_VA=subset(est10_VA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_VA=est10_VA[which(est10_VA$Postal == "VA"),]

est10_VA = est10_VA[which(est10_VA$Name != "Virginia"),]

est10_VA=subset(est10_VA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_VA$Year=2010

est11_VA=subset(est11_VA, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_VA=est11_VA[which(est11_VA$Postal == "VA"),]

est11_VA = est11_VA[which(est11_VA$Name != "Virginia"),]

est11_VA=subset(est11_VA,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_VA$Year=2011



est_VA=rbind(est06_VA,est07_VA,est08_VA,est09_VA, est03_VA,est04_VA,est05_VA,est10_VA,est11_VA)

est_VA = est_VA[order(est_VA$Year),]

est_VA=rename.vars(data=est_VA, from=c("Name"), to=c("County"))

est_VA$County = toupper(est_VA$County)



fata03_VA=read.xls("Fatalities/2003_2004_By_County/Virginia.xls", header=TRUE)

fata04_VA=read.xls("Fatalities/2003_2004_By_County/Virginia.xls", header=TRUE)

fata05_VA=read.xls("Fatalities/2005_2006_By_County/Virginia.xls", header=TRUE)

fata06_VA=read.xls("Fatalities/2005_2006_By_County/Virginia.xls", header=TRUE)

fata07_VA=read.xls("Fatalities/2006_2007_By_County/Virginia_06_07.xls", header=TRUE)

fata08_VA=read.xls("Fatalities/2008_2009_By_County/Virginia_08_09.xls", header=TRUE)

fata09_VA=read.xls("Fatalities/2008_2009_By_County/Virginia_08_09.xls", header=TRUE)

fata10_VA=read.xls("Fatalities/2010_2011_By_County/Virginia_10_11.xls", header=TRUE)

fata11_VA=read.xls("Fatalities/2010_2011_By_County/Virginia_10_11.xls", header=TRUE)

fata03_VA=subset(fata03_VA, select=c("County", "X2003"))

fata03_VA=rename.vars(data=fata03_VA, from=c("X2003"), to=c("Fatalities"))

fata03_VA$Year=2003

fata04_VA=subset(fata04_VA, select=c("County", "X2004"))

fata04_VA=rename.vars(data=fata04_VA, from=c("X2004"), to=c("Fatalities"))

fata04_VA$Year=2004

fata05_VA=subset(fata05_VA, select=c("County", "X2005"))

fata05_VA=rename.vars(data=fata05_VA, from=c("X2005"), to=c("Fatalities"))

fata05_VA$Year=2005

fata06_VA=subset(fata06_VA, select=c("County", "X2006"))

fata06_VA=rename.vars(data=fata06_VA, from=c("X2006"), to=c("Fatalities"))

fata06_VA$Year=2006

fata07_VA=subset(fata07_VA, select=c("County", "X2007"))

fata07_VA=rename.vars(data=fata07_VA, from=c("X2007"), to=c("Fatalities"))

fata07_VA$Year=2007

fata08_VA=subset(fata08_VA, select=c("County", "X2008"))

fata08_VA=rename.vars(data=fata08_VA, from=c("X2008"), to=c("Fatalities"))

fata08_VA$Year=2008

fata09_VA=subset(fata09_VA, select=c("County", "X2009"))

fata09_VA=rename.vars(data=fata09_VA, from=c("X2009"), to=c("Fatalities"))

fata09_VA$Year=2009

fata10_VA=subset(fata10_VA, select=c("County", "X2010"))

fata10_VA=rename.vars(data=fata10_VA, from=c("X2010"), to=c("Fatalities"))

fata10_VA$Year=2010

fata11_VA=subset(fata11_VA, select=c("County", "X2011"))

fata11_VA=rename.vars(data=fata11_VA, from=c("X2011"), to=c("Fatalities"))

fata11_VA$Year=2011





fata_VA=rbind(fata03_VA,fata04_VA,fata05_VA,fata06_VA,fata07_VA,fata08_VA,fata09_VA,fata10_VA,fata11_VA)

fata_VA=subset(fata_VA, County!="NOT APPLICABLE (000)")

fata_VA=subset(fata_VA, County!="OTHER (997)")

fata_VA=subset(fata_VA, County!="UNKNOWN (999)")

fata_VA=subset(fata_VA, County!="Total")

fata_VA = subset(fata_VA, County != "Not Reported")



fata_VA$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_VA$County)

fata_VA$County = paste(fata_VA$County, "County")

fata_VA$County = toupper(fata_VA$County)



fata_VA=subset(fata_VA, Fatalities!="NA")

final_VA = merge(est_VA, fata_VA, by = c("County", "Year"))

final_VA = transform(final_VA, Population = (as.numeric(final_VA$Poverty.Estimate.All.Ages)*100)/as.numeric(final_VA$Poverty.Percent.All.Ages))

final_VA = transform(final_VA, Fatalities.Percent = (as.numeric(final_VA$Fatalities)*100)/as.numeric(final_VA$Population))

final_VA=rename.vars (final_VA, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_VA=rename.vars (final_VA, from="Fatalities.Percent", to="Fatalities Percent")

final_VA=rename.vars (final_VA, from="Fatalities", to="Fatalities Count")

final_VA=rename.vars (final_VA, from="Median.Household.Income", to="Median Income")

final_VA=rename.vars (final_VA, from="Poverty.Percent.All.Ages", to="Poverty Percent")


commute_VA=read.csv("Commute time/Commute_Time_Data.csv")

commute_VA=commute_VA[which(commute_VA$State=="VA"),]

commute_VA=rename.vars(data=commute_VA, from=c("State"), to=c("Postal"))

commute_VA$County = paste(commute_VA$County, "County")

commute_VA$County = toupper(commute_VA$County)

final_VA=merge(final_VA,commute_VA, by = c("Postal", "County"))

final_VA=rename.vars (final_VA, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_VA=subset(final_VA, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_VA,file="VA.csv")
