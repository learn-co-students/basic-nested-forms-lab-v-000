class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(name: "1")
    @recipe.ingredients.build(name: "2")
    #@person.addresses.build(address_type: 'home')
  end

  def create
    Recipe.create(recipe_params)
    redirect_to recipes_path
  end

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
