class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])

  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new  
    10.times { @recipe.ingredients.build}
  end

  def create
    @recipe = Recipe.new(recipe_params)
# byebug
    if @recipe.save
  # byebug
      redirect_to recipe_path(@recipe)
    else
      redirect_to new_recipe_path
    end
  end


  private

    def recipe_params
      params.require(:recipe).permit(
        :title, 
        ingredients_attributes: [ 
          :id, 
          :name,
          :quantity
          ]
        )
    end
end
