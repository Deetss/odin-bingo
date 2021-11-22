class Board < ApplicationRecord
  belongs_to :user
  has_many :squares, dependent: :delete_all
  
  after_create :generate_board

  default_scope { order(updated_at: :desc) }
  
  def generate_board
    i = 0
    phrases = Phrase.order("RANDOM()").limit(25)
    while i <= 24
      square = Square.new(board_id: self.id, phrase_id: phrases[i].id, active: false)
      square.save
      i += 1
    end
  end
end
