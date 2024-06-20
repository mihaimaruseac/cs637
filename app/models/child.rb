class Child < ActiveRecord::Base
  attr_accessible :profile

  validates :profile, presence: true
  belongs_to :profile, inverse_of: :child
  has_and_belongs_to_many :parent
  has_many :enrolments
  has_many :courses, through: :enrolments
end
