class AddClassIdToAddress < ActiveRecord::Migration
  def change
    add_column :addresses, :class_id, :integer
  end
end
