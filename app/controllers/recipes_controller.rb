class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    2.times { @recipe.ingredients.build }
    # 2.times do
    #   @recipe.ingredients.build
    # end
  end

  def create
    @recipe = Recipe.create(recipe_params)
    redirect_to recipes_path
    # @recipe = Recipe.new(recipe_params)
    # if @recipe.save
    #   redirect_to recipe_path(@recipe)
    # else
    #   render :new
    # end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, ingredients_attributes: [:name, :quantity])
  end
end