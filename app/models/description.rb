class Description < ActiveRecord::Base
  attr_accessible :content, :course, :order, :type

  validates :content, presence: true
  validates :course, presence: true
  validates :order, presence: true
  validates :type, presence: true,
                   inclusion: { in: [:text, :image, :video, :html] }

  belongs_to :course, inverse_of: :descriptions
end
