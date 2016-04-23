class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    10.times do @recipe.ingredients.build end
  end

  def create
    @recipe = Recipe.create(recipe_params)

    @recipe.ingredients.each do |ingredient|
      @recipe.ingredients.delete(ingredient) if ingredient.name == ''
    end

    redirect_to recipe_path(@recipe)
  end

  def recipe_params
    params.require(:recipe).permit(:title, ingredients_attributes: [:name, :quantity])
  end
end
