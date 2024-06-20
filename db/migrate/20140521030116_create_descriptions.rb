class CreateDescriptions < ActiveRecord::Migration
  def change
    create_table :descriptions do |t|
      t.integer :course_id
      t.integer :order
      t.string :type
      t.string :content

      t.timestamps
    end
  end
end
