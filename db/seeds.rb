# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
pbj = Recipe.new(title: "Peanut Butter and Jelly")
pbj.ingredients_attributes = {
  "0" => {
    "name" => "peanut butter",
    "quantity" => "1 tbsp"
  },
  "1" => {
    "name" => "jelly",
    "quantity" => "1 tsp"
  }
}

pbj.save
