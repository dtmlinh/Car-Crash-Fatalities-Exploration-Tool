# Car Crash Fatalities Exploration Tools

## Project Description
A deadly car accident can be an awful thing! So, how do we prevent it from occurring? Well, we can drive very carefully. But is that all? Maybe we can begin to investigate where these deadly car accidents occur most frequently and perhaps gather more information about those high-fatality-rate areas in order to establish better preventative measures. That is precisely what this project aims to do.

You might be wondering who would care about this? The answer is: Lots of people should and we all should too! Such information is extremely useful for many people including:

•	An average person who is a driver and is curious about where car crash fatalities occur and where to be more careful on the road. 

•	Policy makers who want to locate areas with lots of car crash fatalities, so that they can implement preventative policies to make those areas safer.

•	Insurance companies whose profits heavily depend on accurate insurance premium calculations.

•	And many others …

## Data Sources
There are 2 types of data format: count data (aggregated at the state and county level) and geo-coded data (with the exact longitude and latitude of the location). 

Generally, I will use the number of car crash fatalities as my dependent variable for analysis and will look at it in relation to other independent variables. 

Dependent variables: 

•	Number of car crash fatalities by state and county (2003 – 2011):
http://www.nhtsa.gov/FARS. 

Independent variables:

•	Median commute time by state and county (2011):
http://www.indexmundi.com/facts/united-states/quick-facts/all-states/average-commute-time#map 
(Source: American Community Survey)

•	Poverty and income levels by state and county (2003 – 2011):
http://www.census.gov/did/www/saipe/data/statecounty/data/index.html 
(Source: Census Bureau).

•	Geo-coded data of bridges, fuel stations, hospitals, intersections, speed and red-light cameras, malls, and schools across the United States (2011):
http://www.poi-factory.com/poifiles 

## Usage
## Online Access
The program was packaged and uploaded onto https://www.shinyapps.io/ to be accessed [here](https://dtmlinh.shinyapps.io/car-crash-fatalities-exploration-tool/) (Flash needs to be enabled to run properly).

The goal was not only to investigate the factors contributing to the number of car crash fatalities, but also to make such information easily accessible to everyone. Someone might not be interested in reading an academic paper about car crash fatalities with tons of statistical regressions and inferences, but they might be interested in viewing animated charts, graphs, and maps that convey similar information. As a result, this project aims to create an interactive UI that allows people to explore the questions of their own interests. Utilizing the Shiny library in R, 3 simple interactive applications were created for these purposes.

1.	The first application allows you to select a state in the U.S. and observe the number of car crash fatalities, poverty levels, median household income levels, population, and median commute time, as well as their relationships with each other over time (2003 – 2011) via motion charts. 

![alt-text](app1.gif)

2. The second application also allows you to select a state in the U.S. and observe the correlations between the average car crash fatalities percent by county and their average distance to the closest school, hospital, bridge, fuel station, mall, speed and red-light camera, historical site, and intersection.

![alt-text](app2.gif)

3.	The third application allows you to type in any location in the U.S. of your interest. It then will display a density map that shows the densities of car crash fatalities, schools, hospitals, bridges, fuel stations, malls, speed and red-light cameras, historical sites, and intersections surrounding your location of interest.

![alt-text](app3.gif)

## Local Access
```
library(shiny)
runApp("~/Car-Crash-Fatalities-Exploration-Tool/")
```

## Structure of the software

1. Data:
    - folder `data` contains both raw data and processed data. 

2. Data collecting and processing codes:
    - folder `R_codes` contains codes to process raw data and store processed data in folder `data`.

3. Shiny app scripts: `ui.R`, `server.R`
    
