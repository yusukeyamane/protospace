class LikesController < ApplicationController
  before_action :authenticate_user!
  def create
    @prototype = Prototype.find(params[:prototype_id])
    @like = current_user.likes.create(create_params)
  end

  def destroy
    @like = Like.find(params[:id])
    @like.delete if @like.user_id == current_user.id
  end

  private
  def create_params
    params.permit(:prototype_id)
  end
end
