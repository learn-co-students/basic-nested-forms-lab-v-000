class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    10.times do |x|
      @recipe.ingredients.build(name: "", quantity: "")
    end
  end

  def create
    @recipe = Recipe.create(recipe_params)
    redirect_to recipe_path(@recipe)
  end

  private
  def recipe_params
    params[:recipe][:ingredients_attributes].each do |x, y|
      if y[:name] == ""
        params[:recipe][:ingredients_attributes].delete("#{x}")
      end
    end
    params.require(:recipe).permit(:title, ingredients_attributes: [:quantity, :name])
  end
end
