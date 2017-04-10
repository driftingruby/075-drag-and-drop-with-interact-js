pizza = Food.create(name: 'Pizza')
sushi = Food.create(name: 'Sushi')
spaghetti = Food.create(name: 'Spaghetti')

rice = Ingredient.create(name: 'Rice')
tuna = Ingredient.create(name: 'Tuna')
seaweed = Ingredient.create(name: 'Seaweed')

ground_beef = Ingredient.create(name: 'Ground Beef')
tomato_sauce = Ingredient.create(name: 'Tomato Sauce')

flour = Ingredient.create(name: 'Flour')
cheese = Ingredient.create(name: 'Cheese')
pepperoni = Ingredient.create(name: 'Pepperoni')

pizza.recipies.create(ingredient: flour)
pizza.recipies.create(ingredient: cheese)
pizza.recipies.create(ingredient: pepperoni)
pizza.recipies.create(ingredient: tomato_sauce)

sushi.recipies.create(ingredient: rice)
sushi.recipies.create(ingredient: tuna)
sushi.recipies.create(ingredient: seaweed)

spaghetti.recipies.create(ingredient: ground_beef)
spaghetti.recipies.create(ingredient: tomato_sauce)
spaghetti.recipies.create(ingredient: flour)