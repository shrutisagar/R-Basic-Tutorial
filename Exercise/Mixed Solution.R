#Q1 a.
evenNo <- seq(2,50,2)
names(evenNo) <- paste0("a",1:length(evenNo))
evenNo[5]

#Q1 b.
multiple_of_3 <- seq(3,60,3)
multiple_of_3[5]
sum(multiple_of_3)
mean(multiple_of_3)
max(multiple_of_3)
min(multiple_of_3)

#Q1 c.
var <- c("F","F","S","S","M","F")
names(var) <- paste0("Patient ",1:6)
var
heart_rate <- factor(var,ordered=T,levels = c("S","M","F"),labels=c("Slow","medium","fast"))
heart_rate
heart_rate["Patient 2"] > heart_rate["Patient 5"]

#Q2
dilwale_list <- list(
  moviename = "Dilwale",
  actors = c(
    "Shah Rukh Khan",
    "Kajol",
    "Varun Dhawan",
    "Boman Irani",
    "Kirti
    Sanon",
    "Johny Lever"
  ),
  ratings = matrix(c(3.00, 4.00, 2.50, 2.50, 2.00), 5, 1, dimnames = list(
    c("IMDB", "TOI", "HT", "NDTV", "REDIFF"), "STARS"
  ))
)
dilwale_list
second_actor <- dilwale_list$actors[2]
second_actor
third_ratings <- c(rownames(dilwale_list$ratings)[3],dilwale_list$ratings[3,])
third_ratings
dilwale_list_full <- c(dilwale_list,year = 2015)
dilwale_list_full

#Q3 a.
students_marks <- c(A=40,B=50,C=30,D=50,E=60)
barplot(students_marks)

#Q3 b.
# Shorter length vector values will be repeated 
v1<- c(10,20,30,40,50,60)
v2<-c(2,3)
v3 <- v1 + v2
v3

#Q4
hra <- function(level)
{
  if(toupper(level) == "L1")
    hra = 5000
  else if(toupper(level) == "L2")
    hra = 7500
  else if(toupper(level) == "L3")
    hra = 10000
  else if(toupper(level) == "L4")
    hra = 12000
  return(hra)
}
hra("l4")

#Q4 b.
days <- function(revenue)
{
  month <- 0
  repeat {
    month = month + 1
    revenue <- revenue * (1 + 4 / 1200)
    if (revenue >= 2000000)
      break
    amt = revenue
  }
  return(month * 30)
}
days(20000)

#Q5
values <-
  c(460.99,
    314.40,
    290.47,
    NA,
    309.31,
    165.80,
    NA,
    552.57,
    310.76,
    338.72,
    380.33,
    468.51)
row_names <-
  c(
    "An Unexpected Journey",
    "The Desolation of Smaug",
    "The Battle of the Five Armies",
    "The Fellowship of the Ring",
    "The Two Towers",
    "The Return of the King"
  )
col_names <-
  c("US",
    "Non-US")
hobbit_movie <-
  matrix(values,
         6,
         2,
         byrow = T,
         dimnames = list(row_names, col_names))
hobbit_movie
colSums(hobbit_movie, na.rm = T)
rowMeans(hobbit_movie, na.rm = T)
