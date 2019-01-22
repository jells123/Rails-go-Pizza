class Food < ApplicationRecord
	has_many :foods_ingredients
	has_many :ingredients, through: :foods_ingredients, dependent: :destroy

	def assign_ingredients(ingredient_ids)
		ingredient_ids.compact.each do |id|
			FoodsIngredient.create(food_id: self.id,
				ingredient_id: id)
		end
	end
end
