#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  titlePanel("基本的控件"),
  
  
  
  fluidRow(
    
    
    
    column(3,
           
           h3("actionButtons"),
           
           actionButton("action",label = "Action"),
           
           br(),
           
           br(),
           
           submitButton("Submit")),
    
    
    
    column(3,
           
           h3("checkboxInput"),
           
           checkboxInput("checkbox",label = "Choice A", value = TRUE)),
    
    column(3,
           
           checkboxGroupInput("checkGroup",
                              
                              label =h3("CheckboxGroup"),
                              
                              choices =list("Choice 1" = 1,
                                            
                                            "Choice 2" = 2, "Choice 3" = 3),
                              
                              selected = 1)),
    
    
    
    column(3,
           
           dateInput("date",
                     
                     label = h3("Dateinput"),
                     
                     value ="2014-01-01"))  
    
  ),
  
  
  
  fluidRow(
    
    
    
    column(3,
           
           dateRangeInput("dates",label = h3("Date range"))),
    
    
    
    column(3,
           
           fileInput("file", label =h3("File input"))),
    
    
    
    column(3,
           
           actionLink("action",
                      
                      label=h3("ActionLink"),
                      
                      icon("calendar"))),
    
    
    
    column(3,
           
           numericInput("numericInput",
                        
                        label =h3("numericInput"),
                        
                        value = 1))  
    
    
    
  ),
  
  
  
  fluidRow(
    
    
    
    column(3,
           
           radioButtons("radio",label = h3("radioButtons"),
                        
                        choices =list("Choice 1" = 1, "Choice 2" = 2,
                                      
                                      "Choice 3" = 3),selected = 1)),
    
    
    
    column(3, selectInput("select",label = h3("selectInput"),
                       
                       choices =list("Choice 1" = 1, "Choice 2" = 2,
                                     
                                     "Choice 3" = 3), selected = 1)),
    column(3,
           
           sliderInput("slider1",label = h3("sliderInput"),
                       
                       min = 0, max = 100,value = 50),
           
           sliderInput("slider2","",
                       
                       min = 0, max = 100, value= c(25, 75))
           
    ),
    
    
    
    column(3,
           
           textInput("text", label =h3("textInput"),
                     
                     value = "Entertext"))  
    
  )
  
))
