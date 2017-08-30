class RecipesController < ApplicationController
before_action :set_recipe, only: [:show, :update, :edit, :destroy]

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    # add two empty ingredients to fill out
    @recipe.ingredients.build
    @recipe.ingredients.build
  end

  def create
    @recipe = Recipe.create(recipe_params)
    redirect_to recipe_path(@recipe)
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    # modify method to accept the the params hash keys
    params.require(:recipe).permit(:title, ingredients_attributes: [:name, :quantity])
  end
end
