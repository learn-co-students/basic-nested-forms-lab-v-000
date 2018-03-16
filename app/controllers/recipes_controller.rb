class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    10.times do
      @recipe.ingredients.build
    end
  end

  def create
    @recipe = Recipe.create(recipe_params)
     @recipe.ingredients.each do |ingr|
      @recipe.ingredients.delete(ingr) if ingr.name == ''
    end
    redirect_to recipe_path(@recipe)
  end

  def update
    @recipe = Recipe.find(params[:id])

    @recipe.update(recipe_params)
    redirect_to @recipe
  end


  private

  def recipe_params
    params.require(:recipe).permit(:title, ingredients_attributes: [:id, :name, :quantity])
  end
 

end
