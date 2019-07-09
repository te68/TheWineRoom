class ApplicationController < ActionController::Base
  private

  def require_login
    redirect_to "/login" unless session.include? :user_id
  end
end
