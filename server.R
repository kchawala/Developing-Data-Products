library(shiny)

# Define server logic required to calculate BMI
shinyServer(function(input, output) {
   
  output$yourBMI = renderText((input$weight.pounds/((input$height.feet*12 + input$height.inches)^2)) * 703)
  
 
    
  
})
