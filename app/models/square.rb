class Square < ApplicationRecord
  belongs_to :board
  belongs_to :phrase

  default_scope { order(id: :asc) }
end
