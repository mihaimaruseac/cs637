class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.integer :profile_id

      t.timestamps
    end
  end
end
