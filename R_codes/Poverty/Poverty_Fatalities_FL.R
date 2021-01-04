require(gdata)

setwd("data")

est03_FL = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_FL = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_FL = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_FL = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_FL = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_FL = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_FL = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_FL = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_FL = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_FL=subset(est03_FL, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_FL=est03_FL[which(est03_FL$Postal == "FL"),]

est03_FL = est03_FL[which(est03_FL$Name != "Florida"),]

est03_FL=subset(est03_FL,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_FL$Year=2003

est04_FL=subset(est04_FL, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_FL=est04_FL[which(est04_FL$Postal == "FL"),]

est04_FL = est04_FL[which(est04_FL$Name != "Florida"),]

est04_FL=subset(est04_FL,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_FL$Year=2004

est05_FL=subset(est05_FL, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_FL=est05_FL[which(est05_FL$Postal == "FL"),]

est05_FL = est05_FL[which(est05_FL$Name != "Florida"),]

est05_FL=subset(est05_FL,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_FL$Year=2005

est06_FL=subset(est06_FL, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_FL=est06_FL[which(est06_FL$Postal == "FL"),]

est06_FL = est06_FL[which(est06_FL$Name != "Florida"),]

est06_FL=subset(est06_FL,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_FL$Year=2006

est07_FL=subset(est07_FL, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_FL=est07_FL[which(est07_FL$Postal == "FL"),]

est07_FL = est07_FL[which(est07_FL$Name != "Florida"),]

est07_FL=subset(est07_FL,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_FL$Year=2007

est08_FL=subset(est08_FL, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_FL=est08_FL[which(est08_FL$Postal == "FL"),]

est08_FL = est08_FL[which(est08_FL$Name != "Florida"),]

est08_FL=subset(est08_FL,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_FL$Year=2008

est09_FL=subset(est09_FL, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_FL=est09_FL[which(est09_FL$Postal == "FL"),]

est09_FL = est09_FL[which(est09_FL$Name != "Florida"),]

est09_FL=subset(est09_FL,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_FL$Year=2009

est10_FL=subset(est10_FL, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_FL=est10_FL[which(est10_FL$Postal == "FL"),]

est10_FL = est10_FL[which(est10_FL$Name != "Florida"),]

est10_FL=subset(est10_FL,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_FL$Year=2010

est11_FL=subset(est11_FL, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_FL=est11_FL[which(est11_FL$Postal == "FL"),]

est11_FL = est11_FL[which(est11_FL$Name != "Florida"),]

est11_FL=subset(est11_FL,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_FL$Year=2011



est_FL=rbind(est06_FL,est07_FL,est08_FL,est09_FL, est03_FL,est04_FL,est05_FL,est10_FL,est11_FL)

est_FL = est_FL[order(est_FL$Year),]

est_FL=rename.vars(data=est_FL, from=c("Name"), to=c("County"))

est_FL$County = toupper(est_FL$County)



fata03_FL=read.xls("Fatalities/2003_2004_By_County/florida.xls", header=TRUE)

fata04_FL=read.xls("Fatalities/2003_2004_By_County/florida.xls", header=TRUE)

fata05_FL=read.xls("Fatalities/2005_2006_By_County/florida.xls", header=TRUE)

fata06_FL=read.xls("Fatalities/2005_2006_By_County/florida.xls", header=TRUE)

fata07_FL=read.xls("Fatalities/2006_2007_By_County/Florida_06_07.xls", header=TRUE)

fata08_FL=read.xls("Fatalities/2008_2009_By_County/Florida_08_09.xls", header=TRUE)

fata09_FL=read.xls("Fatalities/2008_2009_By_County/Florida_08_09.xls", header=TRUE)

fata10_FL=read.xls("Fatalities/2010_2011_By_County/Florida_10_11.xls", header=TRUE)

fata11_FL=read.xls("Fatalities/2010_2011_By_County/Florida_10_11.xls", header=TRUE)

fata03_FL=subset(fata03_FL, select=c("County", "X2003"))

fata03_FL=rename.vars(data=fata03_FL, from=c("X2003"), to=c("Fatalities"))

fata03_FL$Year=2003

fata04_FL=subset(fata04_FL, select=c("County", "X2004"))

fata04_FL=rename.vars(data=fata04_FL, from=c("X2004"), to=c("Fatalities"))

fata04_FL$Year=2004

fata05_FL=subset(fata05_FL, select=c("County", "X2005"))

fata05_FL=rename.vars(data=fata05_FL, from=c("X2005"), to=c("Fatalities"))

fata05_FL$Year=2005

fata06_FL=subset(fata06_FL, select=c("County", "X2006"))

fata06_FL=rename.vars(data=fata06_FL, from=c("X2006"), to=c("Fatalities"))

fata06_FL$Year=2006

fata07_FL=subset(fata07_FL, select=c("County", "X2007"))

fata07_FL=rename.vars(data=fata07_FL, from=c("X2007"), to=c("Fatalities"))

fata07_FL$Year=2007

fata08_FL=subset(fata08_FL, select=c("County", "X2008"))

fata08_FL=rename.vars(data=fata08_FL, from=c("X2008"), to=c("Fatalities"))

fata08_FL$Year=2008

fata09_FL=subset(fata09_FL, select=c("County", "X2009"))

fata09_FL=rename.vars(data=fata09_FL, from=c("X2009"), to=c("Fatalities"))

fata09_FL$Year=2009

fata10_FL=subset(fata10_FL, select=c("County", "X2010"))

fata10_FL=rename.vars(data=fata10_FL, from=c("X2010"), to=c("Fatalities"))

fata10_FL$Year=2010

fata11_FL=subset(fata11_FL, select=c("County", "X2011"))

fata11_FL=rename.vars(data=fata11_FL, from=c("X2011"), to=c("Fatalities"))

fata11_FL$Year=2011





fata_FL=rbind(fata03_FL,fata04_FL,fata05_FL,fata06_FL,fata07_FL,fata08_FL,fata09_FL,fata10_FL,fata11_FL)

fata_FL=subset(fata_FL, County!="NOT APPLICABLE (000)")

fata_FL=subset(fata_FL, County!="OTHER (997)")

fata_FL=subset(fata_FL, County!="UNKNOWN (999)")

fata_FL=subset(fata_FL, County!="Total")

fata_FL = subset(fata_FL, County != "Not Reported")



fata_FL$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_FL$County)

fata_FL$County = paste(fata_FL$County, "County")

fata_FL$County = toupper(fata_FL$County)



fata_FL=subset(fata_FL, Fatalities!="NA")

final_FL = merge(est_FL, fata_FL, by = c("County", "Year"))

final_FL = transform(final_FL, Population = (as.numeric(final_FL$Poverty.Estimate.All.Ages)*100)/as.numeric(final_FL$Poverty.Percent.All.Ages))

final_FL = transform(final_FL, Fatalities.Percent = (as.numeric(final_FL$Fatalities)*100)/as.numeric(final_FL$Population))

final_FL=rename.vars (final_FL, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_FL=rename.vars (final_FL, from="Fatalities.Percent", to="Fatalities Percent")

final_FL=rename.vars (final_FL, from="Fatalities", to="Fatalities Count")

final_FL=rename.vars (final_FL, from="Median.Household.Income", to="Median Income")

final_FL=rename.vars (final_FL, from="Poverty.Percent.All.Ages", to="Poverty Percent")


commute_FL=read.csv("Commute time/Commute_Time_Data.csv")

commute_FL=commute_FL[which(commute_FL$State=="FL"),]

commute_FL=rename.vars(data=commute_FL, from=c("State"), to=c("Postal"))

commute_FL$County = paste(commute_FL$County, "County")

commute_FL$County = toupper(commute_FL$County)

final_FL=merge(final_FL,commute_FL, by = c("Postal", "County"))

final_FL=rename.vars (final_FL, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_FL=subset(final_FL, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_FL,file="FL.csv")
