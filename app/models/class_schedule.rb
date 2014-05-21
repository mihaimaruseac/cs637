class ClassSchedule < ActiveRecord::Base
  attr_accessible :course, :date, :number, :address

  validates :course, presence: true
  validates :date, presence: true
  validates :number, presence: true
  validates :address, presence: true
  belongs_to :address, inverse_of: :class_schedules
  belongs_to :course, inverse_of: :class_schedules
end
