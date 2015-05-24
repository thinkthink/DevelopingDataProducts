shinyServer(
	function(input,output){
	output$osex
                output$oname <- renderPrint({input$name})
                output$oheight<- renderPrint({input$height})
                output$oweight<- renderPrint({input$weight})
	output$odate<- renderPrint({input$date})

}

)
