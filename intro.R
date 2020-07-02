library("tidyverse")
library("magrittr")
library("swirl")

# Open RStudio and create a new R script called Intro.R
# The iris dataset is part of the datasets package that is automatically loaded. Copy this dataset to a variable called iris_data.
iris_data <- iris
# Use the str() function to look at iris_data, and answer the following questions (using comments in your script):
str(iris_data)

#   a. What is the datatype of iris_data? 
#   b. How many columns does it have? how many rows?

#      'data.frame':	150 obs. of  5 variables:
#       $ Sepal.Length: num 
#       $ Sepal.Width : num  
#       $ Petal.Length: num  
#       $ Petal.Width : num  
#       $ Species     : Factor w/ 3 levels

#   Create a vector called sepal_area by multiplying the columns Sepal.Width and Sepal.Length in iris_data.
sepal_area <- iris_data$Sepal.Length * iris_data$Sepal.Width
names(sepal_area) <- "Area"
# Use the mean() function to find the average sepal_area, and store this in a variable called avg_sepal_area. Use a comment to show what this value is rounded to 4 decimal places.
avg_sepal_area <- mean(sepal_area)
avg_sepal_area <- round(avg_sepal_area, digits = 4)
print(paste("mean up to 4 digit is ", avg_sepal_area))

# Use a for-loop to print "Sepal area is " and the area for each value in the vector. Use the paste() or paste0() function to concatenate strings.
for (i in sepal_area) {
  print(paste0("sepal area is ", i))
}

# Now create a new column in the iris_data dataframe called Avg.Sepal.Area.
iris_data$Avg.Sepal.Area <- sepal_area

# Copy the following code to your script: 
species_counts <- table(iris_data$Species) 
# and use the barplot() function to display the counts. Use a comment to note which species has the most observations in the dataset.
barplot(species_counts)

# Use the Help menu to examine the plot() function. You can either search under the Help tab in the Files Pane or type "?plot" in the console.
par(mfrow = c(1, 2)) #pasted from below

# a. Create a plot showing how petal width (y) varies with petal length (x).
plot(iris_data$Petal.Length,iris_data$Sepal.Width,xlab = "Length",ylab = "Width", main = "Petal")

# b. Create a plot showing how sepal length (y) varies with petal length (y).
plot(iris_data$Sepal.Length,iris_data$Sepal.Width,xlab = "Length",ylab = "Width", main = "Sepal")

# Look at the documentation for the par() function.
# a. Paste the following code above your two plot calls: par(mfrow = c(1, 2)).

# b. Run the par() command and the two plot commands. Click 'Zoom' to get a better look at the plots.

# Take a look at the mtcars dataset with View(mtcars)


# a. What is drat? (hint - take a look at the documentation). Show your answer in a comment.
# [Answer] Per documentation, it's "Rear axle ratio"

# b. Use the min() and max() functions to find the minimum and maximum 1/4 mile time.
min(mtcars[,7])
max(mtcars[,7])
# c. Look on the 'mtcars' tab that opened in your source pane with the View() command. 
# Sort the data by the qsec column to see which car has the slowest time and which has the fastest. Record your findings in a comment.
sort(mtcars[,7], decreasing = TRUE) # [Answer] Per result, it ranges from 14.50 to 22.90

# Create counts by number of cylinders for the dataset and use them to create a barplot. Which type of engine (number of cylinders) is most prevalent in the data?
mtcars_cyl <- mtcars %>%
    group_by(cyl) %>%
    summarize(cnt_cyl = n())
ggplot(mtcars_cyl, aes(x=cyl,y=cnt_cyl))+geom_bar(stat = "identity")
#   Write a for-loop that iterates through the mtcars dataframe. If the car is has 8 cylinders, print " is a gas guzzler."

# Work through the code examples in the slides that use the starwars data. Use pipes to create a new view of the data.
# Install and load the swirl package. Work through the 'Introduction to Statistical Inference' course. Typing info at a prompt will show you options for exiting swirl.

