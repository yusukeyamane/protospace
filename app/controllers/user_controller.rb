class UserController < ApplicationController
  private
  def user_params
    params.require(:user).permit(:name, :description, :avatar)
  end
end
