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
    @recipe.ingredients.build
    @recipe.ingredients.build
  end

  def create
    recipe = Recipe.create(recipe_params)
    redirct_to recipe
  end

  def update
    recipe = Recipe.find(params[:id])
    recipe.update(recipe_params)
    redirct_to recipe
  end

  private

    def recipe_params
      params.require(:recipe).permit(:title,:ingredients_attributes: [:id, :name, :quantity])
    end
    
end
