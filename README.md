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
The program was packaged and uploaded online to be accessed [here](https://us-energy-consumption.herokuapp.com/).

The goal was not only to investigate the factors contributing to the number of car crash fatalities, but also to make such information easily accessible to everyone. Someone might not be interested in reading an academic paper about car crash fatalities with tons of statistical regressions and inferences, but they might be interested in viewing animated charts, graphs, and maps that convey similar information. As a result, this project aims to create an interactive UI that allows people to explore the questions of their own interests. Utilizing the Shiny library in R, 3 simple interactive applications were created for these purposes.

1.	The first application allows you to select a state in the U.S. and observe the number of car crash fatalities, poverty levels, median household income levels, population, and median commute time, as well as their relationships with each other over time (2003 – 2011) via motion charts. 

![alt-text](image/app1.png)

2. The second application also allows you to select a state in the U.S. and observe the correlations between the average car crash fatalities percent by county and their average distance to the closest school, hospital, bridge, fuel station, mall, speed and red-light camera, historical site, and intersection.

![alt-text](image/app2.png)

3.	The third application allows you to type in any location in the U.S. of your interest. It then will display a density map that shows the densities of car crash fatalities, schools, hospitals, bridges, fuel stations, malls, speed and red-light cameras, historical sites, and intersections surrounding your location of interest.

![alt-text](image/app3.png)

## Local Access
```
library(shiny)
runApp("~/Car Crash Fatalities Exploration Tool/")
```

## Structure of the software

1. Data collecting and schema building scripts:
    - `webscraper.py`: Scrapes 2017 data from EIA website on on [energy consumption by source] (https://www.eia.gov/state/seds/seds-data-complete.php?sid=US). The script crawls the index page and retrieves the datasets of interest for year 2017. The relevant datasets are then saved in the “data” folder.
    - `pull_api.py`: Leverages EIA’s API to retrieve trend data for a longer time period (1960 - 2017), which is not available in a web page format. The relevant datasets are saved in the “data” folder.
    - `db.sql`: sql file that converts data retrieved from web scraping and API into a sql3.lite database.

2. Data visualization/display scripts:
    - `make_2017_graph.py`: Python script that creates graphs showing the total energy consumption pattern by state in 2017. All the graphs are created and saved in the “static/graphs” folder. When a user selects a state, we’ll find the correct path of the state’s graph to display.
    - `make_1960_2017_graph.py`: Python script to create graphs showing the total energy consumption pattern by state for 1960-2017. All the graphs are created and saved in the “static/graphs” folder. When a user selects a state, we’ll find the correct path of the state’s graph to display.
    - `make_2017_table.py`: Python script that queries data on the total energy consumption pattern by state in 2017 from the database we created above. Convert the data into a formatted table to be displayed when a user selects a state.

3. Django scripts: 
Following the standard structure of a Django application, there are 3 main folders:
    - `search` folder contains html template and codes to display the correct visualizations selected by the users.
    - `static` folder contains css style and graphs generated from our data visualization scripts (to be displayed as static components in css structure).
    - `ui` folder contains Django default setup and scripts.
