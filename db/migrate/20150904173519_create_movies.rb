class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.integer :year_released
      t.integer :director_id
      t.string :rated
      t.integer :sloppy_potatoes_rating

      t.timestamps null: false
    end
  end
end
