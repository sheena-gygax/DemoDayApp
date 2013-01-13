class MenuController < ApplicationController

  def index
    @drinks = Drink.all
  end
  
  def new
    @drink = Drink.new
    @menu = Menu.all
  end
  
  def create
  end
 
end
