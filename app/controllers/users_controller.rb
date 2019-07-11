class UsersController < ApplicationController
  before_action :require_login, :except => [:new, :create]

  def index
    @users = User.all
  end

  def new
    @grapes = ["Cabernet Sauvginon", "Merlot", "Sauvginon Blanc", "Pinot Noir", "Reisling", "Malbec", "Pinot Grigio"]
    @user = User.new
  end

  def create
    @user = User.new(name: params[:user][:name], password: params[:user][:password], preferences: params[:user][:preferences], purchased: [])
    if @user.save
      session[:user_id] = @user.id
      @cart = Cart.create(user_id: @user.id)
      redirect_to user_path(@user)
    else
      redirect_to "/users/new"
    end
  end

  def show
    if (params[:id].to_i == session[:user_id])
      @user = User.find(params[:id])
    else
      redirect_to "/users"
    end
  end

  def edit
    if (params[:id].to_i == session[:user_id])
      @user = User.find(params[:id])
      @grapes = ["Cabernet Sauvginon", "Merlot", "Sauvginon Blanc", "Pinot Noir", "Reisling", "Malbec", "Pinot Grigio"]
      render :edit
    else
      redirect_to "/users/#{session[:user_id]}/edit"
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(name: params[:user][:name], preferences: params[:user][:preferences])
    redirect_to user_path(@user.id)
  end
end
