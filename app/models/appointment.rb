class Appointment < ActiveRecord::Base
	belongs_to :client, class_name: "User"
	belongs_to :professional, through: :proficiencies, source: :user
end
