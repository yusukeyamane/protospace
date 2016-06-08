class LikesController < ApplicationController

  def create
    @like = current_user.likes.create(create_params)
    @prototype = Prototype.find(params[:prototype_id])
    render template: "likes/compile"
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy
    @prototype = Prototype.find(params[:prototype_id])
    render template: "likes/compile"
  end

  private
  def reload_prototype
    @prototype.reload
  end

  def create_params
    params.permit(:prototype_id)
  end
end
