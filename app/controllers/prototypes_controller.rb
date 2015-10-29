class PrototypesController < ApplicationController
  def show
    @prototype = Prototype.find(params[:id])
  end

  def new
    @prototype = Prototype.new
    @prototype.user_id = current_user.id
    @prototype.proto_type_images.build
 end

  def create
    @prototype = Prototype.create(prototype_params)
    redirect_to root_path and return
  end

  private
  def prototype_params
    params.require(:prototype).permit(
      :title,
      :catch_copy,
      :concept,
      :user_id,
      proto_type_images_attributes: [
        :main_avatar,
        :side_avatar,
        :prototype_id
      ]
    )
  end
  # def prototype_iamges_params
  #   params.require(:prototype).permit(:main_avatar, :side_avatar, :prototype_id)
  # end
end
