class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    # byebug
    @recipe = Recipe.new
    # []
    @recipe.ingredients.build(name: params[:name])
    # byebug
    @recipe.ingredients.build(quantity: params[:quantity])
  end

  def create
    byebug
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      redirect_to @recipe
    else
      render :new
    end
  end

  private

  def recipe_params
    # byebug
    params.require(:recipe).permit(:title, :ingredients_attributes => [:name, :quantity])
  end
end
