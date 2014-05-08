class Enrolment < ActiveRecord::Base
  attr_accessible :child_id, :course_id, :date, :parent_id, :price
end
