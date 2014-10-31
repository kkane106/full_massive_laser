class Ticket < ActiveRecord::Base
	belongs_to :user
	belongs_to :professional, class_name: "Proficiency"

	validates :title, :body, presence: true
end
