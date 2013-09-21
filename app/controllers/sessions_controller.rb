class SessionsController < ApplicationController
  before_action :set_user, only: [:create]

  def create
  	if @user
  		session[:user_id] = @user.id
  		redirect_to user_path @user, notice: "Logged in! Welcome back #{@user.name}"
  	else
  		redirect_to :back, alert: "Login was unsuccesful"
  	end
  end

  def destroy
  	reset_session
  	redirect_to :root, notice: "Logged out successfully"
  end

  private 
  def set_user 
  	@user = User.find_by_name user_params[:name] 
    (not @user.nil?) and @user.authenticate user_params[:password]
  end

  def user_params
  	params.require(:user).permit(:name, :password)
  end

end
