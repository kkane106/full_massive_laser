class TicketsController < ApplicationController


  def index
  end

  def show

  end

  def create
    user = User.find(session[:user_id])
    ticket = user.tickets.create(ticket_params)
    if ticket.valid?
      flash[:success] = ["Your ticket has been created successfully!"]
      redirect_to user
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
  end

  private
  def ticket_params
    params.require(:ticket).permit(:title, :body, :profession_id, :user_id)
  end
end
