class RecipesController < ApplicationController

  def new
    @recipe = Recipe.new


    @recipe.ingredients.build(name: 'first ingredient')
    @recipe.ingredients.build(name: 'second ingredient')
    #raise @recipe.inspect
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def create
    recipe = Recipe.create(recipe_params)
    redirect_to recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title,
      ingredients_attributes: [
        :name,
        :quantity    
        ]
        )
  end
end
