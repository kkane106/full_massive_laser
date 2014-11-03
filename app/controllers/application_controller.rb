class ApplicationController < ActionController::Base
  before_filter :require_login
  protect_from_forgery with: :exception
  helper_method :current_user, :require_login

  private

	def require_login
    unless session[:user_id]
      flash[:error] = ["You must be logged in to get help! Please login and try again."]
      redirect_to welcome_index_path
    end
  end

  def current_user
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  rescue ActiveRecord::RecordNotFound
  end
end