class Location < ActiveRecord::Base
	has_many :jobs
	has_many :boats
end
