class Ticket < ActiveRecord::Base
	belongs_to :user
	belongs_to :professional
	validates :title, :body, presence: true
end

def claimed?
	if self.professional
		return "Claimed" 
	else
		"Unclaimed"
end
