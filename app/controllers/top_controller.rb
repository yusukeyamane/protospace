class TopController < ApplicationController
  def index
    @prototypes = Prototypes.all.page(params[:page]).per(8)
  end
end
