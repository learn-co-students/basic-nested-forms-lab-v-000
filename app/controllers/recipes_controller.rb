class RecipesController < ApplicationController
  def show
    puts params
    @recipe = Recipe.find(params[:id])
    if @recipe.ingredients.last.try(:name)
      @recipe.ingredients.build
    end
  end

  def index
    puts params
    @recipes = Recipe.all
  end

  def new
    puts params
    @recipe = Recipe.new
    10.times {@recipe.ingredients.build}
  end

  def create
    puts params
    @recipe = Recipe.create(recipe_params)
    redirect_to recipe_path(@recipe)
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, ingredients_attributes: [:id, :name, :quantity])
  end
end
