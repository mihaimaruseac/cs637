class CreateEnrolments < ActiveRecord::Migration
  def change
    create_table :enrolments do |t|
      t.date :date
      t.integer :price
      t.integer :child_id
      t.integer :parent_id
      t.integer :course_id

      t.timestamps
    end
  end
end
