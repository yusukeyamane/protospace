class PrototypesController < ApplicationController
  def show
    @prototype = Prototype.find(params[:id])
  end

  def new
    @prototype = Prototype.new
    @prototype.prototype_images.build
  end

  def create
    current_user.prototypes.create(prototype_params)
    binding.pry
    redirect_to root_path and return
  end

  private
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
end
