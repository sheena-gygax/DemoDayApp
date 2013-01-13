class ListingsController < ApplicationController
  
  def index
    @listings = Listing.all
  end
  
  def new
  end
  
  def create
    @listing = Listing.new
    @listing.item = params[:item]
    @listing.price = params[:price]
    @listing.location = params[:location]
    @listing.save
    redirect_to "/home"
  end
  
  def show
    @listing = Listing.find_by_id(params[:id])
  end
  
  def destroy
    @listing = Listing.find_by_id(params[:id])
    @listing.destroy
    redirect_to "/home"
  end
  
  def edit
    @listing = Listing.find_by_id(params[:id])
  end
  
  def update
    @listing = Listing.find_by_id(params[:id])
    @listing.item = params[:item]
    @listing.price = params[:price]
    @listing.location = params[:location]
    @listing.save
    redirect_to "/home/#{@listing.id}"
  end
  
end
