class PrototypesController < ApplicationController
  def show
    @prototype = Prototype.find(params[:id])
  end

  def new
    @prototype = Prototype.new
    @prototype.user_id = current_user.id
  end

  def create
    @prototype = Prototype.create(prototype_params)
    redirect_to root_path and return
  end

  private
  def prototype_params
    params.require(:prototype).permit(:title, :avatar, :catch_copy, :concept, :user_id)
  end
end
