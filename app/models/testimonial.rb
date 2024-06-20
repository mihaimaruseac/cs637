class Testimonial < ActiveRecord::Base
  attr_accessible :author, :text, :year
  validates :author, presence: true
  validates :text, presence: true
  validates :year, presence: true
end
