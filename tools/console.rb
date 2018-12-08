require_relative '../config/environment.rb'

user1 = User.new("Clark")
user2 = User.new("Mike")
user3 = User.new("John")
user4 = User.new("Angela")

ing1 = Ingredient.new("Milk")
ing2 = Ingredient.new("Eggs")
ing3 = Ingredient.new("Flour")
ing4 = Ingredient.new("Potato")
ing5 = Ingredient.new("Mayo")
ing6 = Ingredient.new("Salt")
ing7 = Ingredient.new("Water")

all1 = Allergen.new(user1, ing1)
all2 = Allergen.new(user3, ing1)
all3 = Allergen.new(user2, ing2)
all4 = Allergen.new(user1, ing2)
all5 = Allergen.new(user1, ing3)

rec1 = Recipe.new("Borcht")
rec2 = Recipe.new("Seafood Chowder")
rec3 = Recipe.new("Potato salad")
rec4 = Recipe.new("Mashed Potato")


rec_c1 = RecipeCard.new(user1, rec2, 5)
rec_c2 = RecipeCard.new(user2, rec3, 3)
rec_c3 = RecipeCard.new(user1, rec1, 5)
rec_c4 = RecipeCard.new(user3, rec1, 4)
rec_c5 = RecipeCard.new(user3, rec2, 3)
rec_c6 = RecipeCard.new(user3, rec3, 1)
rec_c7 = RecipeCard.new(user4, rec1, 5)
rec_c8 = RecipeCard.new(user1, rec3, 1)
rec_c9 = RecipeCard.new(user1, rec4, 2)
rec_c10 = RecipeCard.new(user1, rec1, 3)

rec_ing1 = RecipeIngredient.new(rec3, ing4)
rec_ing2 = RecipeIngredient.new(rec3, ing5)
rec_ing3 = RecipeIngredient.new(rec3, ing6)
rec_ing4 = RecipeIngredient.new(rec1, ing6)
rec_ing5 = RecipeIngredient.new(rec1, ing7)

# Ingredient.most_common_allergen
arr = [ing4, ing6, ing7]
# rec_ing1.ingredient
rec1.add_ingredients(arr)
# puts user1.top_three_recipes


# user1.declare_allergen(ing1)
# user1.allergens
# Recipe.most_popular
# rec1.users
# puts rec3.ingredients
# user1.most_recent_recipe

binding.pry
