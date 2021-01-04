library(shiny)
library(gridExtra)
library(ggplot2)
library(ggmap)
library(png)
library(grid)
library(RCurl)
library(plyr)
library(googleVis)

USA=read.csv("data/USA.csv")
AK=read.csv("data/AK.csv")
AL=read.csv("data/AL.csv")
AR=read.csv("data/AR.csv")
AZ=read.csv("data/AZ.csv")
CA=read.csv("data/CA.csv")
CO=read.csv("data/CO.csv")
CT=read.csv("data/CT.csv")
#DC=read.csv("data/DC.csv")
DE=read.csv("data/DE.csv")
FL=read.csv("data/FL.csv")
GA=read.csv("data/GA.csv")
HI=read.csv("data/HI.csv")
ID=read.csv("data/ID.csv")
IL=read.csv("data/IL.csv")
IN=read.csv("data/IN.csv")
IA=read.csv("data/IA.csv")
KS=read.csv("data/KS.csv")
KY=read.csv("data/KY.csv")
LA=read.csv("data/LA.csv")
ME=read.csv("data/ME.csv")
MD=read.csv("data/MD.csv")
MA=read.csv("data/MA.csv")
MI=read.csv("data/MI.csv")
MN=read.csv("data/MN.csv")
MS=read.csv("data/MS.csv")
MO=read.csv("data/MO.csv")
MT=read.csv("data/MT.csv")
NE=read.csv("data/NE.csv")
NV=read.csv("data/NV.csv")
NH=read.csv("data/NH.csv")
NJ=read.csv("data/NJ.csv")
NM=read.csv("data/NM.csv")
NY=read.csv("data/NY.csv")
NC=read.csv("data/NC.csv")
ND=read.csv("data/ND.csv")
OH=read.csv("data/OH.csv")
OK=read.csv("data/OK.csv")
OR=read.csv("data/OR.csv")
PA=read.csv("data/PA.csv")
RI=read.csv("data/RI.csv")
SC=read.csv("data/SC.csv")
SD=read.csv("data/SD.csv")
TN=read.csv("data/TN.csv")
TX=read.csv("data/TX.csv")
UT=read.csv("data/UT.csv")
VT=read.csv("data/VT.csv")
VA=read.csv("data/VA.csv")
WA=read.csv("data/WA.csv")
WV=read.csv("data/WV.csv")
WI=read.csv("data/WI.csv")
WY=read.csv("data/WY.csv")

USA_corr=read.csv("data/Corr_USA.csv")
AK_corr=read.csv("data/Corr_AK.csv")
AL_corr=read.csv("data/Corr_AL.csv")
AR_corr=read.csv("data/Corr_AR.csv")
AZ_corr=read.csv("data/Corr_AZ.csv")
CA_corr=read.csv("data/Corr_CA.csv")
CO_corr=read.csv("data/Corr_CO.csv")
CT_corr=read.csv("data/Corr_CT.csv")
#DC_corr=read.csv("data/Corr_DC.csv")
DE_corr=read.csv("data/Corr_DE.csv")
FL_corr=read.csv("data/Corr_FL.csv")
GA_corr=read.csv("data/Corr_GA.csv")
HI_corr=read.csv("data/Corr_HI.csv")
ID_corr=read.csv("data/Corr_ID.csv")
IL_corr=read.csv("data/Corr_IL.csv")
IN_corr=read.csv("data/Corr_IN.csv")
IA_corr=read.csv("data/Corr_IA.csv")
KS_corr=read.csv("data/Corr_KS.csv")
KY_corr=read.csv("data/Corr_KY.csv")
LA_corr=read.csv("data/Corr_LA.csv")
ME_corr=read.csv("data/Corr_ME.csv")
MD_corr=read.csv("data/Corr_MD.csv")
MA_corr=read.csv("data/Corr_MA.csv")
MI_corr=read.csv("data/Corr_MI.csv")
MN_corr=read.csv("data/Corr_MN.csv")
MS_corr=read.csv("data/Corr_MS.csv")
MO_corr=read.csv("data/Corr_MO.csv")
MT_corr=read.csv("data/Corr_MT.csv")
NE_corr=read.csv("data/Corr_NE.csv")
NV_corr=read.csv("data/Corr_NV.csv")
NH_corr=read.csv("data/Corr_NH.csv")
NJ_corr=read.csv("data/Corr_NJ.csv")
NM_corr=read.csv("data/Corr_NM.csv")
NY_corr=read.csv("data/Corr_NY.csv")
NC_corr=read.csv("data/Corr_NC.csv")
ND_corr=read.csv("data/Corr_ND.csv")
OH_corr=read.csv("data/Corr_OH.csv")
OK_corr=read.csv("data/Corr_OK.csv")
OR_corr=read.csv("data/Corr_OR.csv")
PA_corr=read.csv("data/Corr_PA.csv")
RI_corr=read.csv("data/Corr_RI.csv")
SC_corr=read.csv("data/Corr_SC.csv")
SD_corr=read.csv("data/Corr_SD.csv")
TN_corr=read.csv("data/Corr_TN.csv")
TX_corr=read.csv("data/Corr_TX.csv")
UT_corr=read.csv("data/Corr_UT.csv")
VT_corr=read.csv("data/Corr_VT.csv")
VA_corr=read.csv("data/Corr_VA.csv")
WA_corr=read.csv("data/Corr_WA.csv")
WV_corr=read.csv("data/Corr_WV.csv")
WI_corr=read.csv("data/Corr_WI.csv")
WY_corr=read.csv("data/Corr_WY.csv")

dta=read.csv("data/acc_full.csv")
dta=subset(dta, select=c("LONGITUDE","LATITUDE"))
Schools=read.csv("data/Schools.csv")
Hospitals=read.csv("data/Hospitals.csv")
Fuels=read.csv("data/fuels.csv")
Historical=read.csv("data/Historical.csv")
Bridges=read.csv("data/bridges.csv")
Cameras=read.csv("data/Cameras.csv")

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
