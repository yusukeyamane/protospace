class TopController < ApplicationController
  def index
    @prototypes = Prototype.includes(:proto_type_images).order('created_at DESC').page(params[:page]).per(8)
  end
end
