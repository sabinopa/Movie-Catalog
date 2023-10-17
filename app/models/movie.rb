class Movie < ApplicationRecord
    enum status: { draft: 0, published: 2 }
    
    belongs_to :gender
    belongs_to :director
end