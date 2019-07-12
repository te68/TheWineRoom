class WinesController < ApplicationController
  def index
    @grapes = ["Cabernet Sauvignon", "Merlot", "Sauvignon Blanc", "Pinot Noir", "Riesling", "Malbec", "Pinot Grigio", "Rioja"]
    if params[:wine] == nil
      @wines = Wine.all
      @wines = Wine.all[0..100]
    else
      @wines = Wine.all.select { |wine| wine.name.include?(params[:wine]) }
      @wines = @wines.sort! { |a, b| a.rating <=> b.rating }.reverse
    end
  end

  def show
    @wine = Wine.find(params[:id])
    @cartwine = CartWine.new
  end
end
