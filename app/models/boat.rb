class Boat < ActiveRecord::Base
  belongs_to :user
  has_many :jobs
  belongs_to :location
  accepts_nested_attributes_for :jobs

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "50x50>" }, :default_url => "/images/:style/default.png" 
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  validates :name, uniqueness: true

end
