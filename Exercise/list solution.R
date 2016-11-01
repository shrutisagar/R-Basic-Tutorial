#Q1
employee <- list(
  Id = paste0("A",(101:105)),
  Ename = c("Alice","Ron","Peter","Sherly","Marissa"),
  Dept = c("Finance","Marketing","Operations"),
  City = c("Bangalore","New York"),
  Salary = c(70000,710000,720000,730000,740000,750000)
)
employee
#Q2
Three_idiots_list <- list(
  moviename = "3 idiots",
  actors = c("Amir Khan","R Madhavan","Sharman Joshi","Boman Irani","Kareena Kapoor","Omi Vaidya"),
  ratings = matrix(c(4.25,4.50,3.50,4.50,2.00),5,1,dimnames = list(c("IMDB","TOI","HT","NDTV","REDIFF"),"STARS"))
)
Three_idiots_list

#Q3

last_actor <- Three_idiots_list$actors[6]
last_actor

second_ratings <- list(Three_idiots_list$ratings[2,],rownames(Three_idiots_list$ratings)[2]) 
second_ratings

Three_idiots_list_full <- c(Three_idiots_list,year=2009)
Three_idiots_list_full
