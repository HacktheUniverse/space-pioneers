class CreatePlanets < ActiveRecord::Migration
  def change
    create_table :planets do |t|
      t.string :name
      t.string :planet_class
      t.string :habitable_class
      t.string :ly_distance
      t.string :esi

      t.timestamps
    end
  end
end
