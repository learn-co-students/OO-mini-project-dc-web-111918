class RecipeCard
  attr_accessor :user, :recipe, :date, :rating

  @@all = []

  def self.all
    @@all
  end

  def initialize(user, recipe, rating, date=Time.now)
    @user = user
    @recipe = recipe
    @rating = rating
    @date = date
    self.class.all << self
  end

end
