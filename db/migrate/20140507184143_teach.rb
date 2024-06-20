class Teach < ActiveRecord::Migration
  create_table :teach, :id => false do |t|
    t.references :course, :null => false
    t.references :instructor, :null => false
  end

  add_index(:teach, [:course_id, :instructor_id], :unique => true)
end
