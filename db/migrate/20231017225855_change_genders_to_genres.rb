class ChangeGendersToGenres < ActiveRecord::Migration[7.0]
  def change
    rename_table :genders, :genres
  end
end
