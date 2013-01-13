class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :show_session_data
  before_filter :current_user
  
  def current_user
    @user = User.find_by_id(session[:uid])
  end
  
  def show_session_data
    logger.debug '-' * 25
    logger.debug "Session: #{session.inspect}"        
    logger.debug '-' * 25
  end
end
