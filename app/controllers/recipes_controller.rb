class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(quantity: 'quantity')
    @recipe.ingredients.build(name: 'name')
  end

  def create
    @recipe = Recipe.new(recipe_params)
  if @recipe.save
    redirect_to @recipe
  else
    render :new
  end
  end
end

private

def recipe_params
  params.require(:recipe).permit(:title, ingredients_attributes: [:quantity, :name] )
end
