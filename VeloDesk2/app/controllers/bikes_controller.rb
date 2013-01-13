class BikesController < ApplicationController
  
  def index
    @bikes = Bike.all
  end
  
  def new
    @bike = Bike.new
  end
  
  def create
    @bike = Bike.new(params[:bike])
    if @bike.save
      redirect_to bikes_url
    else
      flash[:notice] = "Please complete form"
      render "new"
    end
  end
  
  def show
    
  end
  
end