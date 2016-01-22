class User < ActiveRecord::Base
	has_secure_password
	validates_confirmation_of :password
	validates_presence_of :password, on: :create

	has_many :boats
	has_many :jobs
end
