class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(recipe_id: 'first ingredient')
    @recipe.ingredients.build(recipe_id: 'second ingredient')
  end

  def create
    #raise params.inspect
    @recipe = Recipe.create(recipe_params)
    #@recipe.title = (params["recipe"]["title"])
    
    #@recipe.save
    redirect_to recipe_path(@recipe)
  end
  
  private 
  
  def recipe_params 
    params.require(:recipe).permit(
      :title, 
      ingredients_attributes: [
        :name,
        :quantity
      ]
    )
  end 
end
