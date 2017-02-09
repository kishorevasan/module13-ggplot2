# Exercise 1: ggplot2 basics

# Install and load `ggplot2`
# You will also want to load `dplyr`
<<<<<<< HEAD
library(ggplot2)
library(dplyr)

||||||| merged common ancestors
install.packages("ggplot2")
library("ggplot2")
library("dplyr")
=======

>>>>>>> e785138e326afca3835b10fc8f7be8f34106b31a

# For this exercise you'll be working with the `diamonds` data set included in the ggplot2 library
# Use `?diamonds` to get more information about this data set (including the column descriptions
# Also check the _column names_ and the _number of rows_ in the data set
<<<<<<< HEAD
colnames(diamonds)
||||||| merged common ancestors
?diamonds
colnames(diamonds)
nrow(diamonds)
=======
>>>>>>> e785138e326afca3835b10fc8f7be8f34106b31a

<<<<<<< HEAD
# This data set has a lot of rows. To make things a bit more readable,
||||||| merged common ancestors
# This data set has a lot of rows. To make things a bit more readable, 
=======

# This data set has a lot of rows. To make things a bit more readable,
>>>>>>> e785138e326afca3835b10fc8f7be8f34106b31a
# use dplyr's `sample_n()` function to get a random 1000 rows from the data set
# Store this sample in a variable `diamonds.sample`
<<<<<<< HEAD
diamonds.sample <- sample_n(diamonds,1000)
||||||| merged common ancestors
diamonds.sample <- sample_n(diamonds, 1000)
=======

>>>>>>> e785138e326afca3835b10fc8f7be8f34106b31a

# Start by making a new `ggplot` with the `diamonds.sample` as the data (no geometry yet)
# What do you see?
<<<<<<< HEAD
ggplot(diamonds.sample)
||||||| merged common ancestors
ggplot(data = diamonds.sample)
=======
>>>>>>> e785138e326afca3835b10fc8f7be8f34106b31a

<<<<<<< HEAD
# Draw a scatter plot (with point geometry) with for the `diamonds.sample` set,
||||||| merged common ancestors
# Draw a scatter plot (with point geometry) with for the `diamonds.sample` set, 
=======

# Draw a scatter plot (with point geometry) with for the `diamonds.sample` set,
>>>>>>> e785138e326afca3835b10fc8f7be8f34106b31a
# with the `carat` mapped to the x-position and `price` mapped to the y-position.
<<<<<<< HEAD
ggplot(data = diamonds.sample,mapping = aes(x=carat,y=price))+
  geom_point()+
  geom_smooth(se=FALSE)
||||||| merged common ancestors
ggplot(data = diamonds.sample) +
  geom_point(mapping = aes(x = carat, y = price))
=======

>>>>>>> e785138e326afca3835b10fc8f7be8f34106b31a

# Draw the same plot as above, but color each of the points based on their clarity.
<<<<<<< HEAD
ggplot(data = diamonds.sample,mapping = aes(x=carat,y=price,color=clarity))+
  geom_point()+
  geom_smooth(se=FALSE)

||||||| merged common ancestors
ggplot(data = diamonds.sample) +
  geom_point(mapping = aes(x = carat, y = price, color=clarity))
=======

>>>>>>> e785138e326afca3835b10fc8f7be8f34106b31a

# Draw the same plot as above, but for the entire `diamonds` data set. Note this may take
# a few seconds to generate.
<<<<<<< HEAD
ggplot(data = diamonds,mapping = aes(x=carat,y=price,color=clarity))+
  geom_point()+
  geom_smooth(se=FALSE)

||||||| merged common ancestors
ggplot(data = diamonds) +
  geom_point(mapping = aes(x = carat, y = price, color=clarity))
=======

>>>>>>> e785138e326afca3835b10fc8f7be8f34106b31a

# Draw another scatter plot for `diamonds.sample` of price (y) by carat (x),
# but with all of the dots colored "blue".
# Hint: you'll need to set the color channel, not map a value to it!
<<<<<<< HEAD
ggplot(data = diamonds.sample,mapping = aes(x=carat,y=price))+
  geom_point(color="blue")+
  geom_smooth(se=FALSE,color="red")

||||||| merged common ancestors
ggplot(data = diamonds) +
  geom_point(mapping = aes(x = carat, y = price), color="blue")
=======

>>>>>>> e785138e326afca3835b10fc8f7be8f34106b31a

# Draw a scatter plot for `diamonds.sample` of `price` by `carat`, where each
# point has an aesthetic _shape_ based on the diamond's `cut`.
<<<<<<< HEAD
ggplot(data = diamonds.sample,mapping = aes(x=carat,y=price,shape = cut))+
  geom_point(color="blue")+
  geom_smooth(se=FALSE,color="red")

||||||| merged common ancestors
ggplot(data = diamonds.sample) +
  geom_point(mapping = aes(x = carat, y = price, shape=cut))
=======

>>>>>>> e785138e326afca3835b10fc8f7be8f34106b31a

# Draw a scatter plot for `diamonds.sample` of *`cut`* by `carat`, where each
# point has an aesthetic _size_ based on the diamond's *`price`*
<<<<<<< HEAD
ggplot(data = diamonds.sample,mapping = aes(x=carat,y=cut,size = price))+
  geom_point(color="blue")+
  geom_smooth(se=FALSE,color="red")

||||||| merged common ancestors
ggplot(data = diamonds.sample) +
  geom_point(mapping = aes(x = carat, y = cut, size=price))
=======

>>>>>>> e785138e326afca3835b10fc8f7be8f34106b31a

# Try coloring the above plot based on the diamond's price!
<<<<<<< HEAD
ggplot(data = diamonds.sample,mapping = aes(x=carat,y=cut,size = price,color=price))+
  geom_point()+
  geom_smooth(se=FALSE)


||||||| merged common ancestors
ggplot(data = diamonds.sample) +
  geom_point(mapping = aes(x = carat, y = cut, size=price, color=price))
=======

>>>>>>> e785138e326afca3835b10fc8f7be8f34106b31a

# Draw a line plot (with line geometry) for `diamonds.sample`. The x-position should be mapped to
# carat, y-position to price, and color to carat.
<<<<<<< HEAD
ggplot(data = diamonds.sample,mapping = aes(x=carat,y=price,color = carat))+
  geom_point()
  

||||||| merged common ancestors
ggplot(data = diamonds.sample) +
  geom_line(mapping = aes(x = carat, y = price, color=cut))
=======

>>>>>>> e785138e326afca3835b10fc8f7be8f34106b31a

# That's kind of messy. Try using `smooth` geometry instead.
<<<<<<< HEAD
ggplot(data = diamonds.sample,mapping = aes(x=carat,y=price,color = carat))+
  geom_point()+
  geom_smooth(se=FALSE)

||||||| merged common ancestors
ggplot(data = diamonds.sample) +
  geom_smooth(mapping = aes(x = carat, y = price, color=cut))
=======

>>>>>>> e785138e326afca3835b10fc8f7be8f34106b31a

# Draw a plot with bar geometry (a bar chart), mapping the diamond's `cut` to the x-axis
<<<<<<< HEAD
ggplot(data = diamonds.sample,mapping = aes(x=cut))+
  geom_bar()

||||||| merged common ancestors
ggplot(data = diamonds) +  # full data set example
  geom_bar(mapping = aes(x = cut))
=======

>>>>>>> e785138e326afca3835b10fc8f7be8f34106b31a

# Add an aesthetic property that will _fill_ each bar geometry based on the `clarity` of the diamonds
# What kind of chart do you get?
<<<<<<< HEAD
ggplot(data = diamonds.sample,mapping = aes(x=cut,fill=clarity))+
  geom_bar()


||||||| merged common ancestors
ggplot(data = diamonds.sample) +
  geom_bar(mapping = aes(x = cut, fill=clarity))
=======

>>>>>>> e785138e326afca3835b10fc8f7be8f34106b31a

# Draw a histogram of diamond prices.
# Try mapping each bar based on clarity as well!
<<<<<<< HEAD
hist(diamonds$price)

ggplot(data = diamonds.sample,mapping = aes(x=clarity,fill=clarity))+
  geom_bar()
||||||| merged common ancestors
ggplot(data = diamonds.sample) +
  geom_histogram(aes(x=price, fill=clarity))
=======

>>>>>>> e785138e326afca3835b10fc8f7be8f34106b31a

# (For a more traditional "bell-curve", make a histogram of diamond `depths`)
hist(diamonds$depth)

# Draw a plot of the `diamonds.sample` data (price by carat), with both points for each
# diamond AND smoothed lines for each cut (hint: in a separate color)
# Making the points have some `alpha` transparency will make the plot look nicer

# multiple geoms (point & smooth)


## Bonus
# Draw a bar chart of average diamond prices by clarity, and include "error bars" marking
# the standard error of each measurement.
#
# You can calculate standard error as the _standard deviation_ divided by the square root
# of the number of measurements (prices)

# Start by creating a data frame `diamond.summary` that includes summarized data for each clarity group.
# Your summary data shuld include the mean price and the standard error of the price.


# Then draw the plot. The error bars should stretch from the mean-error to the mean+error.
