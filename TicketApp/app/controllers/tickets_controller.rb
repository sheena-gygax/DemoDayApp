class TicketsController < ApplicationController
def index
  @tickets = Ticket.all

  respond_to do |format|
    format.html 
    format.json { render :json => @tickets }
    format.xml { render :xml => @tickets }
  end
  
  # respond_to do |format|
  #   format.html do
  #     render 'index'
  #   end
  #   
  #   format.json do
  #     render :json => @tickets
  #   end
  # end
  
end

def new
  @ticket = Ticket.new
end

def create
  @ticket = Ticket.new
  @ticket.name = params[:name]
  @ticket.address = params[:address]
  @ticket.city = params[:city]
  @ticket.state = params[:state]
  @ticket.zip = params[:zip]
  @ticket.price = params[:price]
  @ticket.genre = params[:genre]
  @ticket.save
  redirect_to '/home'
end

def show
  @ticket = Ticket.find_by_id(params[:id])
  
end

def edit
  @ticket = Ticket.find_by_id(params[:id])
end

def update
  @ticket = Ticket.find_by_id(params[:id])
  @ticket.name = params[:name]
  @ticket.address = params[:address]
  @ticket.city = params[:city]
  @ticket.state = params[:state]
  @ticket.zip = params[:zip]
  @ticket.price = params[:price]
  @ticket.genre = params[:genre]
  @ticket.save
  redirect_to "/#{@ticket.id}"
end

def destroy
  @ticket = Ticket.find_by_id(params[:id])
  @ticket.destroy
  redirect_to "/home"
end

end
