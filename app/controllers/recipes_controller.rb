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
    10.times { @recipe.ingredients.build }
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save 
      redirect_to recipe_path(@recipe)
    else
      redirect to new_recipe_path
    end 
  end

  private
    def recipe_params 
      params.require(:recipe).permit(:title, ingredients_attributes: [:id, :name, :quantity])
    end 

end
