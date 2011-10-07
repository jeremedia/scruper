class CreateShoots < ActiveRecord::Migration
  def change
    create_table :shoots do |t|
      t.integer :production_id
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
