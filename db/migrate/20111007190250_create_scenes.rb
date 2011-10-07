class CreateScenes < ActiveRecord::Migration
  def change
    create_table :scenes do |t|
      t.string :number
      t.integer :script_id
      t.integer :storyboard_cell_id

      t.timestamps
    end
  end
end
