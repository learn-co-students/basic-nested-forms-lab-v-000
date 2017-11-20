# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
recipe = Recipe.new("Apple Pie")
recipe.ingredients.build(:name => "apples", :quantity => 4)
recipe.ingredients.build(:name => "crust", :quantity => 1)

