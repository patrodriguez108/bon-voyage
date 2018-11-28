class ArtWorksController < ApplicationController

  def index
    @art_works = ArtWork.all
  end

end