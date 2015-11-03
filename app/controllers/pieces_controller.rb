class PiecesController < ApplicationController

  def index
    @piece = Piece.new
    @pieces = Piece.all
  end

  def create
    @piece = Piece.new(allowed_params)

    if @piece.save
      redirect_to pieces_path
    else
      renderer 'new'
    end
  end

  def allowed_params
    params.require(:piece).permit(:title, :image)
  end

def create
  
  

end
