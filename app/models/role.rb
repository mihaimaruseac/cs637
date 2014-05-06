class Role < ActiveRecord::Base
  attr_accessible :active, :role, :user
  validates :role, presence: true,
                   inclusion: { in: %w(admin instructor parent child) }
  validates :user, presence: true

  belongs_to :user, inverse_of: :roles
end
