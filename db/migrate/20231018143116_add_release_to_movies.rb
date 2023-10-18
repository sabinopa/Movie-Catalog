class AddReleaseToMovies < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :release, :integer, default: 0
  end
end
