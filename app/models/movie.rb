class Movie < ApplicationRecord
    belongs_to :gender
    belongs_to :director
end
