class CreateStoryboards < ActiveRecord::Migration
  def change
    create_table :storyboards do |t|
      t.integer :production_id

      t.timestamps
    end
  end
end
