class Child < ActiveRecord::Base
  attr_accessible :profile

  validates :profile, presence: true
  belongs_to :profile, inverse_of: :child
end
