class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    10.times { @recipe.ingredients.build() }
  end

  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      @recipe.ingredients.each { |i| Ingredient.destroy(i.id) if i.name == '' } #ugly way of deleting empty ingredients - but really empty ingredients shouldn't be created in the first place
      #binding.pry
      redirect_to recipe_path(@recipe)
    else
      render :new
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, ingredients_attributes: [:name, :quantity])
  end
end
