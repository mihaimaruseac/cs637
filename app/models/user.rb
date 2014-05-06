class User < ActiveRecord::Base
  attr_accessible :active, :name, :password, :password_confirmation
  validates :name, presence: true

  validates :password, presence: true
  validates :password_confirmation, presence: true
  validates_confirmation_of :password
  validates :password, length: { minimum: 6 }
  has_secure_password
end