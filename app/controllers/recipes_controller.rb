class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    10.times {@recipe.ingredients.build}
  end

  def create
    @recipe = Recipe.create(recipe_params)
    @recipe.ingredients.each do |ingredient|
      if ingredient.name == "" && ingredient.quantity = ""
        ingredient.destroy
      end
    end
    @recipe.save
    redirect_to recipe_path(@recipe)
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, ingredients_attributes: [:name, :quantity])
  end

end
