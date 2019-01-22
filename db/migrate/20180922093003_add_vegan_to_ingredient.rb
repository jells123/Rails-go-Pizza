class AddVeganToIngredient < ActiveRecord::Migration[5.2]
  def change
    add_column :ingredients, :vegan, :boolean
  end
end
