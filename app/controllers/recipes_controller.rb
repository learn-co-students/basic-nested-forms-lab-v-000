class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new # when we create a recipe instance, we'll add two empty ingredients to fill out
    @recipe = Recipe.new
    2.times { @recipe.ingredients.build }
  end

  def create # from the submitted form data, we're creating 1 recipe instance with 2 ingredient instances belonging to it
    recipe = Recipe.create(recipe_params) # instantiate and save to DB recipe instance with its attributes set from strong params via mass assignment
    redirect_to recipe # redirect to show page that displays the recipe just created
  end

  private
  
    def recipe_params # calling this private method returns strong params
      params.require(:recipe).permit(:title, ingredients_attributes: [:name, :quantity])
    end
  # params hash must have top-level "recipe" key that points to (and stores) recipe hash nested inside params hash
  # within recipe hash, we permit the key of "title" (which points to whatever the user entered in Title form field)
  # within recipe hash, we also permit "ingredients_attributes" key
  # which points to (and stores) a hash whose keys are "0" and "1", and
  # each of these keys points to a hash containing data in key/value pairs
  # for the name and quantity attributes of a single ingredient instance
  # Therefore, we permit the "name" and "quantity" keys of the nested hashes
end
