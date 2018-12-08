class Recipe
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.most_popular
    hash = Hash.new(0)
    RecipeCard.all.map {|rc| hash[rc.recipe] += 1}
    hash.max_by{|k,v| v}[0]
  end

  def recipe_cards
    RecipeCard.all.select {|rc| rc.recipe == self}
  end

  def users
    recipe_cards.map {|rc| rc.user}
  end

  def recipe_ingredients
    RecipeIngredient.all.select {|ri| ri.recipe == self}
  end

  def ingredients
    recipe_ingredients.map {|ri|ri.ingredient}
  end

  def add_ingredients(ingredients_arr)
    #should take an array of ingredient instances as an argument, and associate each of those ingredients with this recipe
    ingredients_arr.map {|ing| RecipeCard.ingredient = ing}
  end

  def allergens
    #should return all of the ingredients in this recipe that are allergens

  end

end
