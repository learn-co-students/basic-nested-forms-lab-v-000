class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    3.times do
      @recipe.ingredients.build
    end
  end


  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.ingredients.each do |ingred|
      @recipe.ingredients.delete(ingred) if ingred.name == ''
    end
    @recipe.save
    redirect_to @recipe
  end

  private

  def recipe_params
    params.require(:recipe).permit(
      :title,
      ingredients_attributes: [:id, :name, :quantity]
    )
  end


end
