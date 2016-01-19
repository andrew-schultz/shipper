class Boat < ActiveRecord::Base
  belongs_to :user
  has_many :jobs
  belongs_to :location


  validates :name, uniqueness: true

end
