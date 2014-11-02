class TicketsController < ApplicationController


  def index
    redirect_to signin_path if session[:user_id] == nil
    @user = User.find(session[:user_id])
    redirect_to root_path unless @user.pro?
    @tickets = Ticket.all
  end

  def show
    @ticket = Ticket.find(params[:id])
  end

  def create
    user = User.find(session[:user_id])
    ticket = user.tickets.create(ticket_params)
    if ticket.valid?
      flash[:success] = ["Your ticket has been created successfully!"]
      redirect_to ticket
    else
      flash[:error] = @ticket.errors.full_messages
      redirect_to new_ticket_path
    end
  end

  def new
    @ticket = Ticket.new
    @professions = Profession.all
  end

  def update
    p "*"*30
    p current_user
    p profession_id = Ticket.find(params[:id]).profession_id
    p professional_id = current_user.professionals.where(profession_id: profession_id)[0].id
    p Ticket.find(params[:id])
    Ticket.find(params[:id]).update(professional_id: professional_id)
    p Ticket.find(params[:id])
  end

  private
  def ticket_params
    params.require(:ticket).permit(:title, :body, :profession_id, :user_id)
  end
end
