class User < ActiveRecord::Base

	has_many :professions, through: :professionals
	has_many :tickets
	has_many :professionals

	validates :name, :email, :password, presence: true
	validates :email, uniqueness: true
	validates :password, length: { minimum: 4 }
	has_secure_password
	def pro?
		user = User.find(session[:user_id])
		if user
		end
	end
end
