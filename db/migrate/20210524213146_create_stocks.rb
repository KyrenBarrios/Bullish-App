class CreateStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :stocks do |t|
      t.string :name
      t.integer :price
      t.string :category
      t.timestamps
    end
  end
end
