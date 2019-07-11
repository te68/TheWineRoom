class Wine < ApplicationRecord
  validates :name, uniqueness: true
end
