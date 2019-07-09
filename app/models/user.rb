class User < ApplicationRecord
  has_secure_password
  serialize :preferences
  has_many :reviews
  has_many :wines, through: :reviews
  has_many :carts
  validates :name, presence: true
end
