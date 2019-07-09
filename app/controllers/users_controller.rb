class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @grapes = ["Cabernet Sauvginon", "Merlot", "Sauvginon Blanc", "Pinot Noir", "Reisling", "Malbec", "Pinot Grigio"]
    @user = User.new
  end

  def create
    name = params[:user][:name]
    password = params[:user][:password]
    grape = params[:preferences][:grape]
    min_rating = params[:preferences][:min_rating]
    price = params[:preferences][:price]
    @user = User.create(name: name, password: password, preferences: { grape: grape, min_rating: min_rating, price: price })
    redirect_to user_path(@user)
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
    @user = User.find(params[:id])
    if params[:user][:preferences].class == Array
      params[:user][:preferences].each do |grape|
        @user.preferences[:grape] << grape
      end
    elsif params[:user][:preferences].to_i > 5
      @user.preferences[:price] = params[:user][:preferences].to_i
    else
      @user.preferences[:min_rating] = params[:user][:preferences]
    end
    @user.preferences[:grape].uniq
    @user.save
    redirect_to user_path(@user.id)
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :preferences)
  end
end
