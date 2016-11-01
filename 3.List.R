#########################################################################
#                           LIST
#
#######################################################################
# list is vector with diffrent type of values or object
list1 <- list(x = c(10, 20, 30),
              y = c("a", "b", "c"),
              z = c(T, F, T))
# Accessing the values of list
list1$x
list1$y
list1$z
list1$x[1]

list2 <- list(
  a = seq(1, 10),
  b = matrix(1:6, 2, 3),
  c = list(alpha = 10, beta = 20)
)


list2$b[2, 3]
list2$c$alpha
list2$c[1]
list2$a[1:5]
list2["c"]
list2[[3]][2]

# conversion from vector to list and viceversa

price <- c(120, 130, 135, 140, 150)

pricelist <- as.list(price)
pricelist


productlist <- list(Type1 = "Dell",
                    Type2 = "Acer",
                    Type3 = "HP")
productlist
product <- unlist(productlist)
product

l1 <- list(c(1, 2, 3, 4, 5))

l2 <- list(c(5, 4, 3, 2, 1))

l1

length(l1)
length(l2)


l3 <- l1[[1]] + l2[[1]]
length(l3)
l3

# type of variables
# Atomic- variables that can store values of only one type   (vector,matrix)
# Recursive - variables  that can store values of multiple types   (list)

is.atomic(list2)
is.recursive(list2)


price<-c(100,110,120,130)
price_list<-as.list(price)
price_list

