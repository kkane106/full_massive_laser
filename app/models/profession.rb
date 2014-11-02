class Profession < ActiveRecord::Base
	has_many :professionals
	has_many :users
  has_many :tickets

	validates :name, presence: true
	validates :name, uniqueness: true


end
