class AddPurchasedToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :purchased, :text
  end
end
