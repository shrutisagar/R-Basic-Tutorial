#Q1
num1 <- 20.752
num2 <- 26.625

#Q2
company <- "ABCDEF GHIJKLMN"
first <- strsplit(company, " ")[[1]][1]
first <-
  paste0(toupper(substr(first, 1, 1)), tolower(substr(first, 2, nchar(first))))
second <- strsplit(company, " ")[[1]][2]
second <-
  paste0(toupper(substr(second, 1, 1)), tolower(substr(second, 2, nchar(second))))
full <- paste(first, second, sep = " ")
full

#Q3
addition <- as.integer(num1 + num2)
addition

#Q4
com1 <- 5 - 4i
com2 <- 5 + 4i

product <- com1 * com2
integer <- as.integer(product)
integer

#Q5
class(com1)
class(num1)

complex_plus_integer <- num1 + com1
complex_plus_integer

#Q6
list1 <- list(
  vec1 = seq(1, 10),
  vec2 = c("Yes", "No"),
  vec3 = c(T, F),
  vec4 = c(1, 1, 1, 2, 2, 2)
)

#Q7
prime_factor <- list(
  first = 2,
  second = 3,
  third = 2,
  forth = 5,
  fifth = c(2,3),
  sixth = 7,
  seventh = 2,
  eighth = 3
)

prime_factor

#Q8
list2 <- list(
  A = seq(100,200),
  B = c("a","b","c"),
  C = matrix(seq(1,10),5,2)
)
list2

#Q9

indian_movies <- list(
  movies_name = c("DDLJ","KKKG","MYKSH"),
  revenue = c(2.3,4.5,5.6)
) 
indian_movies

