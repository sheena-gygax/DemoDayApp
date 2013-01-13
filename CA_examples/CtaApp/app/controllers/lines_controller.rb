class LinesController < ApplicationController

  def show
    id = params[:id]
    @line = TrainLine.find_by_id(id)
  end

  def destroy
    id = params[:id]
    @line = TrainLine.find_by_id(id)
    @line.destroy
    redirect_to train_lines_url
  end
  
  def edit
    id = params[:id]
    @line = TrainLine.find_by_id(id)
  end
  
  def update
    id = params[:id]
    @line = TrainLine.find_by_id(id)
    
    @line.name = params[:train_line][:name]
    @line.frequency = params[:train_line][:frequency]
    @line.save
    
    redirect_to train_lines_url
  end
  
  def new
    @line = TrainLine.new
  end
  
  #  Parameters: {"utf8"=>"✓", "authenticity_token"=>"HdmoBy2CKsK8BDwfz811145Y9MB7yugZc29k6CIO2vk=", "train_line"=>{"name"=>"Red", "frequency"=>"10"}, "commit"=>"Create Train line"}
  def create
    t = TrainLine.new
    t.name = params[:train_line][:name]
    t.frequency = params[:train_line][:frequency] # => nil
    t.save
    flash[:notice] = "New train line added!"
    redirect_to train_lines_url
  end
  
  def index
    @lines = TrainLine.all
    
    respond_to do |format|
      format.html # => render the index template
      format.json { render :json => @lines }
      format.xml { render :xml => @lines }
    end
    
  end
  

  
end