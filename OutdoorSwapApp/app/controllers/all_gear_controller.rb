class AllGearController < ApplicationController
  def index
    @all_gear = Gear.all
  end
  
  def new
    @gear = Gear.new
  end
  
  def create
    gear = Gear.new
    gear.item = params[:gear][:item]
    gear.location = params[:gear][:location]
    gear.price = params[:gear][:price]
    gear.start = params[:gear][:start]
    gear.end = params[:gear][:end]
    gear.save
    redirect_to gears_url
  end
  
  def edit
    @gear = Gear.find_by_id(params[:id])
  end
  
  def update
    @gear = Gear.find_by_id(params[:id])
    @gear.item = params[:gear][:item]
    @gear.location = params[:gear][:location]
    @gear.price = params[:gear][:price]
    @gear.start = params[:gear][:start]
    @gear.end = params[:gear][:end]
    @gear.save
    redirect_to gears_url 
  end
  
  def show
    @gear = Gear.find_by_id(params[:id])
  end
  
  def destroy
    @gear = Gear.find_by_id(params[:id])
    @gear.destroy
    redirect_to gears_url
  end
  
end