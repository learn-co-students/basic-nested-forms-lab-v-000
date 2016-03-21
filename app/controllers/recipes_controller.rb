class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(ingredient_num: 0)
    @recipe.ingredients.build(ingredient_num: 1)
    @recipe.ingredients.build(ingredient_num: 2)
    @recipe.ingredients.build(ingredient_num: 3)
    @recipe.ingredients.build(ingredient_num: 4)
    @recipe.ingredients.build(ingredient_num: 5)
    @recipe.ingredients.build(ingredient_num: 6)
    @recipe.ingredients.build(ingredient_num: 7)
    @recipe.ingredients.build(ingredient_num: 8)
    @recipe.ingredients.build(ingredient_num: 9)
  end

  def create
    @recipe = Recipe.create(recipe_params)
    redirect_to recipe_path(@recipe)
  end

  private

    def recipe_params
      params[:recipe][:ingredients_attributes]
      params.require(:recipe).permit(:title, ingredients_attributes: [
          :name,
          :quantity,
          :ingredient_num
        ])
    end
end
