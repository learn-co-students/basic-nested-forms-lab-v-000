class RecipesController < ApplicationController
  before_action :set_recipe!, only:[:show]

  def index
    @recipes = Recipe.all
  end

  def show

  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(name: 'name')
    @recipe.ingredients.build(quantity: 'quantity')
  end

  def create
    @recipe = Recipe.new(recipe_params)
#binding.pry
    @recipe.save
    redirect_to recipe_path(@recipe)
  end

  private

  def recipe_params
    params.require(:recipe).permit(
      :title,
      ingredients_attributes: [
        :id,
        :name,
        :quantity
        ]
      )
  end

  def set_recipe!
  @recipe = Recipe.find(params[:id])
end
end
