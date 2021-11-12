class DropSquareTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :squares
  end
end
