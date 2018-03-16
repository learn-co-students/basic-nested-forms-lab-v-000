class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(name: '1', quantity: '0')
    @recipe.ingredients.build(name: '2', quantity: '0')
  end

  def create
    @recipe=Recipe.create(params.require(:recipe).permit(:title, ingredients_attributes: [:name, :quantity]))
    redirect_to recipe_path(@recipe)
  end
end
