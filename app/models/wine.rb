class Wine < ApplicationRecord
  serialize :properties
  has_many :users, through: :reviews
  has_many :cart_wines
  has_many :carts, through: :cart_wines
end
