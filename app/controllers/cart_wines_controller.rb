class CartWinesController < ApplicationController
  before_action :require_login

  def create
    quantity = params[:cart_wine][:cart_id].to_i
    @user = User.find(session[:user_id])
    quantity.times do
      CartWine.create(cart_id: @user.carts[0].id, wine_id: params[:cart_wine][:wine_id].to_i)
    end
    redirect_to cart_path(@user.carts[0])
  end
end
