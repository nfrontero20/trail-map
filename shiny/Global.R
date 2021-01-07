library(shinybusy)
library(shiny)
library(tidyverse)  
library(mdsr)
library(mosaic)
library(sf)
library(ggspatial)
library(here)
library(ggplot2)
library(knitr)
library(leaflet)

# TO RUN THE APP: 
# The Rdata file needs to be in the "shiny" folder in order for the app to run.
# To run the app, either click the "Run App" button from the RStudio IDE, or
# run `runApp("shiny")` in the console. 

# By running the app, the line of code below is automatically executed.
# This means that you do not need to run the line of code below, and in 
# fact you should NOT execute the line of code below.
# If you try to run the line of code below, you will get an error.

load(file = "app-objects.rda")

# If the app-objects.rda file does not reside in the "shiny" folder, run the 
# code in create-objects.rmd.  This code will generate the Rdata file and put it 
# in "shiny".
