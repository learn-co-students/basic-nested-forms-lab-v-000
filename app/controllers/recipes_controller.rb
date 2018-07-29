class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end
  
  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(address_name: 'recipe_1')
    @recipe.ingredients.build(address_quantity: 'recipe_2')
  end

  def create
    @recipe = Recipe.create(recipe_params)
    redirect_to @recipe
  end
end

  private 
  
  def recipe_params 
    params.require(:recipe).permit(
      :name, 
      ingredient_attributes: [
        :ingredient_name,
        :ingredient_quantity
        ])
    end
        
  end



