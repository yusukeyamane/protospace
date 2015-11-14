class TopController < ApplicationController
  def index
    @prototypes = Prototype.includes(:prototype_images).order('likes_count DESC').page(params[:page]).per(8)
  end
end
