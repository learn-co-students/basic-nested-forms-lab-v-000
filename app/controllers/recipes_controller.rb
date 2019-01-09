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
  end

  def create    
    recipe = Recipe.create(recipe_params)

    # ingredients = params[:recipe][:ingredients]
    # ingredients.each do |ingredient|
    #   recipe.ingredients.build(ingredient)
    # end

    redirect_to "/recipes/#{recipe.id}"
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, ingredients_attributes: [:id, :name, :quantity])
  end
end

{ "utf8"=>"✓",
  "authenticity_token"=>"6+1CaBM3YMTppwbU1O5zE10QlhMA38QB66t1HRUP40CAAJEMvaJ/RVsQ/XpZKlGysKLX5BYCzXk1dkip6Ju6kw==",
  "recipe"=> {
    "title"=>"uihiu", 
    "ingredients"=> {
        "name"=>"qw",
        "quantity"=>"2"
    }
  },
  "commit"=>"Create Recipe" }


{ 
  "title"      => "uihiu", 
  "ingredients"=> { "name"      =>  "qw",
                    "quantity"  =>  "2" }
}