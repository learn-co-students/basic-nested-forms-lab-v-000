class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new.tap do |r|
      r.ingredients.build
      r.ingredients.build
    end
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.valid?
      @recipe.save
      redirect_to recipe_url(@recipe)
    else
      render :new
    end
  end

  def edit
  end

  def update
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
