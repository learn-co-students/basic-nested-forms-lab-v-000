# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Recipe.create(title: 'Chocolate chip cookies')
Recipe.create(title: 'sushi')
Ingredient.create(name: 'sugar', quantity: '1 cup', recipe_id: 1)
Ingredient.create(name: 'eggs', quantity: '2', recipe_id: 1)
Ingredient.create(name: 'rice', quantity: '1 cup', recipe_id: 2)
Ingredient.create(name: 'avocado', quantity: '1', recipe_id: 2)
