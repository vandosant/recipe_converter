require 'recipe_converter'

describe RecipeConverter do
  it "holds a list of ingredients and amounts in grams" do
    test_recipe = RecipeConverter.new(:sugar => 100, :flour => 400, :butter => 35)
    actual = test_recipe.ingredients
    expected = {:sugar => 100, :flour => 400, :butter => 35}

    expect(actual).to eq expected
  end

  it "converts the amount of each ingredient to tablespoons" do
    test_recipe = RecipeConverter.new(:sugar => 100, :flour => 400, :butter => 35)
    actual = test_recipe.convert_amount('tablespoons')
    expected = [{:sugar => 6.67}, {:flour => 26.67}, {:butter => 2.33}]

    expect(actual).to eq expected
  end

  it "converts the amount of each ingredient to cups" do
    test_recipe = RecipeConverter.new(:sugar => 550, :flour => 800, :butter => 350)
    actual = test_recipe.convert_amount('cups')
    expected = [{:sugar => 2.29}, {:flour => 3.33}, {:butter => 1.46}]

    expect(actual).to eq expected
  end
end