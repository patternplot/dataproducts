
monthlyMortgage <- function(loan,term,int) { 
    p <- loan
    r <- int/(100*12)
    n <- term *12
    r*p/(1-((1+r)^-n))
        }
drawPlot <- function(p,m,t) {
    print(p)
    print(m)
    print(t)
    
    i <- m*12*t - p
    slices <- c(p, i) 
    
    lbls <- c("Principal", "Interest")
    pct <- round(slices/sum(slices)*100)
    lbls <- paste(lbls, pct) # add percents to labels 
    lbls <- paste(lbls,"%",sep="") # ad % to labels
    pie(slices,labels = lbls, col=rainbow(length(lbls)),
        main="Principal/Interest Breakup at the end of the Term")
    
    
}

shinyServer(
    
    function(input, output) {
         output$olnamt <- renderPrint({input$lnamt})
         output$olnterm <- renderPrint({input$lnterm})
         output$olnintr <- renderPrint({input$lnintr})
         output$olnstdt <- renderPrint({input$lnstdt})
         output$omortgpaymt <- renderPrint({monthlyMortgage(input$lnamt,input$lnterm,input$lnintr)})
         abc <- reactive({drawPlot(input$lnamt, monthlyMortgage(input$lnamt,input$lnterm,input$lnintr),input$lnterm)})
         
         output$plot <- renderPlot({abc()})
         
         
    }
)