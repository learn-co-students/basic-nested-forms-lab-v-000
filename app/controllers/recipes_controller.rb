class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    2.times { @recipe.ingredients.build }
  end

  def create
    recipe = Recipe.create(recipe_params)
    redirect_to recipe_path(recipe)
  end

  # We have new params keys, which means we need to modify our recipe_params
  def recipe_params
    params.require(:recipe).permit(
      :title, 
      ingredients_attributes: [
        :name,
        :quantity
      ]
    )
  end

end
