class Movie < ApplicationRecord
    enum status: { draft: 0, published: 1 }
    enum release: { not_released: 0, released: 1 }
    
    belongs_to :genre
    belongs_to :director
end
