#                                   FUNCTION
###############################################################################

# used to perform calculation on objects
# Syntax
# function_name <- function (args)
# {
# R statements
# return (var)
#}

add2no <- function(x, y)
  x + y

# calling function
add2no(5, 6)
add2no(5, 15)
add2no(-5,-10)

p = 10
q = 20
add2no(p, q)

# calling function by passing two vectors as arguments
v1 <- c(5, 7)
v2 <- c(2, 3)
add2no(v1, v2)

v2 <- c(2, 3, 4)  # here answer will be displayed with a warning message
add2no(v1, v2)

# length of longer vector must be multiple of shorter vector 
# In that case shorter vector elements will repeat
v2 <- c(2, 3, 4, 5)
add2no(v1, v2)

finalamt <- function(amt)
{
  vat = amt * (4.4 / 100)
  totalamt = amt + vat
  return(totalamt)
}
finalamt(5000)
x <- 1020
finalamt(x)

# write a function to find commission amount given to
# salesrep if 15% of revenue is commission
commission_amt <- function(revenue)
{
  comm <- 0.15 * revenue
  return(comm)
}
commission_amt(5000)

# default value
commission_amt <- function(revenue = 1000)
{
  amt = revenue * 0.15
  return(amt)
}
commission_amt()  # call for default value
commission_amt(5000)  # call for the passing value

# function which gives information about custom function
formalArgs(commission_amt)
# returns calculation steps of the given function
body(commission_amt)

# Scope of a variable
# Here x is global and y is local to function add10
x <-  100
add10 <- function()
{
  y = x + 10
  return(y)
}
add10()
# We can see value of x but not y
x
y

# function within function
f1 <- function(x)
{
  y = 10
  g1 <- function(x)
  {
    x + y
  }
  g1(x)
}
f1(100)
# function outside a function
# it will give error object 'y' not found
g2 <- function(x)
{
  x + y
}
f2 <- function(x)
{
  y = 10
  g2(x)
}
f2(100)

# FLOW CONTROL
# Single iterative =-- if,switch
# Multiple iterative =-- repeat,do while,for
# if --used to check given condition if it is true then it will perform 
# task otherwise not
# syntax1 = if(condition) action
# syntax2 = if(condition)
#           {
#              action1
#              actionn
#           }
# syntax3 = if(conditon)
#           {
#             action1
#           }else
#           {
#           action2
#           }

# syntax4 = if(condition)
#           {
#             action1
#           }else if(condition2)
#           {
#             action2
#           }else
#           {
#             action3
#           }

age <- 20
if(age >= 18) message("ADULT")

# create a function to find voting status of a person.
# A person can vote if his/her  age is equal to or more than 18 otherwise not

votestatus <- function(age)
{
  if (age >=18)
  {
    message("You can vote")
  }else
  {
    message("You can't vote")
  }
}
votestatus(12)
votestatus(18)

# find the square and square root of user given number if number is even
print_square <- function(number)
{
  Square = "NA"
  Squareroot = "NA"
  if ((number %% 2) == 0) {
    Square = number * number
    Squareroot = sqrt(number)
  }
  
  message("Square : ", Square)
  message("Squareroot : ", Squareroot)
}

print_square(64)  # even number
print_square(69)  # odd number so NA as we have defined

# find commission amount given to salesrep
# based on their revenue range 
# RevenueRange   %commission
# 0-5000          5%
# 5000-10000      7%
# 10000-20000     9%
# 20000-above     12.5%

commission_amt <- function(revenue)
{
  if(revenue < 5000)
  {
    rate = 5
  }else if (revenue < 10000)
  {
    rate = 7
  }else if (revenue < 20000)
  {
    rate = 9
  }else rate = 12.5
  amt = (rate/100) * revenue
  return(amt)
}
commission_amt(5000)
commission_amt(4000)
commission_amt(19000)
commission_amt(20000)


# Vectorised if
# ifelse(condition,true value,false value)
marks <- c(60, 50, 30, 40, 30, 80)
ifelse(marks > 50, "Pass", "Fail")
marks <- 30
ifelse(marks > 50, "Pass", "Fail")

# SWITCH CASE
# Syntax of switch() function
# switch (statement, list)

x <- switch(2,"red","green","blue");x
# switch() function returns the corresponding item to the numeric value evaluated
x <- switch(1,"red","green","blue");x
x <- switch(4,"red","green","blue");x  # NULL will be returned as index out of range

greek <- switch("delta",
                alpha = 2,
                beta = 4,
                delta = 6)
greek
# Switch with default value
# Here there is no Delta matching so 8 will be printed 
greek2 <- switch("Delta",
                 alpha = 2,
                 beta = 4,
                 d0elta = 6,
                 8)
greek2

# switch case within a function
Price <- function(Prod) {
  amt <- switch(
    Prod,
    "P1" = 30,
    "P2" = 35,
    "P3" = 40,
    "P4" = 45,
    "P5" = 50
  )
  return(amt)
}

Price("P1")
Price("P3")

# find the marks range based on grade
result <- function(grade)
{
  marks <-
    switch(
      grade,
      "f" = "<35",
      "e" = "<40",
      "d" = "<50",
      "c" = "<60",
      "b" = "<70",
      "a" = ">70",
      "grade not found, no marks"
    )
  message("grade is:", grade, " marks is:", marks)
  
}
result("e")
result("g")

# REPEAT
time <- 8
repeat
  {
  message("Good Morning")
    if (time > 12)
      break
    time = time + 1
  }

# To find out year required to get finalamt given amt and rate
ReqYear <- function(amt, rate, finalamt) {
  year = 0
  repeat {
    year = year + 1
    interest = amt * (rate / 100)
    totalamt = amt + interest
    
    if (totalamt >= finalamt)
      break
    amt = totalamt
  }
  return(year)
}

ReqYear(1000, 4.5, 5000)
ReqYear(10000, 7.5, 75000)

x <- 1000
ReqYear(x, 8.5, 2 * x)

# how many times we have to add 5 to get 50
ReqCount <- function(x)
{
  count <- 0
  while(x < 50)
  {
    x = x + 5
    count = count + 1
  }
  return(count)
}
ReqCount(40)
# To find number of even numbers between two user given values
count_even <- function(a, b)
{
  n <- 0
  while (a <= b)
  {
    if (a %% 2 == 0)
    {
      n = n + 1
      message("even no is: ", a , " count is: ", n)
    }
    a = a + 1
  }
  return(n)
}
count_even(40, 60)

# FOR LOOP
# find square and squareroot from 1 to 10
for (i in 1:10)
{
  sq = i * i
  sqroot = sqrt(i)
  message(i, " square is ", sq)
  message(i, " square root is ", sqroot)
}

#sq of odd values 1 to 20
for(i in seq(1, 20, 2))
{
  sq = i * i
  message("square: ", sq)
}

