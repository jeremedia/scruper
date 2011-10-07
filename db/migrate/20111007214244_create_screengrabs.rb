class CreateScreengrabs < ActiveRecord::Migration
  def change
    create_table :screengrabs do |t|
      t.string :file
      t.integer :take_id

      t.timestamps
    end
  end
end
