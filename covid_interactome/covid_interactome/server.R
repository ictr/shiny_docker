library(shiny)
library(igraph)
load('/srv/shiny-server/covid_interactome/data/data.RData')
# We tweak the "am" field to have nicer factor labels. Since this doesn't
# rely on any user inputs we can do this once at startup and then use the
# value throughout the lifetime of the application

# Define server logic required to plot various variables against mpg
shinyServer(function(input, output) {
  


output$virus<-renderText({input$virus})
#plot(gr,vertex.frame.color=NA,edge.color="black")  
output$aPlot <- renderPlot({
	     #x<-virusToPlot()
	     plot(subs[[input$virus]]) 

 })
})
