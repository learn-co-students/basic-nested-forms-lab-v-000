# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Recipe.create(title: "Chicken Parmesean")
Recipe.create(title: "Cereal")
Ingredient.create(name: "chicken", quantity: "4 oz")
Ingredient.create(name: "parmesean cheese", quantity: "5 oz")
Ingredient.create(name: "pasta sauce", quantity: "2 oz")
Ingredient.create(name: "milk", quantity: "4 oz")
Ingredient.create(name: "cereal", quantity: "6 oz")
