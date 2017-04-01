class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
    if @recipe.ingredients.last.try(:name)
      @recipe.ingredients.build
    end
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    2.times { @recipe.ingredients.build } # Suffices for writing it two times / This allows a recipe to be creates w/ ingredients
  end

  def create
    recipe = Recipe.create(recipe_params)
    redirect_to recipe
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, ingredients_attributes: [:id, :name, :quantity])
  end
end
