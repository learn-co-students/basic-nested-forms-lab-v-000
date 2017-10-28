class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(name: 'i.e. paprika', quantity: 'i.e. 2 tsp')
    @recipe.ingredients.build(name: 'i.e. rice', quantity: 'i.e. eggs')
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to recipe_path(@recipe)
    else
      render :new
    end
  end

  private

    def recipe_params
      params.require(:recipe).permit(:title, ingredients_attributes: [
          :name,
          :quantity
        ]
      )
    end
end
