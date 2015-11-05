class CommentsController < ApplicationController
  def create
    @prototype = Prototype.find(params[:prototype_id])
    current_user.comments.create(comments_params)
    redirect_to prototype_path(@prototype)
  end

  private
  def comments_params
    params.require(:comment).permit(:content).merge(prototype_id: params[:prototype_id])
  end
end
