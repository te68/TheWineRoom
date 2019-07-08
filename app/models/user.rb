class User < ApplicationRecord
  serialize :preferences
  has_many :reviews
  has_many :wines, through: :reviews
  has_many :carts
end
