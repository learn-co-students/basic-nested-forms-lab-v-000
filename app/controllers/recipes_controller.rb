class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    # binding.pry
    @recipe.ingredients.build(recipe_id: @recipe.id)
    @recipe.ingredients.build(recipe_id: @recipe.id)
  end

  def create
    # raise params.inspect
    @recipe = Recipe.create(recipes_params)
    redirect_to recipe_path(@recipe)
  end

  private 
  def recipes_params
    params.require(:recipe).permit(
      :title,
      ingredients_attributes:[
        :name,
        :quantity
      ]
    )
  end

end
