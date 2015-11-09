class PrototypesController < ApplicationController
  before_action :prototype_find, only: [:show, :edit, :update, :destroy]

  def show
    @prototype = Prototype.find(params[:id])
    @comments = @prototype.comments.all
    @comment = @prototype.comments.build
  end

  def new
    @prototype = Prototype.new
    @prototype.prototype_images.build
  end

  def create
    @prototype = current_user.prototypes.new(prototype_params)
    @prototype.save ? (redirect_to root_path) : (render :new)
  end

  def edit
  end

  def update
      @prototype.update(update_params) ? (redirect_to root_path) : (render :edit)
  end

  def destroy
    @prototype.destroy
    redirect_to root_path
  end

  private
  def prototype_find
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
