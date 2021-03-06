library(shiny)

# Define UI for miles per gallon application
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Viral Protein"),
  
  # Sidebar with controls to select the variable to plot against mpg
  # and to specify whether outliers should be included
sidebarPanel(
    selectInput("virus", "Viral Protein",
                c("E" = "v_E",
                  "M" = "v_M",
                  "N" = "v_N",
		  "v_Spike"="v_Spike",
		  "v_nsp1"="v_nsp1",
		  "v_nsp10"="v_nsp10",
		  "v_nsp11"="v_nsp11",
		  "v_nsp12"="v_nsp12",
		  "v_nsp13"="v_nsp13",
		  "v_nsp14"="v_nsp14",
		  "v_nsp15" = "v_nsp15",
		  "v_nsp2" = "v_nsp2",
		  "v_nsp4" = "v_nsp4",
		  "v_nsp5" = "v_nsp5",
		  "v_nsp5_C145A" = "v_nsp5_C145A",
		  "v_nsp6" = "v_nsp6",
		  "v_nsp7" = "v_nsp7",
		  "v_nsp8" = "v_nsp8"),multiple=F,selectize=F)
   
  ),
  
  # Show the caption and plot of the requested variable against mpg
  mainPanel(
    h3(textOutput("virus")),
    
    plotOutput("aPlot")
  )
))
