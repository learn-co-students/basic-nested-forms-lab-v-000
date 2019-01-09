class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
    @recipe.ingredients.build
    @recipe.ingredients.build
  end

  def create
    Recipe.create(recipe_params)
    redirect_to recipes_path
  end
  
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
    @recipe = Recipe.new
  end
  
  private

  def recipe_params
    params.require(:recipe).permit(:title, :name, ingredients_attributes: [
      :name,
      :quantity])
  end 
    
end 
  