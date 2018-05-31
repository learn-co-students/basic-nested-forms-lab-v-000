class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build
    @recipe.ingredients.build
  end

  def create
    @recipe = Recipe.create(title: params["recipe"]["title"])

    @ingredient1 = Ingredient.create(name: params["recipe"]["ingredients_attributes"]["0"]["name"],
                                    quantity: params["recipe"]["ingredients_attributes"]["0"]["quantity"])

    @ingredient2 = Ingredient.create(name: params["recipe"]["ingredients_attributes"]["1"]["name"],
                                    quantity: params["recipe"]["ingredients_attributes"]["1"]["quantity"])

    @recipe.ingredients << @ingredient1
    @recipe.ingredients << @ingredient2
    @recipe.save
   end

  private

  def recipe_params
      params.require(:recipe).permit(
        :title,
        ingredient_attributes: [:name, :quantity]
        )
  end
end
