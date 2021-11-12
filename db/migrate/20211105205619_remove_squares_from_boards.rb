class RemoveSquaresFromBoards < ActiveRecord::Migration[6.1]
  def change
    remove_reference :boards, :squares, null: false
  end
end
