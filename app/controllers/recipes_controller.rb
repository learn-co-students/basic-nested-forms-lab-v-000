class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build
    @recipe.ingredients.build
  end

  def create
    Recipe.create(params.require(:recipe).permit(
      :title,
      ingredients_attributes: [
        :name,
        :quantity
        ]
      )
    )
    redirect_to recipes_path
  end
end
