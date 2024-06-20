class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :firstName
      t.string :lastName
      t.string :gender
      t.integer :age
      t.string :extra
      t.string :email

      t.timestamps
    end
  end
end
