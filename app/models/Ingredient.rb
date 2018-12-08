class Ingredient
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.most_common_allergen
    hash = Hash.new(0)
    Allergen.all.map {|all| hash[all.ingredient] += 1}
    hash.max_by{|k,v| v}[0]
  end

end
