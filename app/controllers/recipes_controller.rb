class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(id: 1)
    @recipe.ingredients.build(id: 2)
    #binding.pry

  end

  def create
    Recipe.create(recipe_params)
  end

  def edit
  end

  def update
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, ingredients_attributes: [:name, :quantity])
  end

end
