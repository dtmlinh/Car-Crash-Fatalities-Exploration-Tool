require(gdata)
require(sp)
require(maptools)
require(rgdal)

setwd("data")

data1=read.csv("Distance/Dist_Bridges.csv", header=TRUE)
data1=subset(data1, select=c("FID_1","STATE","COUNTY","CITY","LATITUDE","LONGITUD","FID_2","LONGDD","LATDD","Distance"))
data1=rename.vars(data1,from=c("FID_1","STATE","COUNTY","CITY","LATITUDE","LONGITUD","FID_2","LONGDD","LATDD","Distance"),
to=c("FID_1","STATE_acc","COUNTY_acc","CITY_acc","LAT_acc","LONG_acc","FID_br","LONG_br","LAT_br","DIST_br"))

data2=read.csv("Distance/Dist_Fuel.csv", header=TRUE)
data2=subset(data2, select=c("FID_1","FID_2","Longitude","Latitude_1","Distance"))
data2=rename.vars(data2,from=c("FID_1","FID_2","Latitude_1","Longitude","Distance"), to=c("FID_1","FID_fu","LAT_fu","LONG_fu","DIST_fu"))

data3=read.csv("Distance/Dist_Hosp.csv", header=TRUE)
data3=subset(data3, select=c("FID_1","FID_2","Longitude","Latitude_1","Distance"))
data3=rename.vars(data3,from=c("FID_1","FID_2","Longitude","Latitude_1","Distance"), to=c("FID_1","FID_ho","LONG_ho","LAT_ho","DIST_ho"))

data4=read.csv("Distance/Dist_Intersections.csv", header=TRUE)
data4=subset(data4, select=c("FID_1","OBJECTID","ICOUNT","Distance"))
data4=rename.vars(data4,from=c("FID_1","OBJECTID","ICOUNT","Distance"), to=c("FID_1","FID_in","ICOUNT_in","DIST_in"))

data5=read.csv("Distance/Dist_Lights.csv", header=TRUE)
data5=subset(data5, select=c("FID_1","OBJECTID","Longitude","Latitude_1","Distance"))
data5=rename.vars(data5,from=c("FID_1","OBJECTID","Longitude","Latitude_1","Distance"), to=c("FID_1","FID_li","LONG_li","LAT_li","DIST_li"))

data6=read.csv("Distance/Dist_Mall.csv", header=TRUE)
data6=subset(data6, select=c("FID_1","FID_2","Longitude","Latitude_1","Distance"))
data6=rename.vars(data6,from=c("FID_1","FID_2","Longitude","Latitude_1","Distance"), to=c("FID_1","FID_ma","LONG_ma","LAT_ma","DIST_ma"))

data7=read.csv("Distance/Dist_Marker.csv", header=TRUE)
data7=subset(data7, select=c("FID_1","FID_2","Longitude","Latitude_1","Distance"))
data7=rename.vars(data7,from=c("FID_1","FID_2","Longitude","Latitude_1","Distance"), to=c("FID_1","FID_hi","LONG_hi","LAT_hi","DIST_hi"))

data8=read.csv("Distance/Dist_School.csv", header=TRUE)
data8=subset(data8, select=c("FID_1","FID_2","Longitude","Latitude_1","Distance"))
data8=rename.vars(data8,from=c("FID_1","FID_2","Longitude","Latitude_1","Distance"), to=c("FID_1","FID_sc","LONG_sc","LAT_sc","DIST_sc"))

merge1=merge(data1,data2,by="FID_1")
merge2=merge(data3,data4,by="FID_1")
merge3=merge(data5,data6,by="FID_1")
merge4=merge(data7,data8,by="FID_1")
dta1=merge(merge1,merge2,by="FID_1")
dta2=merge(merge3,merge4,by="FID_1")
data=merge(dta1,dta2,by="FID_1")

write.csv(data,file="Distance/Merged.csv")



data=read.csv("Distance/Merged.csv")
data$COUNTY_acc=sprintf("%03d", data$COUNTY_acc)
data$FIPS.C.5=paste(data$STATE_acc,data$COUNTY_acc, sep="")
data$FIPS.C.5=as.numeric(data$FIPS.C.5)

county=read.csv("Distance/county.csv")
county=subset(county, select=c("NAME.C.32","FIPS.C.5","STATE_NAME.C.35"))

data=merge(data, county, by="FIPS.C.5")
data=rename.vars(data, from=c("STATE_NAME.C.35","NAME.C.32"), to=c("State","County"))
data$County = paste(data$County, "County")
data=data[which(data$LONG_acc <200),]
data=subset(data, select=c("FIPS.C.5",  "FID_1"   ,   "STATE_acc" , "COUNTY_acc" , "CITY_acc"  ,
                           "LAT_acc"  ,  "LONG_acc" ,  "FID_br"  ,   "LONG_br"  ,  "LAT_br"   ,  "DIST_br" ,   "FID_fu"   ,  "LONG_fu"  , 
                           "LAT_fu"  ,   "DIST_fu"  ,  "FID_ho" ,    "LONG_ho"  ,  "LAT_ho"   ,  "DIST_ho" ,   "FID_in"  ,   "ICOUNT_in" ,
                           "DIST_in"  ,  "FID_li"  ,   "LONG_li"  ,  "LAT_li"  ,   "DIST_li"  ,  "FID_ma"  ,   "LONG_ma"  ,  "LAT_ma"  ,  
                           "DIST_ma"  ,  "FID_hi"   ,  "LONG_hi"  ,  "LAT_hi"   ,  "DIST_hi"  ,  "FID_sc"  ,   "LONG_sc"  ,  "LAT_sc" ,   
                           "DIST_sc"  ,  "County"  ,   "State"))

write.csv(data, file="Distance/Merged_County.csv")



data=read.csv("Distance/Merged_County.csv")
data=aggregate(.~County+State, data=data,  FUN="mean")
data=subset(data, select=c("County","State","DIST_br","DIST_fu","DIST_ho","DIST_in","DIST_li","DIST_ma","DIST_hi","DIST_sc"))

write.csv(data, file="Distance.csv")
