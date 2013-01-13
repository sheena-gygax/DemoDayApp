class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:uid] = user.id
      redirect_to user
    else
      flash.now[:notice] = 'Invalid email/password'
      render 'new'
    end
  end
  
  def destroy
    reset_session
    redirect_to root_url, notice: "Until next time!"
  end
  
end
