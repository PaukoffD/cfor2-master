class UsersController < ApplicationController
before_action :logged_in_user, only: [:index, :edit, :update]

  def index
    @users = User.all
  end
 
 def show1
    @user = User.find(params[:id])
  end 
  
  
  def destroy
  @User = User.find(params[:id])
  @User.destroy
 
  redirect_to user_path
end
private
  def user_params
    params.require(:user).permit(:title, :text)
  end

end