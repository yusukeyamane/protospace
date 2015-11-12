class LikesController < ApplicationController

  def create
    @prototype = Prototype.find(params[:prototype_id])
    @like = current_user.likes.create(create_params)
  end

  def destroy
    @prototype = Prototype.find(params[:prototype_id])
    @like = Like.find(params[:id])
    @like.destroy
  end

  private
  def create_params
    params.permit(:prototype_id)
  end
end
