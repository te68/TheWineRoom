require_relative '../api.rb'





# CartWine.delete_all()
# Review.delete_all()
# Cart.delete_all()
# User.delete_all()
# Wine.delete_all()





# User.create!(name: "Matt", password: "password", preferences: {grape: ["reisling"], price: 15, min_rating: 3})
#
# Wine.create!(name: "Austin Hope", grape: "Cabernet Sauvginon", price: 30, rating: 4.5, properties: {red_white: "red", sweet_dry: "dry", country: "United States", pairings: ["prime rib"], year: 2010})
#
# Review.create!(rating: 5, content: "Smoky", wine_id: Wine.find_by(name: "Austin Hope").id, user_id: User.find_by(name: 'Matt').id)
#
# Cart.create!(user_id: User.find_by(name: "Matt").id)
#
# CartWine.create!(wine_id: Wine.find_by(name: "Austin Hope").id, cart_id: Cart.find_by(user_id: User.find_by(name: "Matt")).id)
