class Prototypes::NewestController < ApplicationController
  def index
    @prototypes = Prototype.includes(:prototype_images).order('created_at DESC').page(8).limit(5)
  end
end
