class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :homepage
      t.string :credentials
      t.integer :profile_id

      t.timestamps
    end
  end
end
