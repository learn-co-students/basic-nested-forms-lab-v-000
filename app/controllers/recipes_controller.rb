class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

    def index
      @recipes = Recipe.all
    end

    def create
      @recipe = Recipe.new recipes_params
      if @recipe.save
        redirect_to @recipe
      else
        redirect_to :new
      end
    end

    private
    def recipes_params
      params.require(:recipe).permit(:title, :ingredients_attributes => [:name, :quantity])
    end
  end
  
