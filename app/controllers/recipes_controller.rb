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
    @recipe = Recipe.new(params.require(:recipe).permit(:title, ingredients_attributes: [:name, :quantity]))

    if @recipe.save
      redirect_to recipe_path(@recipe)
    else
      render :new
    end
  end
end
