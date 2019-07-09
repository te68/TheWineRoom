# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
CartWine.delete_all()
Review.delete_all()
Cart.delete_all()
User.delete_all()
Wine.delete_all()

User.create!(name: "Matt", password: "password", preferences: ["Reisling"])
