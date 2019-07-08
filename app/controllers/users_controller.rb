class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    @grapes = ["Cabernet Sauvginon", "Merlot", "Sauvginon Blanc", "Pinot Noir", "Reisling", "Malbec", "Pinot Grigio"]
    render :edit
  end

  def update
    byebug
  end
end
