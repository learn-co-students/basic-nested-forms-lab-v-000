class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    2.times { @recipe.ingredients.build }
    #build method creates an instance of an ingredients object that is
    #already associated with the receiver (recipe object) through the model 
  end

  def create
    recipe = Recipe.create(recipe_params)
    redirect_to recipe
  end

  private
  def recipe_params
    params.require(:recipe).permit(:title, ingredients_attributes: [:name, :quantity])
  end
  #steps to create a nested form:

  #model: use accepts_nested_attributes_for :ingredients macro or:
  # => preferably, define a writer for the attributes ex. ingredients_attributes=(ingredients_attributes)

  #view: within the form_for iteration, create a fields_for interator for :ingredients
  # => with the label and corresponding text_field(input tag)

  #controller: for the new action to work correctly,
  # => create an instance of the nested attribute,
  # => with a default value that the user input will replace.
end
