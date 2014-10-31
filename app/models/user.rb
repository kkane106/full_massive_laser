class User < ActiveRecord::Base
	has_many :professions, through: :proficiencies, source: :professions
	has_many :appointments
	has_many :tickets
end
