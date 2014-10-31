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
    @professions = Profession.all
  end

  def update
  end
end
