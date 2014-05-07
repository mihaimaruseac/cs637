class Course < ActiveRecord::Base
  attr_accessible :endDate, :limit, :location, :name, :price, :startDate

  validates :name, presence: true
  validates :price, presence: true
  validates :location, presence: true
  validates :limit, presence: true
  validates :startDate, presence: true
  validates :endDate, presence: true
end
