class CartWine < ApplicationRecord
  belongs_to :cart
  belongs_to :wine
end
