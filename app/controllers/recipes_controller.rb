class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    2.times{ @recipe.ingredients.build(name: nil) }
  end

  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.valid?
      @recipe.save
      redirect_to recipe_path(@recipe)
    else
      render :new
    end
  end

  private

    def set_recipe
      @recipe = Recipe.find_by(:id => params[:id])
    end

    def recipe_params
      params.require(:recipe).permit(:title, :ingredients_attributes => [
        :name,
        :quantity
        ]
      )
    end
end
