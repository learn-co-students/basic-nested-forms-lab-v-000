# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
recipe = Recipe.create(title: "Salmon")
ingredient = Ingredient.create(recipe_id: 1, name: "Salmon", quantity: "1")
ingredient = Ingredient.create(recipe_id: 1, name: "lemon", quantity: "2")