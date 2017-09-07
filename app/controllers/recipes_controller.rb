class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    # @ingredient1 = @recipe.ingredients.build
    # @ingredient2 = @recipe.ingredients.build
    @recipe.ingredients.build(name: '')
    @recipe.ingredients.build(name: '')
  end

  def create
    # raise params.inspect
    @recipe = Recipe.create(recipe_params)
    redirect_to recipe_path(@recipe)
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, ingredients_attributes: [:name, :quantity])
  end
end
