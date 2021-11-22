class SquaresController < ApplicationController
  
  def activate
    square = Square.find(params[:id])
    board = Board.find(params[:boardId])
    if square.update(active: !square.active)
      if board.touch
        head :ok
      else
        head :bad_request
      end
    else
      head :unprocessable_entity
    end
  end

  private

    # Only allow a list of trusted parameters through.
    def square_params
      params.require(:square).permit(:id)
    end
end
