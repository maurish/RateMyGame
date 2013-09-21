class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?, :currently_logged_as?

  before_action :set_user

  def currently_logged_as? user
  	user == current_user
  end

  def current_user
  	id = session[:user_id]
  	return nil if id.nil?
  	User.find id
  end

  def logged_in?
  	not current_user.nil?
  end

  private 
  def set_user
  	@user = User.new if @user.nil?
  	@user.name = "pauli"
  end
end
