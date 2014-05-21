class CreateClassSchedules < ActiveRecord::Migration
  def change
    create_table :class_schedules do |t|
      t.integer :number
      t.date :date
      t.integer :course_id

      t.timestamps
    end
  end
end
