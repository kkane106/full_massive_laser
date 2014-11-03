class UsersController < ApplicationController
  skip_before_filter :require_login


  def show
    @user = User.find(params[:id])
    @professions = @user.professionals
    if current_user == @user && current_user.pro?
      @claimed_tickets = []
      current_user.professionals.each do |professional|
        @claimed_tickets.push(professional.tickets)
      end
      @claimed_tickets.flatten!
    else
      @tickets = Ticket.where(user: current_user)
    end
  end

  def update
    current_user.update(role: params[:user][:role])
    redirect_to '/'
  end


  def new
    @user = User.new
  end

  def create
    # auth = hash of objects returned by google
    auth = request.env["omniauth.auth"]  
    # either user is found based upon the provider (in this case google_oauth2) and uid...or...they are created using a User class method
    if user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) 
      session[:user_id] = user.id  
      flash[:success] = ["You've successfully signed in!"]
      redirect_to user
    else
      user = User.create_with_omniauth(auth)
      session[:user_id] = user.id
      flash[:success] = ["You have successfully signed in! Click on \"Create New Ticket\" to get the help you need."]
      redirect_to user
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:provider, :uid, :name, :email, :oauthtoken, :oauth_expires_at)
  end
end

