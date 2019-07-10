require_relative "./../api.rb"

Wine.delete_all()

FINEDATA.each do |key, hash|
  Wine.create!(name: hash[:name], rating: hash[:rating], color: hash[:color], country: hash[:country], year: hash[:year], price: rand(20..100))
end
