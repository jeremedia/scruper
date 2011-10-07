class CreateProductions < ActiveRecord::Migration
  def change
    create_table :productions do |t|
      t.string :title
      t.integer :total_days
      t.integer :client_id

      t.timestamps
    end
  end
end
