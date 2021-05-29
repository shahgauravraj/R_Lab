# Reading the number of items to be entered
n <- as.integer(readline("Enter n: "))

#creating data types
empid <- array(dim = n)
empname <- array(dim = n)
doj <- array(dim = n)
dept <- array(dim = n)
desg <- array(dim = n)

#reading n number of employees data from user
for (i in 1:n) {
  empid[i] <- as.integer(readline("Enter Employee ID: "))
  empname[i] <- as.character(readline("Enter Employee name: "))
  doj[i] <- as.character(readline("Enter Date of Joining: "))
  dept[i] <- as.character(readline("Enter Department name: "))
  desg[i] <- as.character(readline("Enter designation: "))
}

#creating employee data frame
df <- data.frame(empid, empname, doj, dept, desg)

#writing the data frame to employee.csv file
write.csv(df, file = "~/R_Lab/employees.csv")

#creating and appending new row to employee data
newdf <- data.frame("105", "XYZ", "13/02/2018", "ISE", "RA")
write.table(newdf, file = "~/R_Lab/employees.csv", 
            append = TRUE,  quote = FALSE, sep = ",", col.names = FALSE)

# reading employee.csv file
data <- read.csv("~/R_Lab/employees.csv")
print(data)