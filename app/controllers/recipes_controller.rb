class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
    if @recipe.ingredients.last.try(:name)
      @recipe.ingredients.build
    end
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(name: "recipe 1")
    @recipe.ingredients.build(name: "recipe 2")
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to @recipe
    else 
      render :new 
    end
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      redirect_to @recipe
    else 
      render :edit 
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(
      :title, 
      ingredients_attributes:[
        :name, 
        :quantity])
  end

end