class AddPropertiesToWines < ActiveRecord::Migration[5.2]
  def change
    add_column :wines, :properties, :text
  end
end
