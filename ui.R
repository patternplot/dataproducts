
shinyUI(pageWithSidebar(
    headerPanel("Mortgage Calculator"),
    sidebarPanel(
        helpText(a("Click Here For Help Documentation", href="https://patternplot.shinyapps.io/MortgageCalculatorShinyDocumentation/")),
        numericInput('lnamt', 'Total Loan Amount in USD', 200000, min = 0),
        numericInput('lnterm', 'Term of the Loan in Years', 30, min = 0),
        numericInput('lnintr', 'Annual Interest Rate (%)', 3.5, min = 0),
        submitButton('Submit')
    ),
    mainPanel(
        h3('YOU ENTERED:'),
        h4('Total Loan Amount'),
        verbatimTextOutput("olnamt"),
        h4('Loan term'),
        verbatimTextOutput("olnterm"),
        h4('Annual Interest Rate'),
        verbatimTextOutput("olnintr"),
        h3('YOUR MONTHLY MORTGAGE PAYMENT:'),
        verbatimTextOutput("omortgpaymt"),
        plotOutput("plot")
    )
))