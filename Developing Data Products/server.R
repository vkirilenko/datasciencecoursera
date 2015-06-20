library(shiny)
library(ggplot2)
library(Cairo)

shinyServer(function(input, output) {
  output$out_line <- reactive({ if (input$text_show == 10) {out_line = "Text tips: Country name" }
  else { if (input$text_show== 30) {out_line = "Text tips: House index value" }
    else {out_line = "Text tips: Average salary(netto)"}}
  })

  output$documentation <- renderText({ 
    paste("This application developed for real-estate investors.
 If you want to choose country for investment in realty, then you can choose it here.
 This plot based on GDP data and house index data in the european countries.
 Significant growth of GDP and the value of the property in combination with high salaries in the country
 can to ensure the preservation and increase of investment with high probability.
 For more detailed description of the features of the application, please refer to the presentation.

 In left panel you can choose different options for plot.
 Index of the house cost: this option changes type of the house index.
  You can choose average index for past 10 years, change of the index for last year
  or you can choose both types of the index in one plot.
 Type of the houses: this option changes type of the dwellings for sample.
  You can choose all buildings, only new dwellings or only existing dwellings.
 Year: there you can choose year of the index building(2013 or 2014).
 Text tips: this slider changes text tips for data.
  You can choose country, average salary in the country or house index value for tips.

 Thanks for your attention!
 Sources of the data: http://ec.europa.eu/eurostat/data/database,
 http://ec.europa.eu/eurostat/statistics-explained/index.php/Main_Page")
  })

  output$piPlot <- renderPlot({
    
    if (input$year== 1) {out = readRDS("pi2013.RDS")}
       else {out = readRDS("pi2014.RDS")}  
    
    if (input$index == 1) {ind_type = "Annual average index" }
    else { if (input$index == 3) {ind_type = c("Annual average index","Annual average rate of change") }
       else {ind_type = "Annual average rate of change"}}
    
    if (input$unit == 1) {house_type = "Total"}
    else { if (input$unit == 3) {house_type = "Existing dwellings"}
       else {house_type = "New dwellings"}}
    
    if (input$text_show == 10) {show_line = "Country" }
    else { if (input$text_show== 30) {show_line = "Value" }
         else {show_line = "Salary"}}
    
    if (input$unit == 1) {house_type = "Total"}
    
    out = out[out[["House"]] %in% house_type,]
    out = out[out[["Unit"]] %in% ind_type,]
    
    print(ggplot(out, aes(Value, GDP, size = Salary)) + 
            geom_point( aes( fill = Unit), alpha = .5, shape=21 )+ 
            scale_size_area(max_size = 20, guide = "none") + scale_fill_discrete(name = "Index of the house cost") +
            theme_bw() + theme(legend.position = "bottom", plot.title=element_text(color="blue")) + 
            xlab(substitute(paste("House cost change in percent: ", unit), list(unit = out[1,5]))) +  ylab("Gross Domestic Product") +  
            theme(plot.title = element_text( size=15, face="bold.italic"), axis.text=element_text(size=16), axis.title=element_text(size=12)) + 
            geom_text(data = out,aes_string(label = show_line),hjust=-.2, vjust=.1, size=4.5) + 
            geom_hline(yintercept=c(0,0), linetype="dotted") + geom_vline(xintercept=c(0,0), linetype="dotted")+
            ggtitle(substitute(paste("Change of the house cost index by countries and house types in ", years), list(years = out[1,4]))))
  }, height = 800)
})
            
            
            
               