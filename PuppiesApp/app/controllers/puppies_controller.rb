class PuppiesController < ApplicationController
  def index
    @puppies = Puppy.all
  end
  
  def create
    @puppy = Puppy.new
    @puppy.name = params[:name]
    @puppy.breed = params[:breed]
    @puppy.age = params[:age]
    @puppy.save
    redirect_to "/home"
  end
end
