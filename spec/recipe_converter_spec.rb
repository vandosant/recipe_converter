require 'recipe_converter'

describe RecipeConverter do
  it "holds a list of ingredients and amounts" do
    test_recipe = RecipeConverter.new(:sugar => 100, :flour => 400, :butter => 35)
    actual = test_recipe.ingredients
    expected = {:sugar => 100, :flour => 400, :butter => 35}

    expect(actual).to eq expected
  end
end