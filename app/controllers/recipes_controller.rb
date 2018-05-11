class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(name: "First Ingredient Placeholder", quantity: 0)
    @recipe.ingredients.build(name: "Second Ingredient Placeholder", quantity: 0)
  end

  def create
    recipe = Recipe.create(rec_params)
    redirect_to recipe
  end
  
  private
  
  def rec_params
    params.require(:recipe).permit(:title, ingredients_attributes: [:id, :name, :quantity])
  end
end
