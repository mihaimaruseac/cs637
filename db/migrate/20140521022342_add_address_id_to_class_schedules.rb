class AddAddressIdToClassSchedules < ActiveRecord::Migration
  def change
    add_column :class_schedules, :address_id, :integer
  end
end
