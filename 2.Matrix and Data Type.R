##########################################################################
#                     MATRIX
##########################################################################

# matrix is multi dimensional array with similar type of values
# use function matrix to create

m1 <- matrix(0, 3, 3)
m2 <- matrix(1:9, 3, 3)
m1
m2
m3 <- matrix(1:9, 3, 3, byrow = T)
m3

vec1 <- seq(10, 60, 10)
vec1

# converting vector to matrix

dim(vec1) <- c(2, 3)
vec1

# dimnames is a function to assign name to matrix elements=
dimnames(vec1) <- list(c("r1", "r2"), c("c1", "c2", "c3"))
vec1

# to retrieve information from matrix

nrow(vec1)
ncol(vec1)
dim(vec1)
rownames(vec1)
colnames(vec1)
dimnames(vec1)

vec2 <-
  c(1000, 1100, 1200, 1300, 2000, 2100, 2200, 2400, 3000, NA, 3300, 3600)
sales_report <-
  matrix(vec2, 4, 3, dimnames = list(c("Nick", "Janet", "Ron", "Hary"), c("Year1", "Year2", "Year3")))
sales_report
sales_report[1,]
sales_report[2, 3]
sales_report[3:4, 2]
sales_report[4, c(1, 3)]

# total revenue for year 1
total_revenue_year1 <- sum(sales_report[, 1])
total_revenue_year1

# average revenue earned by ron
ron_average_revenue <- mean(sales_report["Ron", ])
ron_average_revenue

# find avrage revenue earned in year 3 by nick and harry
nick_hary_average_revenue <-
  mean(sales_report[c("Nick", "Hary"), "Year3"])
nick_hary_average_revenue

# find total revenue per year
year1_revenue <- sum(sales_report[, 1])
year1_revenue

year2_revenue <- sum(sales_report[, 2])
year2_revenue

year3_revenue <- sum(sales_report[, 3], na.rm = T)
year3_revenue

# using colSums gives column wise total
colSums(sales_report, na.rm = T)
colMeans(sales_report, na.rm = T)

# using rowSums gives row wise total
rowSums(sales_report)
# using rowMeans give row wise Average
rowMeans(sales_report, na.rm = T)

# using apply finction to get results row wise(use 1) or column wise(use 2)
# here sum column wise calculated
apply(sales_report, 2, sum, na.rm = T)

# find square root for each value of matrix
apply(sales_report, c(1, 2), sqrt)

apply(sales_report, 1, sqrt)
apply(sales_report, 2, sqrt)

#######################################################################
#                         Data types in R

# Numeric   10,10.5
# Integer   11,23
# Character "abc"
# Boolean    TRUE.FALSE,T,F
# Complex   a + bi, 1 + 2i
# by default all values are taken as numeric
# all integer values are numeric but all numeric are not integer
####################################################################

n1 <- 10
n2 <- 10.5
class(n1)
class(n2)   # returns type  of a variable
is.numeric(n1)
is.integer(n2)   # returns true or false as given numeric or integer

i1 <- as.integer(n2)  # for converting to integer object
class(i1)
is.integer(i1)
i2 <- as.integer(21.8)
i2
i3 <- as.integer("30")
i3
class(c(i1, i2, i3))

c1 <- "learning"
c2 <- "analytics"
is.character(c1)
is.character(c2)
toupper(c1) # return upper case of the given vraiable
tolower(c2) # return lower case of the given variable
substr(c1, 3, 4) # return substring from a string by giving starting position and ending position
nchar(c1) # returns number of characters in a string
sub()   # replace first occurance of a substring in a string
sub("Road", "Rd", "main Road")  #here "Road "will be replaced as "Rd" in the string "main Road"

paste(c1, c2)
paste(c1, c2, sep = "#")
paste0(c1, c2)

# using c1 and c2 create a new string like
# Learning Analytics , LearningBasic Analytics

first <-
  paste0(toupper(substr(c1, 1, 1)), tolower(substr(c1, 2, nchar(c1))))
second <-
  paste0(toupper(substr(c2, 1, 1)), tolower(substr(c2, 2, nchar(c2))))
full <- paste(first, second)
full

mid <- "Basic"
first1 <- paste0(first, mid)
full1 <- paste(first1, second)
full1


# Boolean data type
b1 <- TRUE
b2 <- FALSE
b3 <- T
b4 <- F
v1 <- 10
v2 <- 12
b5 <- v1 > v2
class(b1)
class(b2)
class(b3)

# operation on boolean value
b1 & b2  # in case of and both return true if all are true
b1 | b2  # in case of or if anyone is true returns true
! b1     #in case of not it returns reverse


# complex data type (always comes in a + bi form )
c1 <- 1 + 2i
c2 <- 2 + 3i

class(c1)
class(c2)
c1 + c2
c1 * c2
