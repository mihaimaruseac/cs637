class RemoveClassIdToAddress < ActiveRecord::Migration
  def up
    remove_column :addresses, :class_id
  end

  def down
    add_column :addresses, :class_id, :string
  end
end
