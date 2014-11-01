class User < ActiveRecord::Base
	has_many :professions, through: :professionals
	has_many :tickets
	has_many :professionals
	validates :email, uniqueness: true
	validates :password, length: { minimum: 4 }
	has_secure_password

	def pro?
		self.professions.length > 0
	end

end
