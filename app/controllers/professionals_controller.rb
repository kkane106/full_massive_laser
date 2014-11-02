class ProfessionalsController < ApplicationController
  def show
  end

  def edit
  	@user = User.find(session[:user_id])
  	@professions = @user.professionals
  end

  def update

  	@user = User.find(session[:user_id])
  	@professional = Professional.find(params[:id])
  	if @professional.update(professional_params)
  		redirect_to @user
  	end
  end


  def professional_params
      params.require(:professional).permit(:bio)
  end
end
