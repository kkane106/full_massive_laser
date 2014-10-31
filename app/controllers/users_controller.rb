class UsersController < ApplicationController

  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Your account has been created successfully"
      redirect_to @user
    else
      flash[:error] = "Please fill in all fields"
      redirect_to 'new'
    end
  end


  def update
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end

