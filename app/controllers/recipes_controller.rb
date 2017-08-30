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

  def create
    Recipe.create(recipe_params)
    redirect_to recipe_path
  end

  def recipe_params
    params.require(:recipe).permit(
      :title,
      ingredients_attributes: [
        :attributes_0_quantity,
        :attributes_0_name,
        :attributes_1_quantity,
        :attributes_1_name
      ]
    )
  end
end

# def new
#   @person = Person.new
#   @person.addresses.build(address_type: 'work')
#   @person.addresses.build(address_type: 'home')
# end
#
# def create
#   Person.create(person_params)
#   redirect_to people_path
# end
#
# def index
#   @people = Person.all
# end
#
# private
#
# def person_params
#   params.require(:person).permit(
#     :name,
#     addresses_attributes: [
#       :street_address_1,
#       :street_address_2,
#       :city,
#       :state,
#       :zipcode,
#       :address_type
#     ]
#   )
# end
