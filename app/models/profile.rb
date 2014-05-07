class Profile < ActiveRecord::Base
  attr_accessible :age, :email, :email_confirmation, :extra,
                  :firstName, :gender, :lastName, :user

  validates :age, presence: true,
                  inclusion: { in: 5..100 }

  validates :gender, inclusion: { in: [:m, :f] }, unless: "gender.blank?"

  validates :email, presence: true,
                    uniqueness: { case_sensitive: false }
  validates :email_confirmation, presence: true
  validates_confirmation_of :email

  validates :extra, length: { maximum: 500 }, unless: "extra.blank?"

  validates :firstName, presence: true
  validates :lastName, presence: true
  validates :user, presence: true

  belongs_to :user, inverse_of: :profile
  has_one :address, inverse_of: :profile
end
