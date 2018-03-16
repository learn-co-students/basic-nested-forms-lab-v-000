class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    #if @recipe.save
    @recipe.ingredients.build
    @recipe.ingredients.build
  #end
  end

  def create
    @recipe = Recipe.create(recipe_params)
    #if @recipe.save
    redirect_to recipes_path(@recipe)
    #end
  end

  def recipe_params
    params.require(:recipe).permit(:title, :ingredients_attributes => [:name, :quantity])
  end
end
