#Q1
grade <- c("A","B","A","B","B","C","C","C","B","A","B","C","C")
grade_factor <- factor(grade)
grade_factor

#Q2
grade_factor <- factor(grade,levels = c("C","B","A"))
grade_factor

#Q3
rating <- c("agree","Strogly agree","disagree","Strogly disagree","neutral")
order_factor <- factor(rating,levels = c("Strogly disagree","disagree","neutral","agree","Strongly agree"))
order_factor
