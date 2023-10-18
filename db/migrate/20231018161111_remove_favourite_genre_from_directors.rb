class RemoveFavouriteGenreFromDirectors < ActiveRecord::Migration[7.0]
  def change
    remove_column :directors, :favourite_genre, :string
  end
end
