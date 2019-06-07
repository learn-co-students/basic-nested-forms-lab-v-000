class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show]
  def new
    @recipe = Recipe.new
    2.times { @recipe.ingredients.build }
  end

  def create
    @recipe = Recipe.new(recipe_params)
    
    @recipe.save ? (redirect_to @recipe) : (render :new)
  end
  
  def show
  end

  def index
    @recipes = Recipe.all
  end
  
  private
    
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end
    
    def recipe_params
      params.require(:recipe).permit(
        :title,
        ingredients_attributes: [:name, :quantity]
      )
    end
end
