class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.integer :profile_id

      t.timestamps
    end
  end
end