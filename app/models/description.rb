class Description < ActiveRecord::Base
  attr_accessible :content, :course, :dorder, :dtype

  validates :content, presence: true
  validates :course, presence: true
  validates :dorder, presence: true
  validates :dtype, presence: true,
                   inclusion: { in: [:text, :image, :video, :html] }

  belongs_to :course, inverse_of: :descriptions
end
