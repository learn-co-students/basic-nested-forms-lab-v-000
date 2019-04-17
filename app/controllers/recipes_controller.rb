class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
     
  end

  def create
    @recipe = Recipe.create(recipes_params)
    # redirect_to recipe_route(@recipe)
  end

  private 

  def recipes_params
    params.require(:recipe).permit(:title, ingredients_attributes:[:id, :name, :quantity])

  end 
end
