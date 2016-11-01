##Q1
hobbit_matrix <-
  matrix(
    c(460.99, 314.40, 290.47, 247.90, 309.31, 165.80),
    3,
    2,
    byrow = T,
    dimnames = list(
      c(
        "An Unexpected Journey",
        "The Desolation of Smaug",
        "The Battle of the Five Armies"
      ),
      c("US", "Non-US")
    )
  )
hobbit_matrix
##Q2
worldwide_vector <- apply(hobbit_matrix, 1, sum)
worldwide_vector

##Q3cbind-for column bind
hobbit_matrix2 <- cbind(hobbit_matrix, worldwide_vector)
hobbit_matrix2
#?cbind

##Q4
lord_of_the_rings_matrix <-
  matrix(
    c(474.51, 552.57, 310.76, 338.72, 380.33, 468.51),
    3,
    2,
    byrow = T,
    dimnames = list(
      c(
        "The Fellowship of the Ring",
        "The Two Towers",
        "The Return of the King"
      ),
      c("US", "Non-US")
    )
  )
lord_of_the_rings_matrix

all_hobbit_matrix <-
  rbind(hobbit_matrix, lord_of_the_rings_matrix)
all_hobbit_matrix

##Q5
total_revenue_vector <-
  apply(all_hobbit_matrix, 2, sum)
total_revenue_vector

#Q6 a 

non_us_all <- mean(all_hobbit_matrix[, 2])
non_us_all

##Q6 b
total_row <- nrow(all_hobbit_matrix)

#starting position for last 3 rows
start <- (total_row - 3) + 1
us_lord_of_rings <- mean(all_hobbit_matrix[start:total_row, 1])
us_lord_of_rings

#Q7
visitors <- round(all_hobbit_matrix / 5)
visitors


##Q8
ticket_prices_matrix <-
  matrix(c(3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8),
         6,
         2,
         byrow = T,
         dimnames = list(
           c(
             "An Unexpected Journey",
             "The Desolation of Smaug",
             "The Battle of the Five Armies",
             "The Fellowship of the Ring",
             "The Two Towers",
             "The Return of the King"
           ),
           c("US", "Non-US")
         ))
ticket_prices_matrix

#Q8 a
visitors <- round(all_hobbit_matrix / ticket_prices_matrix)
visitors["Non-US"]

#Q8 b
average_us_visitors <- round(mean(visitors[,"US"]))
average_us_visitors

#Q8 c
average_non_us_visitors <- round(mean(visitors[,"Non-US"]))
average_non_us_visitors
