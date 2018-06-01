class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(name: "Pasta Salad", quantity: "1 cup")
    @recipe.ingredients.build(name: "Pasta Salad 2", quantity: "2 cups")
  end

  def create
    @recipe = Recipe.create(recipe_parmas)
    redirect_to recipe_path(@recipe)
  end

  private

  def recipe_parmas
    params.require(:recipe).permit(:title)
  end
end
