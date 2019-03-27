
library(shiny)
library(EdSurvey)

# Define server logic required to draw a histogram
shinyServer(function(input, output, session) {
   
  output$crosstab <- renderPrint({
    # read in data based on user selection
    sdf <- readTIMSS(path = paste0("C:/Users/yliao/Documents/GitHub/InternationalAssessment_DataExplorer/TIMSSData/TIMSS/", input$yearList),
                     countries = input$countryList,
                     gradeLvl = input$gradeLevel,
                     forceReread = FALSE,
                     verbose = FALSE)
    
    # generate cross tab
    crosstab <- edsurveyTable(formula = mmat ~ itsex,
                              data = sdf,
                              jrrIMax = Inf,
                              varMethod = "jackknife")
    
    # print crosstab
    crosstab
    
  })
  
})
