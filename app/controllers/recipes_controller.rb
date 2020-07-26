class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    3.times { @recipe.ingredients.build }
  end

  def create
    #raise params.inspect
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      redirect_to recipes_path
    else
      render :new
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, ingredients_attributes: [:name, :quantity])
  end
end
#ingredients_attributes: [:name, :quantity]
