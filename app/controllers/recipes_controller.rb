class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
    # if @recipe.ingredients.last.try(:name)
    #   @recipe.ingredients.build
    # end
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(name: "Pasta Salad", quantity: "1 cup")
    @recipe.ingredients.build(name: "Pasta Salad 2", quantity: "2 cups")
    # 2.times { @recipe.ingredients.build }
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.save
    redirect_to recipe_path(@recipe)
  end

  def update
    recipe = Recipe.find(params[:id])
    recipe.update(recipe_params)
    redirect_to recipe_path(@recipe)
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title,
      ingredients_attributes: [
        :id,
        :name,
        :quantity
      ])
  end
end
