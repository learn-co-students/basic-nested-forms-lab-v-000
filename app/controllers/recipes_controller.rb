class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredient.build
    @recipe.ingredient.build
  end

  def create
    @recipe=Recipe.new
    @recipe.ingredients_attributes=(params[:recipe][ingredients_attributes])
    if @recipe.save
      redirect_to recipe_path
    else 
      render :new 
    end 
  end
  
  private 
    def recipe_params
      params.require(:recipe).permit(
        :title,
        ingredients_attributes: [
          :name,
          :quantity
          ]
        )
      
    end 
  
  
end
