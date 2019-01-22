class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :address
      t.references :user, foreign_key: true
      t.string :phone_number
      t.text :message
      t.boolean :credit_card

      t.timestamps
    end
  end
end
