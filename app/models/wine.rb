class Wine < ApplicationRecord
  serialize :properties
  has_many :reviews
  has_many :users, through: :reviews
  belongs_to :cart
end
