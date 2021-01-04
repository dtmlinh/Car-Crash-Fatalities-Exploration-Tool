require(gdata)

setwd("data")

est03_WV = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_WV = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_WV = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_WV = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_WV = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_WV = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_WV = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_WV = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_WV = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_WV=subset(est03_WV, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_WV=est03_WV[which(est03_WV$Postal == "WV"),]

est03_WV = est03_WV[which(est03_WV$Name != "West Virginia"),]

est03_WV=subset(est03_WV,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_WV$Year=2003

est04_WV=subset(est04_WV, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_WV=est04_WV[which(est04_WV$Postal == "WV"),]

est04_WV = est04_WV[which(est04_WV$Name != "West Virginia"),]

est04_WV=subset(est04_WV,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_WV$Year=2004

est05_WV=subset(est05_WV, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_WV=est05_WV[which(est05_WV$Postal == "WV"),]

est05_WV = est05_WV[which(est05_WV$Name != "West Virginia"),]

est05_WV=subset(est05_WV,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_WV$Year=2005

est06_WV=subset(est06_WV, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_WV=est06_WV[which(est06_WV$Postal == "WV"),]

est06_WV = est06_WV[which(est06_WV$Name != "West Virginia"),]

est06_WV=subset(est06_WV,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_WV$Year=2006

est07_WV=subset(est07_WV, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_WV=est07_WV[which(est07_WV$Postal == "WV"),]

est07_WV = est07_WV[which(est07_WV$Name != "West Virginia"),]

est07_WV=subset(est07_WV,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_WV$Year=2007

est08_WV=subset(est08_WV, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_WV=est08_WV[which(est08_WV$Postal == "WV"),]

est08_WV = est08_WV[which(est08_WV$Name != "West Virginia"),]

est08_WV=subset(est08_WV,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_WV$Year=2008

est09_WV=subset(est09_WV, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_WV=est09_WV[which(est09_WV$Postal == "WV"),]

est09_WV = est09_WV[which(est09_WV$Name != "West Virginia"),]

est09_WV=subset(est09_WV,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_WV$Year=2009

est10_WV=subset(est10_WV, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_WV=est10_WV[which(est10_WV$Postal == "WV"),]

est10_WV = est10_WV[which(est10_WV$Name != "West Virginia"),]

est10_WV=subset(est10_WV,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_WV$Year=2010

est11_WV=subset(est11_WV, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_WV=est11_WV[which(est11_WV$Postal == "WV"),]

est11_WV = est11_WV[which(est11_WV$Name != "West Virginia"),]

est11_WV=subset(est11_WV,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_WV$Year=2011



est_WV=rbind(est06_WV,est07_WV,est08_WV,est09_WV, est03_WV,est04_WV,est05_WV,est10_WV,est11_WV)

est_WV = est_WV[order(est_WV$Year),]

est_WV=rename.vars(data=est_WV, from=c("Name"), to=c("County"))

est_WV$County = toupper(est_WV$County)



fata03_WV=read.xls("Fatalities/2003_2004_By_County/West Virginia.xls", header=TRUE)

fata04_WV=read.xls("Fatalities/2003_2004_By_County/West Virginia.xls", header=TRUE)

fata05_WV=read.xls("Fatalities/2005_2006_By_County/West Virginia.xls", header=TRUE)

fata06_WV=read.xls("Fatalities/2005_2006_By_County/West Virginia.xls", header=TRUE)

fata07_WV=read.xls("Fatalities/2006_2007_By_County/West_Virginia_06_07.xls", header=TRUE)

fata08_WV=read.xls("Fatalities/2008_2009_By_County/West_Virginia_08_09.xls", header=TRUE)

fata09_WV=read.xls("Fatalities/2008_2009_By_County/West_Virginia_08_09.xls", header=TRUE)

fata10_WV=read.xls("Fatalities/2010_2011_By_County/West_Virginia_10_11.xls", header=TRUE)

fata11_WV=read.xls("Fatalities/2010_2011_By_County/West_Virginia_10_11.xls", header=TRUE)

fata03_WV=subset(fata03_WV, select=c("County", "X2003"))

fata03_WV=rename.vars(data=fata03_WV, from=c("X2003"), to=c("Fatalities"))

fata03_WV$Year=2003

fata04_WV=subset(fata04_WV, select=c("County", "X2004"))

fata04_WV=rename.vars(data=fata04_WV, from=c("X2004"), to=c("Fatalities"))

fata04_WV$Year=2004

fata05_WV=subset(fata05_WV, select=c("County", "X2005"))

fata05_WV=rename.vars(data=fata05_WV, from=c("X2005"), to=c("Fatalities"))

fata05_WV$Year=2005

fata06_WV=subset(fata06_WV, select=c("County", "X2006"))

fata06_WV=rename.vars(data=fata06_WV, from=c("X2006"), to=c("Fatalities"))

fata06_WV$Year=2006

fata07_WV=subset(fata07_WV, select=c("County", "X2007"))

fata07_WV=rename.vars(data=fata07_WV, from=c("X2007"), to=c("Fatalities"))

fata07_WV$Year=2007

fata08_WV=subset(fata08_WV, select=c("County", "X2008"))

fata08_WV=rename.vars(data=fata08_WV, from=c("X2008"), to=c("Fatalities"))

fata08_WV$Year=2008

fata09_WV=subset(fata09_WV, select=c("County", "X2009"))

fata09_WV=rename.vars(data=fata09_WV, from=c("X2009"), to=c("Fatalities"))

fata09_WV$Year=2009

fata10_WV=subset(fata10_WV, select=c("County", "X2010"))

fata10_WV=rename.vars(data=fata10_WV, from=c("X2010"), to=c("Fatalities"))

fata10_WV$Year=2010

fata11_WV=subset(fata11_WV, select=c("County", "X2011"))

fata11_WV=rename.vars(data=fata11_WV, from=c("X2011"), to=c("Fatalities"))

fata11_WV$Year=2011





fata_WV=rbind(fata03_WV,fata04_WV,fata05_WV,fata06_WV,fata07_WV,fata08_WV,fata09_WV,fata10_WV,fata11_WV)

fata_WV=subset(fata_WV, County!="NOT APPLICABLE (000)")

fata_WV=subset(fata_WV, County!="OTHER (997)")

fata_WV=subset(fata_WV, County!="UNKNOWN (999)")

fata_WV=subset(fata_WV, County!="Total")

fata_WV = subset(fata_WV, County != "Not Reported")



fata_WV$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_WV$County)

fata_WV$County = paste(fata_WV$County, "County")

fata_WV$County = toupper(fata_WV$County)



fata_WV=subset(fata_WV, Fatalities!="NA")

final_WV = merge(est_WV, fata_WV, by = c("County", "Year"))

final_WV = transform(final_WV, Population = (as.numeric(final_WV$Poverty.Estimate.All.Ages)*100)/as.numeric(final_WV$Poverty.Percent.All.Ages))

final_WV = transform(final_WV, Fatalities.Percent = (as.numeric(final_WV$Fatalities)*100)/as.numeric(final_WV$Population))

final_WV=rename.vars (final_WV, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_WV=rename.vars (final_WV, from="Fatalities.Percent", to="Fatalities Percent")

final_WV=rename.vars (final_WV, from="Fatalities", to="Fatalities Count")

final_WV=rename.vars (final_WV, from="Median.Household.Income", to="Median Income")

final_WV=rename.vars (final_WV, from="Poverty.Percent.All.Ages", to="Poverty Percent")


commute_WV=read.csv("Commute time/Commute_Time_Data.csv")

commute_WV=commute_WV[which(commute_WV$State=="WV"),]

commute_WV=rename.vars(data=commute_WV, from=c("State"), to=c("Postal"))

commute_WV$County = paste(commute_WV$County, "County")

commute_WV$County = toupper(commute_WV$County)

final_WV=merge(final_WV,commute_WV, by = c("Postal", "County"))

final_WV=rename.vars (final_WV, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_WV=subset(final_WV, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_WV,file="WV.csv")
