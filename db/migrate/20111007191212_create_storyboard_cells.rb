class CreateStoryboardCells < ActiveRecord::Migration
  def change
    create_table :storyboard_cells do |t|
      t.integer :storyboard_id
      t.integer :position

      t.timestamps
    end
  end
end
