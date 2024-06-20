class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :price
      t.integer :limit
      t.date :startDate
      t.date :endDate
      t.string :location

      t.timestamps
    end
  end
end
