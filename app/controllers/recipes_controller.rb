class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
    
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build
    @recipe.ingredients.build 
    #arguments not needed because we want to create an empty ingredient object
    #.build gives associations as an empty object but can add more things via params
  end

  def create
    @recipe = Recipe.create(recipe_params)
    redirect_to recipe_path(@recipe)
  end
  # <%= render 'form', recipe: @recipe %>
  # data, loadout

  #rails won't let you start the development server until you run that
  #bin/rails db:migrate RAILS_ENV=development
  #And starting the server is how we can see what the problem might be

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
