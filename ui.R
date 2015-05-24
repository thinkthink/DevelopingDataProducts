library(shiny)
shinyUI(pageWithSidebar(
	headerPanel("Do you know your BMI?"),
	siderbarPanel(
                h3('Enter your information'),
                textInput("name", "Name:"),
                radioButtons("sex", "Sex:",c("Male" = "male","Female" = "female")),
                numericInput("height","Height(m):",min=0.01,max=3,step=0.1)
                numericInput("weight","Weight(kg):",min=1,max=300,step=1)
                dateInput("date","Date:")
             ),
mainPanel(
               h3("Result"),
               verbatimTextOutput("osex"),                              
               verbatimTextOutput("oname"),
               h4('When")
               verbatimTextOutput("odate"),              
               h4(''Your height(m) is")
               verbatimTextOutput("oheight"),              
               h4(''Your weight(kg) is")
               verbatimTextOutput("oweight"),            
               h4(''Therefore, your BMI is")
               verbatimTextOutput("BMI"),
                )
))
