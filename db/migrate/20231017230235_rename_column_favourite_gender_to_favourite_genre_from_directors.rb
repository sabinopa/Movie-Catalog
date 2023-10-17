class RenameColumnFavouriteGenderToFavouriteGenreFromDirectors < ActiveRecord::Migration[7.0]
  def change
    rename_column :directors, :favourite_gender, :favourite_genre
  end
end
