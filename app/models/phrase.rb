class Phrase < ApplicationRecord
    has_many :squares, dependent: :delete_all
end
