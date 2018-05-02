class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(quantity: '0')
    @recipe.ingredients.build(name: 'name')
  end

  def create

    @recipe = Recipe.create(recipe_params)
    #@recipe.ingredients.build(recipe_params[:ingredients_attributes])
    #byebug
    redirect_to recipe_path(@recipe)
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, ingredients_attributes: [
      :quantity,
      :name
      ])
  end
end
