class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comments_params)
    @comments = Comment.where(prototype_id: params[:prototype_id])
    @prototype = Prototype.find(params[:prototype_id])
    current_user.comments.create(comments_params)
  end

  private
  def comments_params
    params.require(:comment).permit(:text).merge(prototype_id: params[:prototype_id])
  end
end
