class Profession < ActiveRecord::Base
	has_many :professionals
	has_many :users
	
end
