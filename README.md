1. Open RStudio and create a new R script called Intro.R
2. The iris dataset is part of the datasets package that is automatically loaded. Copy this dataset to a variable called iris_data.
3. Use the str() function to look at iris_data, and answer the following questions (using comments in your script):<br>
  a. What is the datatype of iris_data?<br>
  b. How many columns does it have? how many rows?
4. Create a vector called sepal_area by multiplying the columns Sepal.Width and Sepal.Length in iris_data. <br> Use the mean() function to find the average sepal_area, and store this in a variable called avg_sepal_area. Use a comment to show what this value is rounded to 4 decimal places.
5. Use a for-loop to print "Sepal area is " and the area for each value in the vector. Use the paste() or paste0() function to concatenate strings.
6. Now create a new column in the iris_data dataframe called Avg.Sepal.Area.
7. Copy the following code to your script: `species_counts <- table(iris_data$Species)` and use the barplot() function to display the counts. Use a comment to note which species has the most observations in the dataset.
8. Use the Help menu to examine the plot() function. You can either search under the Help tab in the Files Pane or type "?plot" in the console. <br>
  a. Create a plot showing how petal width (y) varies with petal length (x).<br>
  b. Create a plot showing how sepal length (y) varies with petal length (y).
9. Look at the documentation for the par() function.<br>
  a. Paste the following code above your two plot calls: `par(mfrow = c(1, 2))`.<br>
  b. Run the par() command and the two plot commands. Click 'Zoom' to get a better look at the plots.
10. Take a look at the mtcars dataset with `View(mtcars)`<br>
  a. What is drat? (hint - take a look at the documentation). Show your answer in a comment.<br>
  b. Use the min() and max() functions to find the minimum and maximum 1/4 mile time.<br>
  c. Look on the 'mtcars' tab that opened in your source pane with the View() command. Sort the data by the qsec column to see which car has the slowest time and which has the fastest. Record your findings in a comment.
11. Create counts by number of cylinders for the dataset and use them to create a barplot. Which type of engine (number of cylinders) is most prevalent in the data?
12. Write a for-loop that iterates through the mtcars dataframe. If the car is has 8 cylinders, print "<carname> is a gas guzzler."
13. Work through the code examples in the slides that use the starwars data. Use pipes to create a new view of the data.
14. Install and load the swirl package. Work through the 'Introduction to Statistical Inference' course. Typing info at a prompt will show you options for exiting swirl.
