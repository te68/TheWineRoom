class AddPreferencesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :preferences, :text
  end
end
