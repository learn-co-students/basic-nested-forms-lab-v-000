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
    # redirect_to recipes_route
  end

  private 

  def recipes_params
    params.require(:recipe).permit(:title, ingredients_attributes:[:name, :quantity])

  end 
end
