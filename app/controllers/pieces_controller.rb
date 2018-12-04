class PiecesController < ApplicationController

  def index
  end

  def new
    @piece = Piece.new
  end

  def create
    @piece = Piece.new(piece_params)

    if @piece.save
      p @piece
    end
  end

  private

  def piece_params
    params.require(:piece).permit(:name, :img)
  end
end