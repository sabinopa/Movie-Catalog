class ChangeForeignKeyForMovies < ActiveRecord::Migration[7.0]
  def change
    rename_column :movies, :gender_id, :genre_id
  end
end
