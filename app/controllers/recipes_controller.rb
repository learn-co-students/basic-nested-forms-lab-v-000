class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(name: 'Cake')
    @recipe.ingredients.build(name: 'Pizza')
  end

  def create
    #binding.pry
    @recipe = Recipe.new(params_check)
    if @recipe.save
      redirect_to recipe_path(@recipe)
    else
      render :new
    end
  end

  private

  def params_check
    params.require(:recipe).permit(:title, ingredients_attributes: [:name, :quantity])
  end
end
