class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.float :total
      t.integer :quantity
      t.belongs_to :user, foreign_key: true
      t.timestamps
    end
  end
end
