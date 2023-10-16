class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.string :summary
      t.string :country
      t.integer :time

      t.timestamps
    end
  end
end
