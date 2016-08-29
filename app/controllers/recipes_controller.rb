class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    # @recipe.ingredients.build
    # @recipe.ingredients.build
    2.times { @recipe.ingredients.build }
  end

  def create
    raise params.inspect
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to recipe_path(@recipe)
    else
      render :new
    end
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
    # "recipe"=>{
    #   "title"=>"Some Title",
    #   "ingredients"=> {
    #     "name"=>"Some name",
    #     "quantity"=>"2"
    #     }
    #   }

end
