require 'pry'
class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    build_ingredients(2)
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to @recipe
    else
      render :new
    end
  end

  private

  def build_ingredients(n)
    n.times {@recipe.ingredients.build}
  end

  def recipe_params
    params.require(:recipe).permit(
      :title,
      :ingredients_attributes => [
        :quantity,
        :name])
  end

end
