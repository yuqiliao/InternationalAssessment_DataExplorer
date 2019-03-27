

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(title = "IDE",
  
  # Application title
  titlePanel(title = "International Data Explorer"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel = sidebarPanel(
      selectInput(inputId = "gradeLevel",
                  label = "Grade",
                  choices = gradeLevel,
                  selected = NULL,
                  multiple = FALSE),
      selectInput(inputId = "yearList",
                  label = "Year",
                  choices = yearList,
                  selected = "2015",
                  multiple = FALSE),
      selectInput(inputId = "countryList",
                  label = "Education System",
                  choices = countryList,
                  selected = NULL,
                  multiple = FALSE)
    ),
    
    
    # Show a plot of the generated distribution
    mainPanel = mainPanel(
      verbatimTextOutput(outputId = "crosstab")
    )
  )
))
