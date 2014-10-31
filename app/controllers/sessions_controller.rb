class SessionsController < ApplicationController
skip_before_filter :require_login
	def new
	end

	def create
		user = User.where(:email => params[:signin][:email]).first
		if user && user.authenticate(params[:signin][:password])
			session[:user_id] = user.id
			flash[:notice] = "You have signed in successfully."
			redirect_to new_ticket_path
		else
			flash[:error] = "Login credentials incorrect, please try again"
			render :new
		end
	end

	def destroy
		reset_session
		flash[:notice] = "You have signed out successfully."
		redirect_to root_url
	end


end
