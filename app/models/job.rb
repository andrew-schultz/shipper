class Job < ActiveRecord::Base
  belongs_to :boat
  belongs_to :user
  has_many :locations

  validates_uniqueness_of :name
  validates :cost, numericality: { greater_than_or_equal_to: 1000.00 }
  validates_length_of :cargo, :minimum => 50, :allow_blank => false

  scope :unclaimed, -> {where state: 1}
  scope :claimed, -> {where state: 2}
  scope :complete, -> {where state: 3}

end
