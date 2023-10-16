class AddGenderToMovies < ActiveRecord::Migration[7.0]
  def change
    add_reference :movies, :gender, null: false, foreign_key: true, default: 0
  end
end
