class PrototypesController < ApplicationController
  before_action :prototype_find, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @prototype = Prototype.new
    @prototype.prototype_images.build
  end

  def create
    if current_user.prototypes.create(prototype_params)
        redirect_to root_path
    else
        render :new
    end

  end

  def edit
  end

  def update
      if @prototype.update(update_params)
        redirect_to root_path
      else
        render :edit
      end
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
