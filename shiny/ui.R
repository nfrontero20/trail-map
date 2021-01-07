library(shinybusy)
library(shiny)
library(tidyverse)   # Load additional packages here 
library(mdsr)
library(mosaic)
library(sf)
library(ggspatial)
library(here)
library(ggplot2)
library(knitr)
library(leaflet)

ui <- navbarPage(title = "Trails Near Amherst College",
                 position = c("fixed-top"),
                 fluid = TRUE,
                 collapsible = TRUE,
                 
                 # Tab 1: Map
                 tabPanel("Map",
                          fluidPage(
                            titlePanel("NA"),
                            fluidRow(
                              column(width = 12,
                                     leafletOutput("my_map")
                              ), # close column
                            ) # close row 
                          ) # close page
                 ), # close tab 1
                 
                 # Tab 2: Trail lengths
                 tabPanel("Trail Lengths",
                          fluidPage(
                            titlePanel("NA"),
                            fluidRow(
                              column(width = 12,
                                     DT::dataTableOutput("trail_lengths_table"))
                            ) # close row  
                          ) # close page
                 ), # closes tab 2
                 
                 # Tab 3: About
                 tabPanel("About",
                          fluidPage(
                            titlePanel("NA"),
                            
                            # Row 1 (Amherst College logo)
                            fluidRow(
                              column(width = 8),
                              column(width = 4,
                              # Amherst College logo was appropriately scaled
                              tags$img(src = "amherst-logo.png", height = 27, width = 200))
                              ), # close row
                            
                            # Row 2 ("About the project," "Motivation")
                            fluidRow(
                              column(width = 12,
                                     
# Heading                                     
h3("About this project"), 

p("This application is a component of my comprehensive evaluation project submitted to the statistics 
 faculty at Amherst College in partial fulfillment of the requirements for the degree of Bachelor of Arts in Statistics.  
 The goal of the comprehensive project in the Statistics major is to display proficiency in statistics.  We are asked to independently 
 learn a new statistics and/or data science concept and to share what we have learned through a report and any supplementary materials.  I chose to learn 
about geospatial data and to apply my learning by creating a trail map for the trails surrounding Amherst College.
  The report that accompanies this application can be found at the following link:"), a("https://github.com/Amherst-STAT495F20/STAT495F20-project-Frontero", 
  href = "https://github.com/Amherst-STAT495F20/STAT495F20-project-Frontero/blob/main/report/report.pdf",
  target = "_blank"),

# Heading
h3("Motivation"),

p(
"When I was a student at Amherst, I enjoyed spending time outdoors, and often I would walk or run on the Norwottuck Rail Trail.  It came as a surprise to me when
a peer took me on a run and showed me trails that I never knew existed.  Even though these trails were so close in proximity to Amherst College, I only 
ever felt comfortable going on these trails with my friend as I was fearful of getting lost.  My hope is that this application can serve as a resource to Amherst 
College students, faculty, and staff alike, as well as Amherst community members, to feel encouraged to venture off the Norwottuck Rail Trail so as to explore 
other trails that they perhaps may not know exist."),  
p("For individuals who would like to plan their journey out, this application provides a table that contains the lengths of each trail 
(in miles and kilometers).  Additionally, users can toggle between different base maps 
to view the map in whichever manner they see fit, and can also zoom in and out."),

# Row 3 ("About the author")
fluidRow(
  column(width = 8,

# Heading         
h3("About the author"),

p("My name is Nicole Frontero and I am a senior at Amherst College.  I will be graduating in December 2020 with a double major in Statistics and Psychology.  
  When at Amherst, I thoroughly enjoyed spending time outdoors.  The featured images are photos I took while going for walks on the Cross-country Loop (top photo)
  and the Book and Plow Trail (bottom photo).  I hope that this app may facilitate and promote individuals being able to enjoy the outdoor recreational activities that
  the Amherst College area has to offer.")),
column(width = 4,
       fluidRow(
         tags$img(src = "bird-sanctuary.png", height = 150, width = 200)
       ),
       fluidRow(
         tags$img(src = "book-and-plow.png", height = 150, width = 200)
       )
  ), # closes column with images

# App last updated
p("This app was last updated December 10, 2020.")
                              ) # close row 3 ("About the author")
                         ) 
                      ) 
                 ) # close tab 3 page
  )  # close tab 3
) # close navbarPage
