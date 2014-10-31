class User < ActiveRecord::Base
	has_many :professions, through: :professionals, source: :professions
	has_many :appointments
	has_many :tickets

	validates :name, :email, :password, presence: true

	# has_secure_password
end
