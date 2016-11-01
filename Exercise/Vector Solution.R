##Q1 and Q2
stock_hcl <-
  c(
    Monday = 140,
    Tuesday = -50,
    Wednesday = 20,
    Thursday = -120,
    Friday = 240
  )
stock_hcl
stock_hul <-
  c(
    Monday = -24,
    Tuesday = -50,
    Wednesday = 100,
    Thursday = -350,
    Friday = 10
  )
stock_hul

##USING NAMES METHOD
stock_hcl1 <- c(140, -50, 20, -120, 240)
names(stock_hcl1) <-
  c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
stock_hcl1


##
stock_hUl1 <- c(-24, -50, 100, -350, 10)
names(stock_hUl1) <-
  c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
stock_hUl1


##Q3
prlossdaily <- (stock_hul + stock_hcl)
prlossdaily

##Q4
total_hcl <- sum(stock_hcl)
total_hcl
total_hul <- sum(stock_hul)
total_hul
totalprofit <- sum(prlossdaily)
totalprofit

##Q5
answer <- (total_hcl > total_hul)
answer

##Q6
hcl_Wednesday <- stock_hcl["Wednesday"]
hcl_Wednesday

##Q7
hcl_midweek <-
  stock_hcl[c("Tuesday", "Wednesday", "Thursday")]
hcl_midweek
average_midweek_gain <- mean(hcl_midweek)
average_midweek_gain

##Q8
earnhcl_vector <- (stock_hcl > 0)
earnhcl_vector
hclearing_days <- stock_hcl[earnhcl_vector]
hclearing_days

##Q9
hcl_earning_days <- (stock_hcl[stock_hcl > 0])
hcl_earning_days

##Q10
hul_earning_days <- (stock_hul[stock_hul > 0])
hul_earning_days
