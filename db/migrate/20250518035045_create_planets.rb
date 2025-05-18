class CreatePlanets < ActiveRecord::Migration[7.1]
  def change
    create_table :planets do |t|
      t.string :name
      t.text :description
      t.integer :size
      t.integer :alien_count
      t.integer :rings

      t.timestamps
    end
  end
end
