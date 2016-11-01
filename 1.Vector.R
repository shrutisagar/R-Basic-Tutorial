# VECTOR
###############################################################################
# vector is a one dimensional array with similar type nof values (use function 'c' for vector representation)
# to create a vector give syntax like this - c(1,2,4,45)
v1 <- c(10, 20, 30)   #numeric vector
v2 <- c("a", "b", "c")  #character vector
v3 <- c(TRUE, FALSE)   #logical vector
v1
v2
v3
# if one element is character all will be treated as character in vector
v4 <- c(10, "a", TRUE) 
v4
#create a vector with values from 1 to 20
v5 <- (1:20)
v5
# another way to do
v6 <- seq(1, 20)
v6
# create  avector with even values with 1 to 20
v7 <- seq(2, 20, 2)
v7
#odd values
v8 <- seq(1, 20, 2)
v8

# create a vector called price list with given data

price_list <- c(100, 121, 130, 141, 150, 161, 170, 71, 180, 181)

# length function returns  number of values in a vector

length(price_list)

# names function -- to assign name of vector

names(price_list) <-
  c("p1", "p2", "p3", "p4", "p5", "p6", "p7", "p8", "p9", "p10")

price_list

# using paste0 function naming all the columns
names(price_list) <- paste0("p", 1:length(price_list))
price_list

# how to extract data from a vector
# In R index is 1 based and there is no negative indexing

price_list[5]
price_list[4:6]
price_list[c(1, 10)]

#getting only odd positioned values

v1 <- seq(1, 10, 2)
#price_list[v1]
price_list[seq(1, 10, 2)]

# odd position values
# mod operator is %%  ,it returns remainder
price_list %% 2
price_list %% 2 != 0
price_list[price_list %% 2 != 0]

# find values of pricelist which is more than 150

price_list[price_list > 150]

price_list <- c(100, 121, 130, 141, 150, 161, 170, 171, 180, 181)
names(price_list) <- paste0("p", 1:length(price_list))
# To remive price_list names simply assign NULL
#names(price_list) <- NULL

# ADDING  NEW VALUES TO VECTOR

# It will add a new value at 11th position of the vector
price_list[11] <- 190
price_list

# We cannot assign name to any one value of a vector

price_list[12] <- 201
price_list

# changing the value of  a previous value

price_list[6] <- 160
# for checking only even values ,it will give boolean values
price_list %% 2 == 0

# subset based on index
price_list3 <- price_list[1:3]
price_list3

# based on name
price_list_name <- price_list[c("p3", "p6", "p9")]
price_list_name

# based on condition
even_price_list <- price_list[price_list %% 2 == 0]
even_price_list

# create a subset vector price_list with odd position values

odd_position_price_list <- price_list[seq(1, length(price_list), 2)]
odd_position_price_list

# any operation performed to a vector will be applied to all values of vector

price_list5 <- price_list + 5
price_list5

# find price for all product after adding 5% vat on it.
vat_added_price_list <- price_list * (1 +  0.05)
vat_added_price_list

# sum,max,min,sqrt,mean
sum(price_list)
min(price_list)
max(price_list)
sqrt(price_list)
mean(price_list)

# create a new vector called order_amount with below values
# 1000,1100,1200,NA,1300
# find total_order_amount and average_order_amount
order_amount <- c(1000, 1100, 1200, NA, 1300)

# To remove NA values from calculation use na.rm=TRUE bydefault it is FALSE
# Otherwise it will give result as NA
total_order_amount <- sum(order_amount, na.rm = TRUE)
total_order_amount

average_order_amount <- mean(order_amount, na.rm = T)
average_order_amount

# help(sum)

# barplot
barplot(price_list)

names(order_amount) <-  c("Mon", "Tue", "Wed", "Thurs", "Fri")
barplot(order_amount)
