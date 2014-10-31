class User < ActiveRecord::Base

	has_many :professions, through: :professionals
	has_many :tickets
	has_many :professionals

	validates :name, :email, :password, presence: true

	has_secure_password
	def pro?
		self.professions.length > 0
	end
end
