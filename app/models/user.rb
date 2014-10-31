class User < ActiveRecord::Base

	has_many :professions, through: :professionals
	has_many :tickets
	has_many :professionals

	validates :name, :email, :password, presence: true

	# has_secure_password
	def pro?
		user = User.find(session[:user_id])
		if user
		end
	end
end
