class PrototypesController < ApplicationController
  def show
    @prototype = Prototype.find(params[:id])
  end

  def new
  end
end
