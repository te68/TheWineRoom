class WinesController < ApplicationController
  def index
    @grapes = ["Cabernet Sauvginon", "Merlot", "Sauvginon Blanc", "Pinot Noir", "Reisling", "Malbec", "Pinot Grigio"]
    @wines = Wine.all
    if params[:country] == nil
      @wines = Wine.all[0..100]
    else
      @wines = Heroine.all.select { |heroine| heroine.power_id == params[:power_id].to_i }
    end
  end

  def show
    @wine = Wine.find(params[:id])
    @cartwine = CartWine.new
  end
end
