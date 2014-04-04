class RecipeConverter
  attr_reader :ingredients

  def initialize(ingredients)
    @ingredients = ingredients
  end

  def to_tablespoons
    converted_ingredients = Array.new
    @ingredients.each do |ingredient, amount|
      tablespoons = (amount.to_f/15).round(2)
      converted_ingredients << {ingredient => tablespoons}
    end
    converted_ingredients
  end
end