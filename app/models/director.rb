class Director < ApplicationRecord
    has_many :movie
    belongs_to :genre
end
