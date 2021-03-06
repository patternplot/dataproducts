Mortgage Calculator
========================================================
author: Niraj Sinha
date: 17-July-2016

Introduction
========================================================

This tool helps you calculate your monthly mortgage payment.


Input Data
========================================================
- Loan Amount (The total amount you owe to the bank)
- Loan Term (The total length of your loan term in Years)
- Annual Interest Rate (in percentage)

Output data
========================================================
The tool provides the following output:
- Monthly Payment required to service loan
- Plot of the break-up of Principal vs Total Interest paid at the end of the loan term

Assumptions
========================================================
The following formula is used to calculate the mortgage payment:

```r
r*p/(1-((1+r)^-n))
```
r - the monthly interest rate, expressed as a decimal, not a percentage. Since the quoted yearly percentage rate is not a compounded rate, the monthly percentage rate is simply the yearly percentage rate divided by 12; dividing the monthly percentage
rate by 100 gives r, the monthly rate expressed as a decimal.

N - the number of monthly payments, called the loan's term, and

P - the amount borrowed, known as the loan's principal.

It is the standardized calculation used in the United States
Source: [Wikipedia](https://en.wikipedia.org/wiki/Mortgage_calculator)
