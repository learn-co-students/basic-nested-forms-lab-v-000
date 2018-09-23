class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    # has_many adds collection.build
    @recipe.ingredients.build(name: "first ingredient")
    @recipe.ingredients.build(name: "second ingredient")
  end

  def create
    @recipe = Recipe.new(recipe_params)
    # @recipe.ingredients_attributes=(params[:recipe][:ingredients_attributes])

    if @recipe.save
      redirect_to @recipe  # /recipes/#(@recipe.id)
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
