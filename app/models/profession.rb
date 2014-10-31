class Profession < ActiveRecord::Base
	has_many :professionals
	has_many :users

	validates :name, presence: true
	validates :name, uniqueness: true

	
end
