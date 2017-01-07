# Exercise-2: more practice with basic syntax

# Create a variable `food` that stores your favorite kind of food


# Create a variable 'restaurant' that stores your favorite place to eat
restaurant <- "Ben & Jerry's"

# Create a variable `friends` equal to the number of friends you would like to eat with
friends <- 8

# Create a variable `meal.price`, which is how expensive you think one meal at the restaurant will be
meal.price <- 9

# Create a variable `total.cost` that has the total cost of your bill
total.cost <- friends * meal.price

# Create a variable 'total.cost.tip' to be the total cost including a 15% tip
total.cost.tip <- total.cost + (total.cost * 0.15)

# Create a variable 'price.limit' set to your spending budget
price.limit <- 100

# Create a boolean variable `too.expensive`, set to TRUE if the cost with the tip is greater than the price limit
too.expensive <- total.cost.tip > price.limit

# Create a variable `max.friends`, which is the maximum number of friends you can invite that is in range
# of your price limit
max.friends <- price.limit / meal.price