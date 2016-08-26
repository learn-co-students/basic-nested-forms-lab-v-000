class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    2.times do
      @recipe.ingredients.build
    end
  end

  def create
    @recipe = Recipe.new(recipe_params)
    # binding.pry
    if @recipe.save?
      redirect_to recipe_path(@recipe)
    else
      render :new
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(
      :title,
      ingredient_attributes: [
        :name,
        :quantity
      ]
    )
  end

end
