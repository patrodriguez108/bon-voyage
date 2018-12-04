class PiecesController < ApplicationController

  def index
    @pieces = Piece.all
  end

  def new
    @piece = Piece.new
  end

  def create
    @piece = Piece.new(piece_params)
    @piece.medium_id = params[:media_id]
    if @piece.save
      redirect_to pieces_path
    else
      p "not working"
    end
  end

  private

  def piece_params
    params.require(:piece).permit(:name, :img)
  end
end