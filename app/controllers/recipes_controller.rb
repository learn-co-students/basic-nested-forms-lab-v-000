class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(:name => 'First ingredient')
    @recipe.ingredients.build(:name => 'Next ingredient')
  end

  def create
    binding.pry
  end

  def create
    receipe = Recipe.create(recipe_params)
    redirect_to recipes_path
  end

  def recipe_params
    params.require(:recipe).permit(
      :title,
      ingredients_attributes: [
        :name,
        :quantity
      ]
    )
  end

end
