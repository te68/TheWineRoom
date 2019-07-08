class Cart < ApplicationRecord
  belongs_to :user
  has_many :wines, through: :cartWines
end
