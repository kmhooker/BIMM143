#' ---
#' title: "Week 5 Data Visualization Lab"
#' author: "Kiley Hooker (PID A15441609)"
#' date: "February 7th, 2022"
#' ---

# Week 4 Data Visualization Lab

# Install the package ggplot2
# install.packages("ggplot2")

# Any time I want to use this package I need to load it
library(ggplot2)

View(cars)

# A quick base R plot - this is not ggplot
plot(cars)

# Our first ggplot
# we need data + aes + geoms
ggplot(data=cars)  + 
  aes(x=speed, y=dist) +
  geom_point()

p <- ggplot(data=cars)  + 
  aes(x=speed, y=dist) +
  geom_point()

# Add a line geom with geom_line()
p + geom_line()

# Add a trend line close to the data
p + geom_smooth()

p + geom_smooth(method = "lm")


#------------------# 


# Read in our drug expression data
url <- "https://bioboot.github.io/bimm143_S20/class-material/up_down_expression.txt"
genes <- read.delim(url)
head(genes)

# Q. How many genes in this dataset
nrow(genes)
# 5196 genes

# Q. How many 'up' regulated genes
table(genes$State)
# 127 up

# Q. What fraction of total genes is 
#     up-regulated
round((table(genes$State) / nrow(genes)) * 100, 2)

# Let's make a first plot attempt
g <- ggplot(genes) +
  aes(x=Condition1, y=Condition2, col=State) + 
  geom_point()

#g

# Add some color
# g + scale_color_manual(values=c("blue", "gray", "red")) +
#  labs(title="Gene Expression Changes Upon Drug Treatment", 
#       x="Control (no drug)", y="Drug Treatment") +
#  theme_bw()
# Had issues with the last plot when compiling which is why I added #



