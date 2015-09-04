class CreateDirectors < ActiveRecord::Migration
  def change
    create_table :directors do |t|
      t.string :name
      t.string :awards
      t.boolean :douchey

      t.timestamps null: false
    end
  end
end
