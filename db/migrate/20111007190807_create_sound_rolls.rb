class CreateSoundRolls < ActiveRecord::Migration
  def change
    create_table :sound_rolls do |t|
      t.string :name
      t.integer :production_id

      t.timestamps
    end
  end
end
