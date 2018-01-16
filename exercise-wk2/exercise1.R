## Part 1: Debugging

my.num <- 6
initials <- "?. ?."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# The sum command doesn't work because we cannot add a type char with ints

install.packages("stringr")

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# This doesn't work because you haven't loaded the strinr library... you will need to install and load 

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# This doesn't work because we never created the variable initial, we only had "initials" with the s.


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
my.friends <- c("jose","min","chichi") 
typeof(my.friends)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(vect1, vect2) {
  dif <- abs(length(vect1) - length(vect2))
  diff.string <- paste0("The difference in lengths is", dif)
  return (diff.string)
}

# Pass two vectors of different length to your `CompareLength` function
print(CompareLength(c("a", "b"), 1:20))

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(a, b) {
  Diff <- length(a) - length(b)
  if(Diff > 0) {
      text <- paste0("Your first vector is longer by ", diff, " elements.")
  } else {
    text <- paste0("Your second vector is longer by ", diff, " elements.")
  }
  return (text)
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(1:15, c(1,2,4))

# Write a function `CombineVectors` that takes in 3 vectors and combines them into one
CombineVector <- function(v1, v2, v3) {
  return( c(v1, v2, v3))
}

# Send 3 vectors to your function to test it.
CombineVector(1:15, c(1,2,4), c("a", "b"))

# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters
CapsTime <- function(courses) {
  gsub("[0-9]","", courses)
}

