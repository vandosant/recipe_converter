class RecipeConverter
  attr_reader :ingredients

  def initialize(ingredients)
    @ingredients = ingredients
  end

  def convert_amount(units)
    converted_amount = Array.new
    @ingredients.each do |ingredient, amount|
      if units == 'tablespoons'
        new_amount = (amount.to_f/15).round(2)
      end

      if units == 'cups'
        amount_in_tablespoons = (amount.to_f/15).round(2)
        new_amount = (amount_in_tablespoons.to_f/16).round(2)
      end
      converted_amount << {ingredient => new_amount}
    end
    converted_amount
  end
end