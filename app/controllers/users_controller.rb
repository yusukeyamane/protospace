class UsersController < ApplicationController
    # before_action :redirect_to_index, only: :edit

  def index
    @user = User.find(current_user.id)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(update_params)
    redirect_to root_path
  end

  # def update
  #   user = User.find(params[:id])
  # end

  private
  def user_params
    params.permit(:name, :email, :avatar, :profile, :work, :member)
  end

  def update_params
    params.permit(:name, :email, :avatar, :profile, :work, :member)
  end

  # def redirect_to_index
  #   redirect_to action: "index"
  # end
end
