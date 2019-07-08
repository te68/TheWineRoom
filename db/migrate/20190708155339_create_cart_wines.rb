class CreateCartWines < ActiveRecord::Migration[5.2]
  def change
    create_table :cart_wines do |t|
      t.belongs_to :cart, foreign_key: true
      t.belongs_to :wine, foreign_key: true

      t.timestamps
    end
  end
end
