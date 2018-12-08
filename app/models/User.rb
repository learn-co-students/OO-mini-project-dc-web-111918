class User
  attr_accessor :name, :allergen

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def declare_allergen(ingredient)
    new_allergern = Allergen.new(self, ingredient)
    new_allergern
  end

  def allergens
    Allergen.all.select {|all| all.user == self}
  end

  def recipe_cards
    RecipeCard.all.select {|rc| rc.user == self}
  end

  def recipes
    recipe_cards.map {|rc|rc.recipe}
  end

  def add_recipe_card(recipe, rating, date=Time.now)
    new_card = RecipeCard.new(self, recipe, rating)
    new_card
  end

  def top_three_recipes
    hash = Hash.new
    recipe_cards.each {|rc| hash[rc.recipe] = rc.rating}
    results = hash.max_by(3){|recipe,rating| rating}
    results.map {|res| res[0]}
  end

  def most_recent_recipe
    recipe_cards.last
  end


end
