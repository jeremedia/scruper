class CreateCrewMembers < ActiveRecord::Migration
  def change
    create_table :crew_members do |t|
      t.integer :person_id
      t.integer :role_id

      t.timestamps
    end
  end
end
