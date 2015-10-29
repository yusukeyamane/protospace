class PrototypesController < ApplicationController
  def show
    @prototype = Prototype.find(params[:id])
  end

  def new
    @prototype = Prototype.new
  end

  # def create
  # end

  private
  def prototype_params
    params.permit(:title, :avatar, :catch_copy, :concept)
  end
end
