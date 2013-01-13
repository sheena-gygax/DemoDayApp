class UsersController < ApplicationController
  
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    
      if @user.save
        redirect_to @user, notice: 'Congradulations you did something right'
      else
        # redirect_to new_user_url, notice: "You fail"
        render 'new'
      end
    end
    
  def show
  end
end
