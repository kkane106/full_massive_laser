class Ticket < ActiveRecord::Base
	belongs_to :user
	belongs_to :professional
	validates :title, :body, presence: true

  def shortened_title
    self.title.split("")[0..15].join("")+"..."
  end
end

def claimed?
	if self.professional
		return "Claimed" 
	else
		"Unclaimed"
end
