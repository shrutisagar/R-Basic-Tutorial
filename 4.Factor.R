################################################################
#                             FACTOR                           #
################################################################
# Factor is used to convert character vector to numeric sequence
# It is used mostly for categorical values

grade <- c("A", "B", "B", "B", "A", "C", "C", "B", "C", "A")
grade_factor <- factor(grade)
grade_factor

# To convert to integer sequence
as.integer(grade_factor)

# Two types of factors- Nominal Factor,Ordinal factor
# Nominal factor - used to differentiate values but cant be compared
# Ordinal factor - used to arrange values in ascending sequence
# default is Nominal factor

grade_factor[1] > grade_factor[2]  # because it is nominal cant compare so warning message
# To create Ordinal factor make-- ordered=T
# default order is ascending
grade_factor2 <- factor(grade, ordered = T)
grade_factor2

# To change order of factor values
# Here C will be smalest and A will be largest
grade_factor3 <-
  factor(grade, ordered = T, levels = c("C", "B", "A"))
grade_factor3

# Now we can compare as it is Ordinal
grade_factor3[1] > grade_factor3[2]

# Changing name of values of levels by use of labels
grade_factor4 <-
  factor(
    grade,
    ordered = T,
    levels = c("C", "B", "A"),
    labels = c("Third", "Second", "First")
  )

# To access Third factor
grade_factor4[grade_factor4 == "Third"]

# Create a factor with name "size_factor" from "size" vector
# Compare 3rd value with 5th value


size <- c("small", "large", "medium", "small", "large")
names(size) <- c("Philip", "Naveen", "Manish", "Ravi", "Rajesh")
size_factor <-
  factor(size,
         ordered = T,
         levels = c("small", "medium", "large"))
size_factor

# Comparing 3rd value with 5th value
# by the help of name
size_factor["Manish"] < size_factor["Rajesh"]
# by the help of index
size_factor[3] < size_factor[5]

# To see the factor value of Manish
size_factor["Manish"]
