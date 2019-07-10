class ReviewsController < ApplicationController
  before_action :require_login

  def new
    @review = Review.new
  end

  def create
    @user = User.find(session[:user_id])
    @review = Review.new(review_params)
    @review.user = @user
  end

  private

  def review_params
    pramas.require(:review).permit(:rating, :content, :wine_id)
  end
end
