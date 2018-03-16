class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(quantity: '1 cup')
    @recipe.ingredients.build(quantity: '1 big tablespoon')

  end

  def create

    @recipe = Recipe.new(recipe_params)
    if @recipe.valid?
      @recipe.save
      redirect_to recipes_path
    else
      render :new
    end
  end


 private

  def recipe_params
    params.require(:recipe).permit(:title,
    ingredients_attributes: [
      :quantity,
      :name
      ]
    )
  end

end
