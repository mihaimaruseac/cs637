#require 'geocoder/models/active_record'

class Course < ActiveRecord::Base
  #extend Geocoder::Model::ActiveRecord

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

  #geocoded_by :location
  #after_validation :geocode

  def enroled_count
    return enrolments.length
  end

  def short_description
    full = descriptions.where(:dtype => :text).first
    if full then
      return full.content[0,16] << "..."
    else
      return "No description"
    end
  end
end
