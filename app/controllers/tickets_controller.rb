class TicketsController < ApplicationController
  def index
  end

  def show
  end

  def create
    p params[:ticket]
  end

  def new
    @ticket = Ticket.new
  end

  def update
  end
end
