library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("A look at car accidents fatalities over time among states"),
  sidebarPanel(
    wellPanel(
      helpText(HTML("<b>READY?</b>")),
      submitButton("Update")
    ),
    wellPanel(
      helpText(HTML("<b>CHOOSE DATA FOR MOTION CHARTS</b>")),
      selectInput("dataset1", "Choose first state:", 
                choices = c("USA","AK","AL","AR","AZ","CA","CO","CT",#"DC",
                            "DE","FL","GA","HI",
                            "IA","ID","IL","IN","KS","KY",
                            "LA","MA","MD","ME","MI","MN","MS","MO","MT","NC","ND","NE","NH","NJ","NM","NV","NY","OH","OK","OR",
                            "PA","RI","SC","SD","TN","TX","UT","VA","VT","WA","WI","WV","WY")),
    
      selectInput("dataset2", "Choose second state:", 
                choices = c("MA","USA","AK","AL","AR","AZ","CA","CO","CT",#"DC",
                            "DE","FL","GA","HI",
                            "IA","ID","IL","IN","KS","KY",
                            "LA","MD","ME","MI","MN","MS","MO","MT","NC","ND","NE","NH","NJ","NM","NV","NY","OH","OK","OR",
                            "PA","RI","SC","SD","TN","TX","UT","VA","VT","WA","WI","WV","WY"))
    ),
    
    wellPanel(
      helpText(HTML("<b>CHOOSE DATA FOR CORRELATION CHARTS</b>")),
      selectInput("dataset3", "Choose first state:", 
                choices = c("USA","AK","AL","AR","AZ","CA","CO","CT",#"DC",
                            "DE","FL","GA","HI",
                            "IA","ID","IL","IN","KS","KY",
                            "LA","MA","MD","ME","MI","MN","MS","MO","MT","NC","ND","NE","NH","NJ","NM","NV","NY","OH","OK","OR",
                            "PA","RI","SC","SD","TN","TX","UT","VA","VT","WA","WI","WV","WY")),
      selectInput("dataset4", "Choose second state:", 
                choices = c("MA","USA","AK","AL","AR","AZ","CA","CO","CT",#"DC",
                            "DE","FL","GA","HI",
                            "IA","ID","IL","IN","KS","KY",
                            "LA","MD","ME","MI","MN","MS","MO","MT","NC","ND","NE","NH","NJ","NM","NV","NY","OH","OK","OR",
                            "PA","RI","SC","SD","TN","TX","UT","VA","VT","WA","WI","WV","WY"))
    
    ),
    
    wellPanel(
      helpText(HTML("<b>CHOOSE DATA FOR DENSITY MAP</b>")),
      wellPanel(
        helpText(HTML("<b>LOCATION SELECTION</b>")),
        textInput("poi", "Enter a Location of Interest:", "New York"),
        helpText("Coffeyville, Kansas is by default considered the center of USA")
      ),
      wellPanel(
      helpText(HTML("<b>DATA SELECTION</b>")),
      selectInput("dataset5", "Choose Fatalities dataset:", 
                  choices = c("Fatalities")),
      helpText(HTML("<b>Wanna look at it in relation with other locational factors?</b>")),
      selectInput("dataset6", "Choose independent dataset:", 
                  choices = c("None", "Schools","Hospitals", "Fuel stations", "Historical sites", "Bridges", "Cameras")),
      helpText(HTML("<b>Wanna see the actual location spots?</b>")),
      selectInput("dataset7", "Choose points dataset:", 
                  choices = c("None", "Schools","Hospitals", "Fuel stations", "Historical sites", "Bridges", "Cameras"))          
    ),
    
    wellPanel(
      helpText(HTML("<b>MAP SETTINGS</b>")),
      selectInput("type", "Choose Google Map Type:", choice = c("roadmap", "satellite", "hybrid","terrain")),    
      checkboxInput("res", "High Resolution?", FALSE),
      checkboxInput("bw", "Black & White?", FALSE),
      sliderInput("zoom", "Zoom Level:", 
                  min = 1, max = 20, step = 1, value = 15)
    ),
    
    
    wellPanel(
      helpText(HTML("<b>DENSITY PLOT SETTINGS</b>")),
      sliderInput("alpharanage", "Opacity Level:",
                  min = 0, max = 1, step = 0.05, value = 0.2),
      sliderInput("bins", "Number of Ranges:", 
                  min = 1, max = 50, step = 5, value = 10),
      selectInput("low", "Fill Gradient Fatalities (Low):", 
                  choice = c("yellow", "red", "orange", "green", "blue", "purple", "white", "black", "grey")),
      selectInput("high", "Fill Gradient Fatalities (High):", 
                  choice = c("red", "orange", "yellow", "green", "blue", "purple", "white", "black", "grey")),
      selectInput("color", "Second dataset color:", 
                  choice = c("purple", "orange", "yellow", "green", "blue", "white", "black", "grey"))      
    
    ))
  ),
    
  mainPanel(
    tabsetPanel(
    tabPanel("Motion charts over time", htmlOutput("view1")
             ),
                    
    tabPanel("Correlation charts: Fatalities percentage vs Distance to the closest ...", 
             tags$div(class = "row-fluid",
                      tags$div(class = "span6", plotOutput("view2")),
                      tags$div(class = "span6", plotOutput("view3"))       
             )),
    tabPanel("Density Map", plotOutput("map"))    
  ))
))
