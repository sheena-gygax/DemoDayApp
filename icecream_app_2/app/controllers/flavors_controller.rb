class FlavorsController < ApplicationController

  def index
  @flavors = Flavor.all
  end

  def new
  end
  
  def create
    new_flavor = Flavor.new(:name => params[:name], :price => params[:price])
    new_flavor.save
    
    redirect_to "http://localhost:3000/flavors"
  end
end
