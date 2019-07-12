require "rest-client"
require "JSON"

#wineData = RestClient.get("https://api.globalwinescore.com/globalwinescores/latest?limit=10000",
#{ :Authorization => "Token fedc2e80db0640426d5792f6b7c56f2c782ea233" })
FINEDATA = []
countries = ["Peru"]
colors = ["red", "white"]

colors.each do |color|
  #countries.each do |country|
  wineData = RestClient.get("https://private-amnesiac-61d3e-globalwinescore.apiary-proxy.com/globalwinescores/latest/?color=#{color}&limit=1000&country=Peru",
                            { :Authorization => "Token fedc2e80db0640426d5792f6b7c56f2c782ea233" })

  parsedWineData = JSON.parse(wineData)

  def seedData(hash)
    newHash = {}
    hash["results"].each_with_index do |wine, index|
      newHash[wine["wine"]] = { name: wine["wine"], rating: wine["score"], color: wine["color"], country: wine["country"], year: wine["vintage"] }
    end
    newHash
  end

  FINEDATA << seedData(parsedWineData)
  #   end
end

#puts FINEDATA.inspect
