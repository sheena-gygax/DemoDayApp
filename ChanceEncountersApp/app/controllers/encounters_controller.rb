class EncountersController < ApplicationController
  
  def index
    @encounters = Encounter.all
  end
  
  def new
    @encounter = Encounter.new
  end
  
  def create
    @encounter = Encounter.new
    @encounter.title = params[:encounter][:title]
    @encounter.comment = params[:encounter][:comment]
    @encounter.day = params[:encounter][:day]
    if @encounter.save
    flash[:notice] = "Thank you for adding your magical moment"
    redirect_to encounters_url
    else
      flash[:alert] = "Please complete the fields"
      render "new"
    end
 end
  
  def show
    @encounter = Encounter.find_by_id(params[:id])
  end
  
  def edit
    @encounter = Encounter.find_by_id(params[:id])
  end
  
  def update
    @encounter = Encounter.find_by_id(params[:id])
    @encounter.title = params[:encounter][:title]
    @encounter.comment = params[:encounter][:comment]
    @encounter.day = params[:encounter][:day]
    @encounter.save
    redirect_to encounters_url
  end
  
  def destroy
    @encounter = Encounter.find_by_id(params[:id])
    @encounter.destroy
    redirect_to encounters_url
  end
  
end
