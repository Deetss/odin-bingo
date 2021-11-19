class CreateSquares < ActiveRecord::Migration[6.1]
  def change
    create_table :squares do |t|
      t.references :board, null: false, foreign_key: true
      t.references :phrase, null: false, foreign_key: true
      t.boolean :active

      t.timestamps
    end
  end
end
