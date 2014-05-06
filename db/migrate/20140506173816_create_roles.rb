class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :role
      t.boolean :active, :default => true

      t.timestamps
    end
  end
end
