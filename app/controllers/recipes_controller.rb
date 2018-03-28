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
    @recipe = Recipe.new(rec_params)
    if @recipe.valid?
      binding.pry
      @recipe.save
      redirect_to recipe_path(@recipe)
    else
      render :new
    end
  end

  private

  def rec_params
    params.require(:recipe).permit(
      :title,
      :ingredients_attributes => [
        :name, :quantity
      ])
  end

end
