class Wine < ApplicationRecord
  validates :name, uniqueness: true
  has_many :reviews
end
