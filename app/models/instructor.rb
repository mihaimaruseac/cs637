class Instructor < ActiveRecord::Base
  attr_accessible :credentials, :homepage, :profile

  validates :profile, presence: true
  belongs_to :profile, inverse_of: :instructor
  has_and_belongs_to_many :course, join_table: "teach"
end
