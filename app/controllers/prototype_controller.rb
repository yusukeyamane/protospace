class PrototypeController < ApplicationController
  def index
    @prototype = Prototype.find(params[:id])
  end
  def new
  end
end
