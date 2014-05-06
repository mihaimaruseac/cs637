class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.string :text
      t.string :author
      t.integer :year

      t.timestamps
    end
  end
end
