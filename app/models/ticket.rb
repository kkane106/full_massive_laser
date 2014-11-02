class Ticket < ActiveRecord::Base
  belongs_to :profession
	belongs_to :user
	belongs_to :professional
	validates :title, :body, presence: true

  def shortened_title
    self.title.split("")[0..15].join("")+"..."
  end

  def shortened_body
    self.title.split("")[0..100].join("")+"..."
  end

  def claimed?
  	if self.professional
  		return "Claimed"
  	else
  		return "Unclaimed"
    end
  end
end
