class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.title = "Title"
    2.times do
      @recipe.ingredients.build(name: "Ingredient Name", quantity: "0")
    end
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to recipe_path(@recipe)
    else
      redirect_to new_recipe_path(@recipe)
    end
  end

  private

    def recipe_params
      params.require(:recipe).permit(:title, ingredients_attributes:[:name, :quantity])
    end
end
