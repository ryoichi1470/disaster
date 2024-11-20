class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_only, only: [:destroy]
  
  def index
    @users = User.all
  end
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end
  
  private
  
  def admin_only
    redirect_to root_path, alert: "権限がありません" unless current_user.admin?
  end
end
