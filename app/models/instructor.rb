class Instructor < ActiveRecord::Base
  attr_accessible :credentials, :homepage, :profile

  validates :profile, presence: true
  belongs_to :profile, inverse_of: :instructor
end
