class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    10.times do
      @recipe.ingredients.build
    end
  end

  def create
    @recipe = Recipe.create(recipe_params)
    redirect_to recipe_path(@recipe)
  end

  def recipe_params
    params[:recipe][:ingredients_attributes].reject! { |k,v| v.values == ["", ""] }
    params.require(:recipe).permit(:title,
      ingredients_attributes: [
        :name,
        :quantity
      ])
  end
end
