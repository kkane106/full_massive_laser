class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.where(:email => params[:signin][:email]).first
		if user && user.authenticate(params[:signin][:password])
			session[:user_id] = user.id
			flash[:notice] = "You have signed in successfully."
			redirect_to root_url
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
