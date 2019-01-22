class Food < ApplicationRecord
	has_many :foods_ingredients
	has_many :ingredients, through: :foods_ingredients
end
