class MediaController < ApplicationController

  def index
  end

  def show
    @medium = Medium.find(params[:id])
  end

end