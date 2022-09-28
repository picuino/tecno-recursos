# financial-calculators
Three Financial Calculators such as SIP calculator, Goal Calculator and Retirement Calculator

This folder contains files for 3 applications namely,
1. SIP Calculator
2. Goal Calculator
3. Retirement Calculator


1. SIP Calculator:
The SIP Calculator requires 3 basic inputs such as the amount invested,
duration in months and rate of interest expected. The calculation is done based
on a formula 	FV =	P * (( 1+I )^n -1 )	* ( 1 +I)/I
where,
FV =  Future value
P = Principal amount
I = compounded rate of return

Note: Although the calculation works correct, there are some limitations as the
inflation rate is not taken into consideration which can lower the rate of
return over the period of time.

2. Goal Calculator:
The Goal Calculator takes some user input needed to calculate the savings needed
to be done. The code calculator works as following:
  a. Takes input from user
  b. Calculates the future value (inflated amount) of the goal to be achieved.
  c. Calculates the returns on the current investments/ savings done.
  d. Deducts the returns from the future value to get the shortage amount needed
  to be covered.
  e. Calculates the monthly savings needed to be done.
  f. Displays necessary values on the webpage

Note: As the inflation increases the rate of returns on savings decrease, this
factor is not taken under consideration.

3. Retirement Calculator:
The Retirement Calculator calculates the amount needed for living after
retirement based upon the savings done initially. The calculator works as
following:
  a. Take user inputs
  b. Calculates the returns on saving
  c. Calculates the difference between returns and the amount needed after retiring
  d. Calculates the investment/savings needed to be done to achieve the target.
