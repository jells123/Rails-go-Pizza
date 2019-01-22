# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ingredients = [
	{ 
		name: "Mozarella", 
	 	vegan: false 
	},
	{ 
		name: "Tomato sauce", 
	 	vegan: true 
	},
	{ 
		name: "Pineapple", 
	 	vegan: true 
	},
	{ 
		name: "Ham", 
	 	vegan: false 
	},
	{ 
		name: "Lettuce", 
	 	vegan: true 
	},
	{ 
		name: "Salami", 
	 	vegan: false 
	},
	{ 
		name: "Mushrooms", 
	 	vegan: true
	},
	{ 
		name: "Kale", 
	 	vegan: true 
	},
	{ 
		name: "Gorgonzola", 
	 	vegan: false 
	},
	{ 
		name: "Anchois", 
	 	vegan: false 
	}
]

# foods = [
# 	{
# 		name: "Hawaii",
# 		price: 13,
# 		description: "Love it or hate it",
# 	},
# 	{
# 		name: "Margherita",
# 		price: 9,
# 		description: "Taste of simplicity",
# 	}
# 	{
# 		name: "Vesuvio",
# 		price: 11,
# 		description: "All you need is ham",
# 	}
# ]

adjectives = [ "Big", "Fatty", "Fit", "Pretty", "Tasty", "Sexy", "Thin", "Hot" ]
nouns = [ "Margherita", "Salami", "Vesuvio", "Hawaii", "Capricciosa", "Contadina", "Deliciosa", "Americana", "Montanara", "Diavola" ]

ingredients.each do |ingredient|
	Ingredient.find_or_create_by(ingredient)
end

i = 0
while i < 10
	name = [adjectives.sample, nouns.sample].join(' ')
	Food.find_or_initialize_by(name: name) do |food|
		unless food.persisted? then
			food.price = rand(10..25)
			food.ingredients = Ingredient.all.to_a.shuffle.last(3)
			food.save
			i += 1
		end
	end
end