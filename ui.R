library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  titlePanel("NYC Marathon Simulation"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Examine Simulation Under Various Scenarios."),
      
      sliderInput("arrival_rate", 
                  label = "Base Arrival Rate",
                  min = 20, max = 45, value = 40),
      
      sliderInput("peak_arrival_rate", 
                  label = "Peak Arrival Rate",
                  min = 40, max = 60, value = 43),
      
      sliderInput("peak_range", 
                  label = "Peak Time (Hour Range)",
                  min = 0, max = 10, value = c(3,6)),
      
      textOutput("arrival_rate"),
      
      sliderInput("min_service_time", 
                  label = "Minimum Service Time",
                  min = 0.5, max = 1, value = .5),
      
      sliderInput("avgservicetime", 
                  label = "Average Excess Service Time",
                  min = 0.5, max = 3, value = 1.3),
      
      sliderInput("walktime", 
                  label = "Average time to walk from line to cashier (seconds)",
                  min = 5, max = 20, value = 7),
      
      sliderInput("ppc", 
                  label = "Number of Cashiers",
                  min = 10, max = 100, value = 80),

      actionButton("go", "Run Simulation")
      
    ),
      
    
    mainPanel(
      #fluidRow(
      tableOutput("string"),
      plotOutput("utilization"),
      plotOutput("arrivals")
      )
    )
  )
)
