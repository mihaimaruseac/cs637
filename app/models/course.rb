class Course < ActiveRecord::Base
  attr_accessible :endDate, :limit, :location, :name, :price, :startDate

  validates :name, presence: true
  validates :price, presence: true
  validates :location, presence: true
  validates :limit, presence: true
  validates :startDate, presence: true
  validates :endDate, presence: true

  has_and_belongs_to_many :instructor, join_table: "teach"
  has_many :enrolments
  has_many :children, through: :enrolments
  has_many :class_schedules, inverse_of: :course
  has_many :descriptions, inverse_of: :course
end
