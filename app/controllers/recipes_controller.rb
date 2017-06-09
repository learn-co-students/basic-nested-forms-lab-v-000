class RecipesController < ApplicationController

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(ingredient_type: 'main')
    @recipe.ingredients.build(ingredient_type: 'secondary')
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    recipe = Recipe.create(recipe_params)
    redirect_to recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title,
      ingredient_attributes: [
        :ingredient_1,
        :ingredient_2    
        ]
        )
  end
end
