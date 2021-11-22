class SquaresController < ApplicationController
  
  def activate
    square = Square.find(params[:id])
    if square.update(active: !square.active)
      head :ok
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
