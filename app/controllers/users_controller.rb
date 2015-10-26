class UsersController < ApplicationController
  def index
    @user = User.find(current_user.id)
  end

  def edit
    @user = User.find(params[:id])
  end

  def new
  end

  private
  def user_params
    params.require(:user).permit(:name, :description, :avatar)
  end
end
