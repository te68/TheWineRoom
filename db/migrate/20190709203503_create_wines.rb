class CreateWines < ActiveRecord::Migration[5.2]
  def change
    create_table :wines do |t|
      t.string :name
      t.float :rating
      t.string :color
      t.string :country
      t.integer :year

      t.timestamps
    end
  end
end
