class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    2.times {@recipe.ingredients.build}
   
  end

  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      redirect_to recipe_path(@recipe)
    else
      render :new
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :ingredients_attributes => [:name, :quantity])
  end

# params = {
#     recipe: {
#        :title => "Pizza",
#        :ingredient_attributes => {
#          0 => {name: "dough", quantity: "1 lb"},
#          1 => {name: "cheese",quantity: "0.5 lb"}
#        }
#     }
# } 
end
