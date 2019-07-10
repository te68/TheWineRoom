class CartsController < ApplicationController
  def show
    @cart = Cart.find(params[:id])
    @cart.quantity = @cart.cart_wines.length
    total = 0
    @names = []
    @cart.wines.each do |w|
      total = total + w.price
      @names << w.name
    end
    @cart.total = total
  end

  def update
    CartWine.where(cart_id: params[:id]).delete_all()
    redirect_to cart_path(Cart.find(params[:id]))
  end
end
