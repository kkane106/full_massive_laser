class Ticket < ActiveRecord::Base
	belongs_to :user
	belongs_to :professional
	validates :title, :body, presence: true
end
