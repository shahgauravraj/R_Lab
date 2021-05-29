# asking user for number of items to be entered
n <- as.integer(readline("Enter n: "))

# Creating three different variables
usn <- array(dim = n)
name <- array(dim = n)
marks <- array(dim = n)

# Reading each value given by the user
for (i in 1:n) {
  print("-----------------------------------------")
  usn[i] <- as.integer(readline("Enter USN: "))
  name[i] <- as.character(readline("Enter name: "))
  marks[i] <- as.integer(readline("Enter marks: "))
}

# creating dataframe out of given data
df <- data.frame(usn, name, marks)
print(df)

# creating new variable age
age <- array(dim = n)

#reading age of each student from user
for (i in 1:n) {
  age[i] <- as.integer(readline(sprintf("Enter age of student %d: ", i)))
}

#binding the new age column to the dataframe
newdf <- cbind(df, age)
print(newdf)

#printing summary
print(summary(newdf))

newdf2 <- newdf

# hashing out students whose age is less than 20 and marks is greater than 25 
print("Students whose age is less than 20 and marks is greater than 25 are: ")
for (i in 1:nrow(newdf2)) {
  if(newdf2[i, ]$age < 20 & newdf2[i, ]$marks > 25) {
    print(newdf2[i, ])
  }
}