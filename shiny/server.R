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

server <- function(input, output){

  # Trail lengths table 
  output$trail_lengths_table <- DT::renderDataTable(trail_lengths_df)
  
  # Leaflet map
  output$my_map <- renderLeaflet({
    
    leaflet() %>% 
      
      # Set where the map opens up to, and at what zoom level
      setView(lng = -72.510556,
              lat = 42.367222,
              zoom= 14) %>% 
      
      # Base groups (provider tiles that will serve as base layers)
      addTiles(group = "Open Street Maps") %>%
      addProviderTiles(provider = providers$Esri.WorldTopoMap, 
                       group = "World Topographic Map") %>%
      addProviderTiles(provider = providers$OpenTopoMap,
                       group = "Open Topographic Map") %>% 
      
      # Overlay groups (layers that are not base layers)
      addPolylines(
        data = amherst_college_trails, # Amherst College trails
        opacity = 1.0, # Full opacity
        color = "#A033FF", # Purple
        weight = 2, # Smaller lines than the default of 5
        group = "Amherst College trails", # Name for interactive check box
        label = amherst_college_trails$Trail, # Trail names will be labels
        labelOptions = labelOptions(permanent = TRUE)) %>% # Permanent labels
      
      addProviderTiles(provider = providers$OpenRailwayMap, # Railways
                       group = "Railways") %>% # Name for interactive check box
    
      # Layers control
      addLayersControl(
        baseGroups = c("Open Street Maps","World Topographic Map", "Open Topographic Map"
                       ),
        overlayGroups = c("Amherst College trails", "Railways"),
        options = layersControlOptions(collapsed = FALSE)
      ) %>% 
    
      # Add scale bar
      addScaleBar(position = c("bottomright"))
    
  }) # close renderLeaflet
  
} # close server
