class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(ingredient: 'first')
    @recipe.ingredients.build(ingredient: 'second')
  end


  def create
  end

  private

   def recipe_params
     params.require(:recipe).permit(
       :title,
       ingredients_attributes: [
         :ingredient_1,
         :ingredient_2,
         :city,
         :state,
         :zipcode,
         :address_type
       ]
     )
   end
 end
