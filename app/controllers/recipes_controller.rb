class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    10.times {@recipe.ingredients.build}
  end

  def create
    new_recipe=Recipe.new(recipe_params)
    new_recipe.save ? (redirect_to recipe_path(new_recipe)) : (render :new)
  end

  private

    def recipe_params
      new_params = params.require(:recipe).permit(:title, ingredients_attributes:[:name, :quantity])
      new_params[:ingredients_attributes].delete_if{|key, value| value[:name]==""}
      new_params
    end

  
end
