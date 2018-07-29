class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  
  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(name: 'recipe_1')
    @recipe.ingredients.build(name: 'recipe_2')
  end

  def create
    @recipe = Recipe.create(recipe_params)
    redirect_to @recipe
  end


  private 
  
  def recipe_params 
    params.require(:recipe).permit(
      :name, 
      ingredient_attributes: [
        :name,
        :quantity
        ])
  end
        
end



