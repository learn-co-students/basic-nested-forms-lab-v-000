class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    2.times{@recipe.ingredients.build}


  end

  def create
    @recipe = Recipe.create( strong_params(:title, ingredients_attributes:[:name,:quantity] ) )
    if @recipe.persisted?
        redirect_to recipe_path(@recipe), notice: "the recipe is being generated"
    else
      binding.pry
    end
  end

  private
  def strong_params(*arg)
    params.require(:recipe).permit(*arg)
  end

end
