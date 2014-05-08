class Enrolment < ActiveRecord::Base
  attr_accessible :child, :course, :date, :parent, :price

  validates :child, presence: true
  validates :course, presence: true
  validates :parent, presence: true
  validates :date, presence: true
  validates :price, presence: true

  belongs_to :child
  belongs_to :course
  has_one :parent
end
