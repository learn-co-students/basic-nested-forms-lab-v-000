class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(quantity: '1 cup')
    @recipe.ingredients.build(quantity: '1 tablespoon')
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe
      @recipe.save
      redirect_to recipes_path
    end

  end
  private
  def recipe_params
    params.require(:recipe).permit(:title,ingredients_attributes: [
      :name,
      :quantity
      ])
  end
end
