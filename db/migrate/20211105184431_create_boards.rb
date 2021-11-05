class CreateBoards < ActiveRecord::Migration[6.1]
  def change
    create_table :boards do |t|
      t.boolean :active
      t.references :user, null: false, foreign_key: true
      t.references :squares

      t.timestamps
    end
  end
end
