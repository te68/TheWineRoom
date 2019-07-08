class CreateWines < ActiveRecord::Migration[5.2]
  def change
    create_table :wines do |t|
      t.string :name
      t.string :grape
      t.float :price
      t.float :rating

      t.timestamps
    end
  end
end
