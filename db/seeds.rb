# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Mamagoose.create(name: "Aliza", house: "Lannister")
Mamagoose.create(name: "Constanse", house: "Tyrell")
Mamagoose.create(name: "Anastasiya", house: "Wellington")

Gozlin.create(name: "Zaza", age: 7, mamagoose_id: 1)
Gozlin.create(name: "Bolo", age: 6, mamagoose_id: 1)
Gozlin.create(name: "Rami", age: 4, mamagoose_id: 1)

Gozlin.create(name: "Dodo", age: 8, mamagoose_id: 2)
Gozlin.create(name: "Lama", age: 3, mamagoose_id: 2)

Gozlin.create(name: "Keza", age: 6, mamagoose_id: 3)
Gozlin.create(name: "Lana", age: 4, mamagoose_id: 3)
Gozlin.create(name: "Mona", age: 7, mamagoose_id: 3)
