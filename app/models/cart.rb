class Cart < ApplicationRecord
  belongs_to :user
  has_many :cart_wines
  has_many :wines, through: :cart_wines
end
