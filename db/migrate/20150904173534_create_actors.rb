class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :name
      t.integer :age
      t.boolean :will_do_nude_scenes

      t.timestamps null: false
    end
  end
end
