class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    2.times{@recipe.ingredients.build}
    # @recipe.ingredients.build(name: 'sugar', quantity: '1 cup')
    # @recipe.ingredients.build(name: 'flour', quantity: '2 cups')
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.ingredients_attributes=(params[:recipe][:ingredients_attributes])

    if @recipe.save
      redirect_to @recipe #/recipes/#{@recipe.id}
    else
      render :new
    end
  end


  private

  def recipe_params
    params.require(:recipe).permit(
    :title, ingredient_attributes: [:name, :quantity]
    )
  end
end
