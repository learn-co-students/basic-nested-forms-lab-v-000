class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(quantity: "1 cup")
    @recipe.ingredients.build(quantity: "1 tablespoon")
    # @recipe.save
  end

  def create
    # raise params.inspect
    @recipe = Recipe.create(recipe_params)
    # redirect_to recipe_path
    redirect_to recipe_path(id: @recipe.id)
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, ingredients_attributes: [
      :name,
      :quantity
      ])
  end
end
