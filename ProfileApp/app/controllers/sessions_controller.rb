class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_email(params[:email].downcase)
    #.downcase is how we are storing in the db, so we want to make sure the email entered is valid
    if @user && @user.authenticate(params[:password])
      session[:cookie] = @user.id
      redirect_to root_url, notice: "Welcome Back #{@user.first}!"
    else
      flash.now[:notice] = "Sign In Failed"
      render :new
    end
  end

  def destroy
    reset_session
    redirect_to root_url, notice: "Until Next Time!"
  end
end
