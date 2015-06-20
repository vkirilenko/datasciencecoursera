shinyUI(fluidPage(
  titlePanel("Real estate investor"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("This plot was created for represents investment attractiveness of the EU countries for real estate investors.
                 Size  of the cirle  reflects the average salary(netto) in the each country.
                 Attention: because of the characteristics of the server can sometimes create the impression that the application has hung.
                 Please expect updates or trigger it by switching between tabs."),
  
  fluidRow(
    
    #selectInput("var", 
    column(5, 
           radioButtons("index", 
                              label = h3("Index of the house cost"), 
                              choices = list("Annual average index" = 1, 
                                             "Annual average rate of change" = 2,
                                             "Both" = 3),
                              selected = 1)),  multiple = TRUE,
    column(5,
           radioButtons("unit", label = h3("Type of the houses"),
                        choices = list("Total" = 1, "New dwellings" = 2,
                                       "Existing dwellings" = 3)),
           column(7, 
                  h4("Text tips points"),
                  helpText("10:Country 20:Salary 30:House index"))
  ),
  
  fluidRow(
        
    column(5,
           selectInput("year", label = h3("Year"), 
                       choices = list("2013" = 1, "2014" = 2), 
                       selected = 1 )),

    column(5, 
           sliderInput("text_show", label = h3("Text tips"),
                       min = 10, max = 30, value = 10, step = 10))

  ))),
  mainPanel(
    tabsetPanel(
      tabPanel("Plot", textOutput("out_line"),
        plotOutput("piPlot", width="auto")),
        tabPanel("Documentation", verbatimTextOutput("documentation")))
  )
  
)))