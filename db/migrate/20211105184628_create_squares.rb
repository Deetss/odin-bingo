class CreateSquares < ActiveRecord::Migration[6.1]
  def change
    create_table :squares do |t|
      t.string :content
      t.boolean :filled

      t.timestamps
    end
  end
end
