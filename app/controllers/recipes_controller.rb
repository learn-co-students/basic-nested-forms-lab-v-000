class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    # []
    @recipe.addresses.build(address_type: 'work')
    @recipe.addresses.build(address_type: 'home')
  end

  def create
  end

  private

  def recipe_params
    params.require(:recipe).permit(
      :title,
      ingregients_attributes: [
        :name,
        :quantity
        ]
      ]
    )
  end
end
