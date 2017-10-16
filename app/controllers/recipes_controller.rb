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
   @recipe.ingredients.build(recipe_id: @recipe.id)
    end
  end
  def create
    # raise params.inspect
    @recipe = Recipe.create(recipe_params)
    if @recipe.save#is saved correctly
      redirect_to @recipe#take to url /person/@user_id
    else
      render :new
    end
  end
  def recipe_params#
    params.require(:recipe).permit(:title,:ingredients_attributes => [:name, :quantity])
  end
end
