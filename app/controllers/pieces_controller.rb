class PiecesController < ApplicationController

  def index
  end

  def new
    authorize
    @piece = Piece.new
  end

  def create
    authorize
    @piece = Piece.new(piece_params)
    @piece.medium_id = params[:media_id]
    if @piece.save
      redirect_to medium_path(@piece.medium.art_work.work.id, @piece.medium.art_work.id, @piece.medium_id)
    else
      @errors = @piece.errors.full_messages
      render 'new'
    end
  end

  private

  def piece_params
    params.require(:piece).permit(:name, :img)
  end
end