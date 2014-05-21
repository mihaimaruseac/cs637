class Address < ActiveRecord::Base
  attr_accessible :city, :profile, :state, :street, :zip

  validates :city, presence: true
  validates :state, presence: true
  validates :street, presence: true
  validates :zip, presence: true

  belongs_to :profile, inverse_of: :address
  has_many :class_schedules, inverse_of: :address
end
