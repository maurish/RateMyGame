class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :signed_in?, :currently_logged_as?

  before_action :set_session

  def currently_logged_as? user
  	user == current_user
  end

  def current_user
  	id = session[:user_id]
  	return nil if id.nil?
  	User.find id
  end

  def signed_in?
  	not current_user.nil?
  end

  private 
  def set_session
  	@session = current_user || User.new
  end
end
