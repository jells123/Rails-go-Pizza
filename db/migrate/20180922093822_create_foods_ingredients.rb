class CreateFoodsIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :foods_ingredients do |t|
      t.references :food, foreign_key: true
      t.references :ingredient, foreign_key: true

      t.timestamps
    end
  end
end
