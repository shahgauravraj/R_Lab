#Exploring datasets in R

# Listing the data set available here
print(data())

# Select “mtcars” data set, find and display the number of rows and columns in that data set
mtcarsdf <- mtcars
print(nrow(mtcarsdf))
print(ncol(mtcarsdf))

# Finding if there are more automatic (0) or manual (1) transmission-type cars in the dataset
AT <- 0
MT <- 0

for (i in 1:nrow(mtcarsdf)) {
  if (mtcarsdf[i, 9] == 1) {
    AT = AT + 1
  } else if (mtcarsdf[i, 9] == 0) {
    MT = MT + 1
  }
}

print(sprintf("Number of Automatic Transmission Cars: %d", AT))
print(sprintf("Number of Manual Transmission Cars: %d", MT))

# Getting scatter plot of ‘hp’ vs ‘weight’
plot(mtcarsdf$hp, mtcarsdf$wt, main = "horsepower vs weight", xlab = "horsepower", ylab = "weight")

# Changing ‘am’, ‘cyl’ and ‘vs’ to integer
mtcarsdf$am <- as.integer(mtcarsdf$am)
mtcarsdf$cyl <- as.integer(mtcarsdf$cyl)
mtcarsdf$mpg <- as.integer(mtcarsdf$mpg)

# storing the new dataset as ‘newmtc’
newmtc <- mtcarsdf
print(str(newmtc))

# Extracting the cases where cylinder is less than 5
newdf <- data.frame()

for (i in 1:nrow(newmtc)) {
  if (newmtc[i, 2] > 5) {
    newdf <- rbind(newdf, newmtc[i, ])
  }
}
print(newdf)