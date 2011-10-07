class CreateTakes < ActiveRecord::Migration
  def change
    create_table :takes do |t|
      t.integer :scene_id
      t.text :action
      t.string :lens
      t.integer :camera_roll_id
      t.integer :sound_roll_id
      t.integer :position
      t.integer :time
      t.text :remarks

      t.timestamps
    end
  end
end
