require(gdata)

setwd("data")

est03_OR = read.xls("Poverty rate/est03ALL.xls", header=TRUE)

est04_OR = read.xls("Poverty rate/est04ALL.xls", header=TRUE)

est05_OR = read.xls("Poverty rate/est05ALL.xls", header=TRUE)

est06_OR = read.xls("Poverty rate/est06ALL.xls", header=TRUE)

est07_OR = read.xls("Poverty rate/est07ALL.xls", header=TRUE)

est08_OR = read.xls("Poverty rate/est08ALL.xls", header=TRUE)

est09_OR = read.xls("Poverty rate/est09ALL.xls", header=TRUE)

est10_OR = read.xls("Poverty rate/est10ALL.xls", header=TRUE)

est11_OR = read.xls("Poverty rate/est11ALL.xls", header=TRUE)

est03_OR=subset(est03_OR, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est03_OR=est03_OR[which(est03_OR$Postal == "OR"),]

est03_OR = est03_OR[which(est03_OR$Name != "Oregon"),]

est03_OR=subset(est03_OR,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est03_OR$Year=2003

est04_OR=subset(est04_OR, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

"Postal"))

est04_OR=est04_OR[which(est04_OR$Postal == "OR"),]

est04_OR = est04_OR[which(est04_OR$Name != "Oregon"),]

est04_OR=subset(est04_OR,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est04_OR$Year=2004

est05_OR=subset(est05_OR, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est05_OR=est05_OR[which(est05_OR$Postal == "OR"),]

est05_OR = est05_OR[which(est05_OR$Name != "Oregon"),]

est05_OR=subset(est05_OR,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est05_OR$Year=2005

est06_OR=subset(est06_OR, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est06_OR=est06_OR[which(est06_OR$Postal == "OR"),]

est06_OR = est06_OR[which(est06_OR$Name != "Oregon"),]

est06_OR=subset(est06_OR,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est06_OR$Year=2006

est07_OR=subset(est07_OR, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est07_OR=est07_OR[which(est07_OR$Postal == "OR"),]

est07_OR = est07_OR[which(est07_OR$Name != "Oregon"),]

est07_OR=subset(est07_OR,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est07_OR$Year=2007

est08_OR=subset(est08_OR, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est08_OR=est08_OR[which(est08_OR$Postal == "OR"),]

est08_OR = est08_OR[which(est08_OR$Name != "Oregon"),]

est08_OR=subset(est08_OR,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est08_OR$Year=2008

est09_OR=subset(est09_OR, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est09_OR=est09_OR[which(est09_OR$Postal == "OR"),]

est09_OR = est09_OR[which(est09_OR$Name != "Oregon"),]

est09_OR=subset(est09_OR,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est09_OR$Year=2009

est10_OR=subset(est10_OR, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est10_OR=est10_OR[which(est10_OR$Postal == "OR"),]

est10_OR = est10_OR[which(est10_OR$Name != "Oregon"),]

est10_OR=subset(est10_OR,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est10_OR$Year=2010

est11_OR=subset(est11_OR, select=c("Name", "Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income","Postal"))

est11_OR=est11_OR[which(est11_OR$Postal == "OR"),]

est11_OR = est11_OR[which(est11_OR$Name != "Oregon"),]

est11_OR=subset(est11_OR,select=c("Name","Poverty.Estimate.All.Ages", "Poverty.Percent.All.Ages", "Median.Household.Income", "Postal"))

est11_OR$Year=2011



est_OR=rbind(est06_OR,est07_OR,est08_OR,est09_OR, est03_OR,est04_OR,est05_OR,est10_OR,est11_OR)

est_OR = est_OR[order(est_OR$Year),]

est_OR=rename.vars(data=est_OR, from=c("Name"), to=c("County"))

est_OR$County = toupper(est_OR$County)



fata03_OR=read.xls("Fatalities/2003_2004_By_County/oregon.xls", header=TRUE)

fata04_OR=read.xls("Fatalities/2003_2004_By_County/oregon.xls", header=TRUE)

fata05_OR=read.xls("Fatalities/2005_2006_By_County/oregon.xls", header=TRUE)

fata06_OR=read.xls("Fatalities/2005_2006_By_County/oregon.xls", header=TRUE)

fata07_OR=read.xls("Fatalities/2006_2007_By_County/Oregon_06_07.xls", header=TRUE)

fata08_OR=read.xls("Fatalities/2008_2009_By_County/Oregon_08_09.xls", header=TRUE)

fata09_OR=read.xls("Fatalities/2008_2009_By_County/Oregon_08_09.xls", header=TRUE)

fata10_OR=read.xls("Fatalities/2010_2011_By_County/Oregon_10_11.xls", header=TRUE)

fata11_OR=read.xls("Fatalities/2010_2011_By_County/Oregon_10_11.xls", header=TRUE)

fata03_OR=subset(fata03_OR, select=c("County", "X2003"))

fata03_OR=rename.vars(data=fata03_OR, from=c("X2003"), to=c("Fatalities"))

fata03_OR$Year=2003

fata04_OR=subset(fata04_OR, select=c("County", "X2004"))

fata04_OR=rename.vars(data=fata04_OR, from=c("X2004"), to=c("Fatalities"))

fata04_OR$Year=2004

fata05_OR=subset(fata05_OR, select=c("County", "X2005"))

fata05_OR=rename.vars(data=fata05_OR, from=c("X2005"), to=c("Fatalities"))

fata05_OR$Year=2005

fata06_OR=subset(fata06_OR, select=c("County", "X2006"))

fata06_OR=rename.vars(data=fata06_OR, from=c("X2006"), to=c("Fatalities"))

fata06_OR$Year=2006

fata07_OR=subset(fata07_OR, select=c("County", "X2007"))

fata07_OR=rename.vars(data=fata07_OR, from=c("X2007"), to=c("Fatalities"))

fata07_OR$Year=2007

fata08_OR=subset(fata08_OR, select=c("County", "X2008"))

fata08_OR=rename.vars(data=fata08_OR, from=c("X2008"), to=c("Fatalities"))

fata08_OR$Year=2008

fata09_OR=subset(fata09_OR, select=c("County", "X2009"))

fata09_OR=rename.vars(data=fata09_OR, from=c("X2009"), to=c("Fatalities"))

fata09_OR$Year=2009

fata10_OR=subset(fata10_OR, select=c("County", "X2010"))

fata10_OR=rename.vars(data=fata10_OR, from=c("X2010"), to=c("Fatalities"))

fata10_OR$Year=2010

fata11_OR=subset(fata11_OR, select=c("County", "X2011"))

fata11_OR=rename.vars(data=fata11_OR, from=c("X2011"), to=c("Fatalities"))

fata11_OR$Year=2011





fata_OR=rbind(fata03_OR,fata04_OR,fata05_OR,fata06_OR,fata07_OR,fata08_OR,fata09_OR,fata10_OR,fata11_OR)

fata_OR=subset(fata_OR, County!="NOT APPLICABLE (000)")

fata_OR=subset(fata_OR, County!="OTHER (997)")

fata_OR=subset(fata_OR, County!="UNKNOWN (999)")

fata_OR=subset(fata_OR, County!="Total")

fata_OR = subset(fata_OR, County != "Not Reported")



fata_OR$County = gsub(" \\(*([0-9]||[0-9][0-9]||[0-9][0-9][0-9])\\)", "", fata_OR$County)

fata_OR$County = paste(fata_OR$County, "County")

fata_OR$County = toupper(fata_OR$County)



fata_OR=subset(fata_OR, Fatalities!="NA")

final_OR = merge(est_OR, fata_OR, by = c("County", "Year"))

final_OR = transform(final_OR, Population = (as.numeric(final_OR$Poverty.Estimate.All.Ages)*100)/as.numeric(final_OR$Poverty.Percent.All.Ages))

final_OR = transform(final_OR, Fatalities.Percent = (as.numeric(final_OR$Fatalities)*100)/as.numeric(final_OR$Population))

final_OR=rename.vars (final_OR, from="Poverty.Estimate.All.Ages", to="Poverty Count")

final_OR=rename.vars (final_OR, from="Fatalities.Percent", to="Fatalities Percent")

final_OR=rename.vars (final_OR, from="Fatalities", to="Fatalities Count")

final_OR=rename.vars (final_OR, from="Median.Household.Income", to="Median Income")

final_OR=rename.vars (final_OR, from="Poverty.Percent.All.Ages", to="Poverty Percent")


commute_OR=read.csv("Commute time/Commute_Time_Data.csv")

commute_OR=commute_OR[which(commute_OR$State=="OR"),]

commute_OR=rename.vars(data=commute_OR, from=c("State"), to=c("Postal"))

commute_OR$County = paste(commute_OR$County, "County")

commute_OR$County = toupper(commute_OR$County)

final_OR=merge(final_OR,commute_OR, by = c("Postal", "County"))

final_OR=rename.vars (final_OR, from=c("Postal", "Avg.Commute"), to=c("State","Commute"))

final_OR=subset(final_OR, select=c("County","Year","Poverty Count","Poverty Percent", "Median Income", "Population", "Fatalities Count", "Fatalities Percent","Commute"))

write.csv(final_OR,file="OR.csv")
