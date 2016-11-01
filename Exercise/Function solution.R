#Q1
hypotenuse <- function(base, perpendicular)
{
  hypotenuse_val <- sqrt((base ** 2) + (perpendicular ** 2))
  return(hypotenuse_val)
}
hypotenuse(3, 4)

#Q2
bonus <- function(salary)
{
  bonus_amt <- 0.2 * salary
  return(bonus_amt)
}
bonus(5000)

#Q3
# increment will be in percentage increment of the salary
new_salary <- function(salary, incr)
{
  new <- salary * (1 + incr / 100)
  return(new)
}
new_salary(3000, 5)
