cookie = Recipe.new(title: "Cookie")
cookie.ingredients.build(name: "Flour", quantity: "2 lbs.")
cookie.ingredients.build(name: "Chocolate Chips", quantity: "A lot")
cookie.save
