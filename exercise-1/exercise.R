# chapter 8 Exercise 1: creating and accessing lists
Joy Liu 4/6/2018

# Create a vector `my_breakfast` of everything you ate for breakfast
my_breakfast <- c("egg", "salad")
print(my_breakfast)

# Create a vector `my_lunch` of everything you ate (or will eat) for lunch
my_lunch <- c("chicken breast", "cherry tomato","salad")

# Create a list `meals` that has contains your breakfast and lunch
meals <- list(breakfast = my_breakfast, lunch = my_lunch)

# Add a "dinner" element to your `meals` list that has what you plan to eat 
# for dinner 

meals$dinner <- "coffee"

# Use dollar notation to extract your `dinner` element from your list
# and save it in a vector called 'dinner'
dinner <- meals$dinner


# Use double-bracket notation to extract your `lunch` element from your list
# and save it in your list as the element at index 5 (no reason beyond practice)
meals[["lunch"]]
meals[[5]]<- meals[["lunch"]]
meals[[2]]
print(meals)

# Use single-bracket notation to extract your breakfast and lunch from your list
# and save them to a list called `early_meals`
early_meals <- meals[1:2]
early_ <- c(meals[["breakfast"]], meals[["lunch"]])

### Challenge ###

# Create a list that has the number of items you ate for each meal
# Hint: use the `lappy()` function to apply the `length()` function to each item

number_of_items <- lapply(meals,length)

# Write a function `add_pizza` that adds pizza to a given meal vector, and
# returns the pizza-fied vector

add_food <- function(meal) {
  meal <- c(meal, "pizza")
  return(meal)
}


# Create a vector `better_meals` that is all your meals, but with pizza!

fatter_meals <- lapply(meals,add_food)
