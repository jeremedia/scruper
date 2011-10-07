class CreateShootingDays < ActiveRecord::Migration
  def change
    create_table :shooting_days do |t|
      t.integer :shoot_id
      t.date :shoot_date

      t.timestamps
    end
  end
end
