library(shiny)
library(gridExtra)
library(ggplot2)
#library(kobe)
library(ggmap)
library(png)
library(grid)
library(RCurl)
library(plyr)
library(googleVis)

setwd("~/Documents/Dropbox/Data Science_Project/")

USA=read.csv("shinyapp/data/USA.csv")
AK=read.csv("shinyapp/data/AK.csv")
AL=read.csv("shinyapp/data/AL.csv")
AR=read.csv("shinyapp/data/AR.csv")
AZ=read.csv("shinyapp/data/AZ.csv")
CA=read.csv("shinyapp/data/CA.csv")
CO=read.csv("shinyapp/data/CO.csv")
CT=read.csv("shinyapp/data/CT.csv")
#DC=read.csv("shinyapp/data/DC.csv")
DE=read.csv("shinyapp/data/DE.csv")
FL=read.csv("shinyapp/data/FL.csv")
GA=read.csv("shinyapp/data/GA.csv")
HI=read.csv("shinyapp/data/HI.csv")
ID=read.csv("shinyapp/data/ID.csv")
IL=read.csv("shinyapp/data/IL.csv")
IN=read.csv("shinyapp/data/IN.csv")
IA=read.csv("shinyapp/data/IA.csv")
KS=read.csv("shinyapp/data/KS.csv")
KY=read.csv("shinyapp/data/KY.csv")
LA=read.csv("shinyapp/data/LA.csv")
ME=read.csv("shinyapp/data/ME.csv")
MD=read.csv("shinyapp/data/MD.csv")
MA=read.csv("shinyapp/data/MA.csv")
MI=read.csv("shinyapp/data/MI.csv")
MN=read.csv("shinyapp/data/MN.csv")
MS=read.csv("shinyapp/data/MS.csv")
MO=read.csv("shinyapp/data/MO.csv")
MT=read.csv("shinyapp/data/MT.csv")
NE=read.csv("shinyapp/data/NE.csv")
NV=read.csv("shinyapp/data/NV.csv")
NH=read.csv("shinyapp/data/NH.csv")
NJ=read.csv("shinyapp/data/NJ.csv")
NM=read.csv("shinyapp/data/NM.csv")
NY=read.csv("shinyapp/data/NY.csv")
NC=read.csv("shinyapp/data/NC.csv")
ND=read.csv("shinyapp/data/ND.csv")
OH=read.csv("shinyapp/data/OH.csv")
OK=read.csv("shinyapp/data/OK.csv")
OR=read.csv("shinyapp/data/OR.csv")
PA=read.csv("shinyapp/data/PA.csv")
RI=read.csv("shinyapp/data/RI.csv")
SC=read.csv("shinyapp/data/SC.csv")
SD=read.csv("shinyapp/data/SD.csv")
TN=read.csv("shinyapp/data/TN.csv")
TX=read.csv("shinyapp/data/TX.csv")
UT=read.csv("shinyapp/data/UT.csv")
VT=read.csv("shinyapp/data/VT.csv")
VA=read.csv("shinyapp/data/VA.csv")
WA=read.csv("shinyapp/data/WA.csv")
WV=read.csv("shinyapp/data/WV.csv")
WI=read.csv("shinyapp/data/WI.csv")
WY=read.csv("shinyapp/data/WY.csv")



USA_corr=read.csv("shinyapp/data/Corr_USA.csv")
AK_corr=read.csv("shinyapp/data/Corr_AK.csv")
AL_corr=read.csv("shinyapp/data/Corr_AL.csv")
AR_corr=read.csv("shinyapp/data/Corr_AR.csv")
AZ_corr=read.csv("shinyapp/data/Corr_AZ.csv")
CA_corr=read.csv("shinyapp/data/Corr_CA.csv")
CO_corr=read.csv("shinyapp/data/Corr_CO.csv")
CT_corr=read.csv("shinyapp/data/Corr_CT.csv")
#DC_corr=read.csv("shinyapp/data/Corr_DC.csv")
DE_corr=read.csv("shinyapp/data/Corr_DE.csv")
FL_corr=read.csv("shinyapp/data/Corr_FL.csv")
GA_corr=read.csv("shinyapp/data/Corr_GA.csv")
HI_corr=read.csv("shinyapp/data/Corr_HI.csv")
ID_corr=read.csv("shinyapp/data/Corr_ID.csv")
IL_corr=read.csv("shinyapp/data/Corr_IL.csv")
IN_corr=read.csv("shinyapp/data/Corr_IN.csv")
IA_corr=read.csv("shinyapp/data/Corr_IA.csv")
KS_corr=read.csv("shinyapp/data/Corr_KS.csv")
KY_corr=read.csv("shinyapp/data/Corr_KY.csv")
LA_corr=read.csv("shinyapp/data/Corr_LA.csv")
ME_corr=read.csv("shinyapp/data/Corr_ME.csv")
MD_corr=read.csv("shinyapp/data/Corr_MD.csv")
MA_corr=read.csv("shinyapp/data/Corr_MA.csv")
MI_corr=read.csv("shinyapp/data/Corr_MI.csv")
MN_corr=read.csv("shinyapp/data/Corr_MN.csv")
MS_corr=read.csv("shinyapp/data/Corr_MS.csv")
MO_corr=read.csv("shinyapp/data/Corr_MO.csv")
MT_corr=read.csv("shinyapp/data/Corr_MT.csv")
NE_corr=read.csv("shinyapp/data/Corr_NE.csv")
NV_corr=read.csv("shinyapp/data/Corr_NV.csv")
NH_corr=read.csv("shinyapp/data/Corr_NH.csv")
NJ_corr=read.csv("shinyapp/data/Corr_NJ.csv")
NM_corr=read.csv("shinyapp/data/Corr_NM.csv")
NY_corr=read.csv("shinyapp/data/Corr_NY.csv")
NC_corr=read.csv("shinyapp/data/Corr_NC.csv")
ND_corr=read.csv("shinyapp/data/Corr_ND.csv")
OH_corr=read.csv("shinyapp/data/Corr_OH.csv")
OK_corr=read.csv("shinyapp/data/Corr_OK.csv")
OR_corr=read.csv("shinyapp/data/Corr_OR.csv")
PA_corr=read.csv("shinyapp/data/Corr_PA.csv")
RI_corr=read.csv("shinyapp/data/Corr_RI.csv")
SC_corr=read.csv("shinyapp/data/Corr_SC.csv")
SD_corr=read.csv("shinyapp/data/Corr_SD.csv")
TN_corr=read.csv("shinyapp/data/Corr_TN.csv")
TX_corr=read.csv("shinyapp/data/Corr_TX.csv")
UT_corr=read.csv("shinyapp/data/Corr_UT.csv")
VT_corr=read.csv("shinyapp/data/Corr_VT.csv")
VA_corr=read.csv("shinyapp/data/Corr_VA.csv")
WA_corr=read.csv("shinyapp/data/Corr_WA.csv")
WV_corr=read.csv("shinyapp/data/Corr_WV.csv")
WI_corr=read.csv("shinyapp/data/Corr_WI.csv")
WY_corr=read.csv("shinyapp/data/Corr_WY.csv")


dta=read.csv("shinyapp/data/acc_full.csv")
dta=subset(dta, select=c("LONGITUDE","LATITUDE"))
Schools=read.csv("shinyapp/data/Schools.csv")
Hospitals=read.csv("shinyapp/data/Hospitals.csv")
Fuels=read.csv("shinyapp/data/fuels.csv")
Historical=read.csv("shinyapp/data/Historical.csv")
Bridges=read.csv("shinyapp/data/bridges.csv")
Cameras=read.csv("shinyapp/data/Cameras.csv")

shinyServer(function(input, output) {
  datasetInput1 <- reactive({
    switch(input$dataset1,
           "USA" = USA,
           "AK" = AK,
           "AL" = AL,
           "AR" = AR,
           "AZ" = AZ,
           "CA" = CA,
           "CO" = CO,
           "CT" = CT,
           #"DC" = DC,
           "DE" = DE,
           "FL" = FL,
           "GA" = GA,
           "HI" = HI,
           "IA" = IA,
           "ID" = ID,
           "IL" = IL,
           "IN" = IN,
           "KS" = KS,
           "KY" = KY,
           "LA" = LA,
           "MA" = MA,
           "MD" = MD,
           "ME" = ME,
           "MI" = MI,
           "MN" = MN,
           "MS" = MS,
           "MO" = MO,
           "MT" = MT,
           "NC" = NC,
           "ND" = ND,
           "NE" = NE,
           "NH" = NH,
           "NJ" = NJ,
           "NM" = NM,
           "NV" = NV,
           "NY" = NY,
           "OH" = OH,
           "OK" = OK,
           "OR" = OR,
           "PA" = PA,
           "RI" = RI,
           "SC" = SC,
           "SD" = SD,
           "TN" = TN,
           "TX" = TX,
           "UT" = UT,
           "VA" = VA,
           "VT" = VT,
           "WA" = WA,
           "WI" = WI,
           "WV" = WV,
           "WY" = WY
    )
  })
  
  datasetInput2 <- reactive({
    switch(input$dataset2,
           "USA" = USA,
           "AK" = AK,
           "AL" = AL,
           "AR" = AR,
           "AZ" = AZ,
           "CA" = CA,
           "CO" = CO,
           "CT" = CT,
           #"DC" = DC,
           "DE" = DE,
           "FL" = FL,
           "GA" = GA,
           "HI" = HI,
           "IA" = IA,
           "ID" = ID,
           "IL" = IL,
           "IN" = IN,
           "KS" = KS,
           "KY" = KY,
           "LA" = LA,
           "MA" = MA,
           "MD" = MD,
           "ME" = ME,
           "MI" = MI,
           "MN" = MN,
           "MS" = MS,
           "MO" = MO,
           "MT" = MT,
           "NC" = NC,
           "ND" = ND,
           "NE" = NE,
           "NH" = NH,
           "NJ" = NJ,
           "NM" = NM,
           "NV" = NV,
           "NY" = NY,
           "OH" = OH,
           "OK" = OK,
           "OR" = OR,
           "PA" = PA,
           "RI" = RI,
           "SC" = SC,
           "SD" = SD,
           "TN" = TN,
           "TX" = TX,
           "UT" = UT,
           "VA" = VA,
           "VT" = VT,
           "WA" = WA,
           "WI" = WI,
           "WV" = WV,
           "WY" = WY
    )
  })
  
  datasetInput3 <- reactive({
    switch(input$dataset3,
           "USA" = USA_corr,
           "AK" = AK_corr,
           "AL" = AL_corr,
           "AR" = AR_corr,
           "AZ" = AZ_corr,
           "CA" = CA_corr,
           "CO" = CO_corr,
           "CT" = CT_corr,
           #"DC" = DC_corr,
           "DE" = DE_corr,
           "FL" = FL_corr,
           "GA" = GA_corr,
           "HI" = HI_corr,
           "IA" = IA_corr,
           "ID" = ID_corr,
           "IL" = IL_corr,
           "IN" = IN_corr,
           "KS" = KS_corr,
           "KY" = KY_corr,
           "LA" = LA_corr,
           "MA" = MA_corr,
           "MD" = MD_corr,
           "ME" = ME_corr,
           "MI" = MI_corr,
           "MN" = MN_corr,
           "MS" = MS_corr,
           "MO" = MO_corr,
           "MT" = MT_corr,
           "NC" = NC_corr,
           "ND" = ND_corr,
           "NE" = NE_corr,
           "NH" = NH_corr,
           "NJ" = NJ_corr,
           "NM" = NM_corr,
           "NV" = NV_corr,
           "NY" = NY_corr,
           "OH" = OH_corr,
           "OK" = OK_corr,
           "OR" = OR_corr,
           "PA" = PA_corr,
           "RI" = RI_corr,
           "SC" = SC_corr,
           "SD" = SD_corr,
           "TN" = TN_corr,
           "TX" = TX_corr,
           "UT" = UT_corr,
           "VA" = VA_corr,
           "VT" = VT_corr,
           "WA" = WA_corr,
           "WI" = WI_corr,
           "WV" = WV_corr,
           "WY" = WY_corr
    )
  })
  
  datasetInput4 <- reactive({
    switch(input$dataset4,
           "USA" = USA_corr,
           "AK" = AK_corr,
           "AL" = AL_corr,
           "AR" = AR_corr,
           "AZ" = AZ_corr,
           "CA" = CA_corr,
           "CO" = CO_corr,
           "CT" = CT_corr,
           #"DC" = DC_corr,
           "DE" = DE_corr,
           "FL" = FL_corr,
           "GA" = GA_corr,
           "HI" = HI_corr,
           "IA" = IA_corr,
           "ID" = ID_corr,
           "IL" = IL_corr,
           "IN" = IN_corr,
           "KS" = KS_corr,
           "KY" = KY_corr,
           "LA" = LA_corr,
           "MA" = MA_corr,
           "MD" = MD_corr,
           "ME" = ME_corr,
           "MI" = MI_corr,
           "MN" = MN_corr,
           "MS" = MS_corr,
           "MO" = MO_corr,
           "MT" = MT_corr,
           "NC" = NC_corr,
           "ND" = ND_corr,
           "NE" = NE_corr,
           "NH" = NH_corr,
           "NJ" = NJ_corr,
           "NM" = NM_corr,
           "NV" = NV_corr,
           "NY" = NY_corr,
           "OH" = OH_corr,
           "OK" = OK_corr,
           "OR" = OR_corr,
           "PA" = PA_corr,
           "RI" = RI_corr,
           "SC" = SC_corr,
           "SD" = SD_corr,
           "TN" = TN_corr,
           "TX" = TX_corr,
           "UT" = UT_corr,
           "VA" = VA_corr,
           "VT" = VT_corr,
           "WA" = WA_corr,
           "WI" = WI_corr,
           "WV" = WV_corr,
           "WY" = WY_corr
    )
  })
  
    datasetInput5 <- reactive({
      switch(input$dataset5,
             "Fatalities"=dta)
    })
    datasetInput6 <- reactive({
      switch(input$dataset6,
             "None"="None",
             "Schools"=Schools,
             "Hospitals"=Hospitals,
             "Fuel stations"=Fuels,
             "Historical sites"=Historical,
             "Bridges"=Bridges,
             "Cameras"=Cameras
      )
    })
  
    datasetInput7 <- reactive({
      switch(input$dataset7,
             "None"="None",
             "Schools"=Schools,
             "Hospitals"=Hospitals,
             "Fuel stations"=Fuels,
             "Historical sites"=Historical,
             "Bridges"=Bridges,
             "Cameras"=Cameras
      )
    })
    
    map.geocode <- reactive({
      suppressMessages(data.frame(geocode = geocode(input$poi)))
      
    })
    

  output$view1 <- renderGvis({gvisMerge
                              gvisMerge(gvisMotionChart(datasetInput1(), colorvar="Commute", idvar="County", timevar="Year", xvar="Poverty.Percent", yvar="Fatalities.Percent", sizevar="Population", options=list(width=450, height=380)),
                                        gvisMotionChart(datasetInput2(), colorvar="Commute", idvar="County", timevar="Year", xvar="Poverty.Percent", yvar="Fatalities.Percent", sizevar="Population", options=list(width=450, height=380)), horizontal=TRUE)
                              
  })
  
  output$view2 <- renderPlot({
    df3 <- data.frame(datasetInput3())
    grid.arrange(
      
      ggplot(data=df3, aes(x = DIST_br, y = Fatalities.Percent)) + 
        geom_point() + 
        geom_smooth(method = lm)+ xlab("Bridge") + ylab("Fatalities") +
        scale_x_continuous(limits = c(0, 2000))+
        scale_y_continuous(limits = c(0, 0.075)),
      
      ggplot(data=df3, aes(x = DIST_fu, y = Fatalities.Percent)) + 
        geom_point() + 
        geom_smooth(method = lm)+ xlab("Fuel station") + ylab("Fatalities")+
        scale_x_continuous(limits = c(0, 26000))+
        scale_y_continuous(limits = c(0, 0.075)),
      
      ggplot(data=df3, aes(x = DIST_ho, y = Fatalities.Percent)) + 
        geom_point() + 
        geom_smooth(method = lm)+ xlab("Hospital") + ylab("Fatalities")+
        scale_x_continuous(limits = c(0, 25000))+
        scale_y_continuous(limits = c(0, 0.075)),
      
      ggplot(data=df3, aes(x = DIST_in, y = Fatalities.Percent)) + 
        geom_point() + 
        geom_smooth(method = lm)+ xlab("Intersection") + ylab("Percent")+
        scale_x_continuous(limits = c(0, 8000))+
        scale_y_continuous(limits = c(0, 0.075)),
      
      ggplot(data=df3, aes(x = DIST_li, y = Fatalities.Percent)) + 
        geom_point() + 
        geom_smooth(method = lm)+ xlab("Inspection camera") + ylab("Fatalities")+
        scale_x_continuous(limits = c(0, 200000))+
        scale_y_continuous(limits = c(0, 0.075)),
      
      ggplot(data=df3, aes(x = DIST_ma, y = Fatalities.Percent)) + 
        geom_point() + 
        geom_smooth(method = lm)+ xlab("Mall") + ylab("Percent")+
        scale_x_continuous(limits = c(0, 160000))+
        scale_y_continuous(limits = c(0, 0.075)),
      
      ggplot(data=df3, aes(x = DIST_hi, y = Fatalities.Percent)) + 
        geom_point() + 
        geom_smooth(method = lm)+ xlab("Historical site") + ylab("Fatalities")+
        scale_x_continuous(limits = c(0, 130000))+
        scale_y_continuous(limits = c(0, 0.075)),
      
      ggplot(data=df3, aes(x = DIST_sc, y = Fatalities.Percent)) + 
        geom_point() + 
        geom_smooth(method = lm)+ xlab("School") + ylab("Fatalities")+
        scale_x_continuous(limits = c(0, 6000))+
        scale_y_continuous(limits = c(0, 0.075)), ncol=2
    )
  })
  
  output$view3 <- renderPlot({
      df4 <- data.frame(datasetInput4())
      grid.arrange(
        
        ggplot(data=df4, aes(x = DIST_br, y = Fatalities.Percent)) + 
          geom_point() + 
          geom_smooth(method = lm)+ xlab("Bridge") + ylab("Fatalities") +
          scale_x_continuous(limits = c(0, 2000))+
          scale_y_continuous(limits = c(0, 0.075)),
        
        ggplot(data=df4, aes(x = DIST_fu, y = Fatalities.Percent)) + 
          geom_point() + 
          geom_smooth(method = lm)+ xlab("Fuel station") + ylab("Fatalities")+
          scale_x_continuous(limits = c(0, 26000))+
          scale_y_continuous(limits = c(0, 0.075)),
        
        ggplot(data=df4, aes(x = DIST_ho, y = Fatalities.Percent)) + 
          geom_point() + 
          geom_smooth(method = lm)+ xlab("Hospital") + ylab("Fatalities")+
          scale_x_continuous(limits = c(0, 25000))+
          scale_y_continuous(limits = c(0, 0.075)),
        
        ggplot(data=df4, aes(x = DIST_in, y = Fatalities.Percent)) + 
          geom_point() + 
          geom_smooth(method = lm)+ xlab("Intersection") + ylab("Percent")+
          scale_x_continuous(limits = c(0, 8000))+
          scale_y_continuous(limits = c(0, 0.075)),
        
        ggplot(data=df4, aes(x = DIST_li, y = Fatalities.Percent)) + 
          geom_point() + 
          geom_smooth(method = lm)+ xlab("Inspection camera") + ylab("Fatalities")+
          scale_x_continuous(limits = c(0, 200000))+
          scale_y_continuous(limits = c(0, 0.075)),
        
        ggplot(data=df4, aes(x = DIST_ma, y = Fatalities.Percent)) + 
          geom_point() + 
          geom_smooth(method = lm)+ xlab("Mall") + ylab("Percent")+
          scale_x_continuous(limits = c(0, 160000))+
          scale_y_continuous(limits = c(0, 0.075)),
        
        ggplot(data=df4, aes(x = DIST_hi, y = Fatalities.Percent)) + 
          geom_point() + 
          geom_smooth(method = lm)+ xlab("Historical site") + ylab("Fatalities")+
          scale_x_continuous(limits = c(0, 130000))+
          scale_y_continuous(limits = c(0, 0.075)),
        
        ggplot(data=df4, aes(x = DIST_sc, y = Fatalities.Percent)) + 
          geom_point() + 
          geom_smooth(method = lm)+ xlab("School") + ylab("Fatalities")+
          scale_x_continuous(limits = c(0, 6000))+
          scale_y_continuous(limits = c(0, 0.075)), ncol=2
      )
    
    })

  output$map <- renderPlot({
    temp.geocode <- map.geocode()
    
    
    temp.color <- "color"
    if (input$bw) {temp.color <- "bw"}
    
    
    temp.scale <- 1
    if (input$res) {temp.scale <- 2}
    
    
    map.base <- get_googlemap(
      as.matrix(temp.geocode),
      maptype = input$type, 
      language = "en-EN",  
      zoom = input$zoom,            
      color = temp.color,   
      scale = temp.scale,   
    )
    
    ## Convert the base map into a ggplot object
    ## All added Cartesian coordinates to enable more geom options later on
    map.base <- ggmap(map.base, extend = "panel") + coord_cartesian() + coord_fixed(ratio = 1.5)
    
    ## Main ggplot
    
    df5 <- data.frame(datasetInput5())
    df6 <- data.frame(datasetInput6())
    df7 <- data.frame(datasetInput7())
    
    fata=stat_density2d(aes(x = LONGITUDE,
                            y = LATITUDE, 
                            fill = ..level..),
                        bins = input$bins,
                        data = df5,
                        geom = "polygon",
                        alpha = input$alpharanage
    )
    
    others=stat_density2d(aes(x = LONGITUDE,
                              y = LATITUDE,
                              alpha=..level..), 
                          bins = input$bins,  
                          data = df6, 
                          geom = "polygon",
                          fill=input$color
    )
    
    
    if (input$dataset6=="None" & input$dataset7=="None") {map.prefinal=map.base+fata}
    else{
      if (input$dataset6!="None" & input$dataset7=="None") {map.prefinal=map.base+fata+others}
      else{
        if (input$dataset6=="None" & input$dataset7!="None") {map.prefinal=map.base+fata+geom_point(data=df7, aes(x = LONGITUDE,y = LATITUDE), color="blue", alpha=0.5, width=0.4)}
        else{
          map.prefinal=map.base+fata+others+geom_point(data=df7, aes(x = LONGITUDE,y = LATITUDE), color="blue", alpha=0.5, width=0.8)}
      }
      
    }
    map.final = map.prefinal +
      scale_fill_gradient(low = input$low, high = input$high)+
      scale_alpha(range = c(0.05,0.25))+
      
      ## Title and labels    
      labs(x = "Longitude", y = "Latitude") +
      ggtitle(paste("Density Map")) +
      ## Other theme settings
      theme_bw() +
      theme(
        plot.title = element_text(size = 36, face = 'bold', vjust = 2),
        axis.text = element_blank(),
        axis.title = element_blank(),
        axis.ticks = element_blank(),
        legend.position = "none",
        strip.background = element_rect(fill = 'grey80'),
        strip.text = element_text(size = 26))
    
    ## Final Print
    print(map.final)
    
  }, width = 1280, height = 1280)
  
})
