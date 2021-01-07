## Initial project proposal

### Electives:

* STAT-225 Nonparametric Statistics (Spring 2020)
* STAT-240 Multivariate Statistics (Fall 2020)

### Off-campus courses:

* AP Statistics (High school) - *in replacement of STAT-135 Introduction to Statistics via Modeling*
* MA123 Calculus 1 (Summer 2019, Boston University) - *in replacement of MATH-111 Introduction to the Calculus*
* MA124 Calculus 2 (Summer 2019, Boston University) - *in replacement of MATH-121 Intermediate Calculus*

### Project summary:

For my final project in STAT-495, I aim to make an Shiny application that features a map of the trails surrounding the Amherst College campus.  When I was an in-person student at Amherst College, I never felt comfortable navigating the trails by myself (save for the Norwottuck rail trail) because I didn't know where the trails led nor how long they were.  This Shiny application would hopefully allow for members of the Amherst College community to feel encouraged to utilize the trails by providing users with ample information about the trails and the surrounding landscape. 

There will be multiple data sources that I use to make the Shiny app.  So far I have identified various data sets that may be of use, including:

* [Amherst College Wildlife Sanctuary](https://drive.google.com/drive/u/2/folders/1JnA4Pw2E_u7pe7IlfTOdGbDcTEKhRuG5) 
* [MassGIS (Bureau of Geographic Information)](https://www.mass.gov/orgs/massgis-bureau-of-geographic-information)
* [Amherst 2015 Orthophotos](http://amherstma.maps.arcgis.com/apps/Viewer/index.html?appid=575b63f637404819854d4fd5b39fbfc2)
* [Amherst 2009 LiDAR and Orthophotos](http://www.arcgis.com/apps/Legend/main/index.html?appid=d6226fcfd1844e9fb45303e5aa41b730)
* [Amherst Topographic Data](http://gis.amherstma.gov/apps/topoextract.htm)

There are a number of tasks that I aim to achieve throughout this project, which are mentioned below.  Please note that in STAT-231 Data Science, we did not focus on map making or on working with GIS data, so this project will allow me to dive into an area of statistics and data science that I have yet to engage with.

### Proposed tasks:

1. Provide an expository review of map-making with GIS data in R that will be aimed at an audience of my classmates in STAT-495 that builds on the two chapters on spatial analysis in MDSR 2e.

2. Generate a report that describes the functions and code used to generate the Shiny app.

3. Create a Shiny application that will feature a map of the trails surrounding Amherst College.  I aim to have the map contain as many useful components as possible, and when users are engaging with the app, they would be able to specify the various layers and annotations that they wish to view at a given time by checking various boxes.  My proposal is to provide the following features that could be explored:
  + Elevation charts for each trail
  + Distance of each trail (available in miles and kilometers) 
  + Categorization of trails into levels (ex. Easy, Medium, Hard) based upon their elevation and distance
  + A layer for points of interest (using POI information from the [Amherst College Sanctuary Trails map](https://drive.google.com/drive/u/2/folders/1JnA4Pw2E_u7pe7IlfTOdGbDcTEKhRuG5))
  + A layer for [waypoints](https://drive.google.com/drive/u/2/folders/1JnA4Pw2E_u7pe7IlfTOdGbDcTEKhRuG5) 
  + A layer for trail type (for example, the Norwottuck Rail Trail, the Amherst College Sanctuary Trails, or "Other" trails)

Future work (beyond STAT495) would be to allow users to take trail information with them either via making the app compatible with mobile phone use, or by allowing for users to download trail information.


## Feedback

Nicole,

I like the plan: the only parts missing are how the user would navigate the Shiny app.  I'm imagining that there might be several built-in views and they can check various boxes to add or subtract layers or annotations.  

Are my changes to your proposal acceptable?  If yes, then I'm ready to accept it and let you get started.  Can you please close the issue that I've created if that's the case?  If not, let's talk.
