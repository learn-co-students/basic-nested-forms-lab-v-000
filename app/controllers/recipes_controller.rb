class RecipesController < ApplicationController


  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    # @recipe.build.ingredient(:)
    @recipe.ingredients.build(name: "first ingredient")
    @recipe.ingredients.build(name: "second ingredient")

    # @recipe.ingredients.build(quantity: "amount")
    # @person.addresses.build(address_type: 'work')
    # @person.addresses.build(address_type: 'home')
  end

  def create
    # binding.pry
    @recipe = Recipe.create(recipe_params)
    redirect_to recipe_path(@recipe)
  end

  private
    def recipe_params
      # binding.pry
      params.require(:recipe).permit(
      :title,
      ingredients_attributes: [
        :name,
        :quantity
      ]

      )
    end
end
