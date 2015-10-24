class UserController < ApplicationController
  def index
  end

  def edit
  end

  def new
  end

  private
  def user_params
    params.require(:user).permit(:name, :description, :avatar)
  end
end
