class RecipesController < ApplicationController
  def show
#binding.pry
    @recipe = Recipe.find(params[:id])
binding.pry
    if @recipe.ingredients.last.try(:name)  #if the recipe's ingredient does not have a name
        @recipe.ingredients.build
    end
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build #builds shell for the new views form
    @recipe.ingredients.build #builds shell for the new views form
    #or
    # =>  2.times {@recipe.ingredients.build}
  end

  def create
    @recipe = Recipe.create(recipe_params)
#binding.pry
    redirect_to recipe_path(@recipe)
    #or
    # =>    recipe = Recipe.create(recipe_params)
    # =>    redirect_to recipe
  end
  def update
        @recipe = Recipe.find(params[:id])
        recipe.update(recipe_params)
        redirect_to recipe_path(@recipe)
  end
  private
  #strong params so people cant mess with forms and html hacking
  def recipe_params
      #ingredients_attributes defined in the recipe model and the recipe new vies file
      params.require(:recipe).permit(:title, ingredients_attributes: [:id, :name, :quantity])
  end
end
