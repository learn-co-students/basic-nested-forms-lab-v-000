class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    2.times { @recipe.ingredients.build }
  end

  def create
    @recipe = Recipe.create(recipe_params)

    redirect_to @recipe
  end

  def edit
    @recipe = Recipe.find(recipe_params)
  end

  def update
    @recipe = Recipe.find(recipe_params)
    recipe.update(recipe_params)
    redirect_to recipe
  end

  private
    def recipe_params
      params.require(:recipe).permit(
          :title,
          ingredients_attributes: [
            :id,
            :name,
            :quantity
        ]
      )
    end
end
