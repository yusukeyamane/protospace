class PrototypesController < ApplicationController
  before_action :set_prototype, only: [:show, :edit, :update, :destroy]

  def show
    @comments = @prototype.comments.all
    @comment = @prototype.comments.build

    if user_signed_in?
      @prototype.likes.where(user_id: current_user.id).blank? ? @like = current_user.likes.build : @like = Like.find_by(prototype_id: params[:id])
    end
  end

  def new
    @prototype = Prototype.new
    @prototype.prototype_images.build
  end

  def create
    @prototype = current_user.prototypes.new(prototype_params)
    @prototype.save ? (redirect_to root_path, notice: 'prototype is scussesfully created!!')  : (render :new, alert: 'wops somthing went wrong!')
  end

  def edit
  end

  def update
      @prototype.update(update_params) ? (redirect_to root_path, notice: 'prototype is scussesfully updated!!') : (render :edit, alert: 'wops somthing went wrong!')
  end

  def destroy
    @prototype.destroy
    redirect_to root_path
  end

  private
  def set_prototype
    @prototype = Prototype.find(params[:id])
  end

  def prototype_params
    params.require(:prototype).permit(
      :title,
      :catch_copy,
      :concept,
      prototype_images_attributes: [
      :image,
      :status,
      :prototype_id
      ]
    ).merge(
      tag_list: params[:prototype][:tag]
    )
  end

  def update_params
    params.require(:prototype).permit(
      :title,
      :catch_copy,
      :concept,
      prototype_images_attributes: [
      :id,
      :image,
      :status
      ]
    )
  end
end
