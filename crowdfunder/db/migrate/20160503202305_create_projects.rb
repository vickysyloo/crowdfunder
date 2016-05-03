class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :location
      t.datetime :deadline
      t.integer :goal
      t.string :image

      t.timestamps null: false
    end
  end
end
