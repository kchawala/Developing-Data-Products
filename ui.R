library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Know your BMI"),
  
  # Sidebar with a slider input for height and weight 
  sidebarLayout(
    sidebarPanel(
       sliderInput("height.feet","Enter your Height (feet):",min = 4,max = 7,value = 5),
       sliderInput("height.inches","Enter your Height (inches)",min = 0,max = 11,value = 10),
       sliderInput("weight.pounds","Enter your Weight (pounds):",min = 100,max = 250,value = 170)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      h4("App Description"),
      h5("BMI (Body Mass Index) is a measurement of body fat based on height and weight that applies to both men and women between the ages of 18 and 65 years.

         BMI can be used to indicate if you are overweight, obese, underweight or normal. A healthy BMI score is between 20 and 25. A score below 20 indicates that you may be underweight; a value above 25 indicates that you may be overweight."),
      
      h4("Calculate your BMI by entering your height and weight in the side panel to the left."),
      
      h3("Your BMI is:"),
       textOutput("yourBMI")
      
    )
  )
))
