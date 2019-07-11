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

  def checkout
    @user = User.find(session[:user_id])
    CartWine.where(cart_id: params[:cart_id]).each do |cw|
      @user.purchased << Wine.find(cw.wine_id)
    end
    @user.purchased = @user.purchased.uniq
    @user.save
    CartWine.where(cart_id: params[:cart_id]).delete_all()
    redirect_to user_path(@user)
  end
end
