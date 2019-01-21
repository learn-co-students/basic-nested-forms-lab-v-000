class RecipesController < ApplicationController

  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(:quantity=> "quantity")
    @recipe.ingredients.build(:name=> "name")
  end

  def create
    @recipe = Recipe.create(receipe_params)
    redirect_to @recipe
  end

private

  def receipe_params
    params.require(:recipe).permit(:title, ingredients_attributes: [ :name, :quantity ])
  end



end
