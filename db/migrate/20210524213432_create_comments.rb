class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.belongs_to :stock, foreign_key: true
      t.string :comment
      t.string :commentor
      t.timestamps
    end
  end
end
