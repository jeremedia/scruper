class CreateScripts < ActiveRecord::Migration
  def change
    create_table :scripts do |t|
      t.string :file
      t.string :title
      t.integer :author_id

      t.timestamps
    end
  end
end
