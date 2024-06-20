class Parent < ActiveRecord::Base
  attr_accessible :profile

  validates :profile, presence: true
  belongs_to :profile, inverse_of: :parent
  has_and_belongs_to_many :child
  belongs_to :enrolment, inverse_of: :parent
end
