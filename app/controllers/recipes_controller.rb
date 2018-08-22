
class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(name: "example")
    @recipe.ingredients.build(name: "fill")
  end

  def create
    @recipe = Recipe.create(recipe_params)
    redirect_to recipe_path(@recipe)
  end
  
  def show
    @recipe = Recipe.find(params[:id])
  end
  
  private
  
  def recipe_params
    params.require(:recipe).permit(
      :title,
      ingredients: [
        :quantity,
        :name
      ]
    )
  end
  
end
